LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY LayerNorm IS
	GENERIC( bits_choice : NATURAL := 0);
	PORT( q_in_norm : IN STD_LOGIC_VECTOR (31 downto 0);
		  c: IN STD_LOGIC_VECTOR(31 downto 0);
		  CLK, RST_n, EN_acc, EN_avg, EN_sqrt, EN_sigma, SEL, SEL_sqrt: IN STD_LOGIC;
		  VAL, Z: OUT STD_LOGIC;
		  q_out_norm	: OUT STD_LOGIC_VECTOR (31 downto 0)
		 );
END LayerNorm;

ARCHITECTURE beh OF LayerNorm IS

COMPONENT regnbit IS
	GENERIC ( N : POSITIVE := 2
				);
	PORT( D    : IN STD_LOGIC_VECTOR(N-1 downto 0);
		  CLK, RST_n, ENABLE : IN STD_LOGIC;
		  Q    : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		 );
END COMPONENT;

COMPONENT I_SQRT IS
	PORT( n : IN STD_LOGIC_VECTOR (31 downto 0);
		  CLK, RST_n, EN, SEL: IN STD_LOGIC;
		  VAL, Z: OUT STD_LOGIC;
		  out_sqrt	: OUT STD_LOGIC_VECTOR (31 downto 0)
		 );
END COMPONENT;

SIGNAL in_mux, sum, acc, acc_scaled, acc_scaled_tmp, out_sqrt, avg, sigma, square, diff, q_out_norm_tmp: STD_LOGIC_VECTOR(31 downto 0);
SIGNAL square_tmp : STD_LOGIC_VECTOR(63 downto 0);
SIGNAL sgn_out_acc, sgn_out_out: STD_LOGIC;

BEGIN

	in_mux <= q_in_norm when (SEL='0') else square;
	
	sum <= STD_LOGIC_VECTOR(SIGNED(in_mux) + SIGNED(acc));

	acc_reg: regnbit GENERIC MAP(N=>32) PORT MAP(CLK=>CLK, RST_n=>RST_n, ENABLE=>EN_acc, D=>sum, Q=>acc);

	--acc_scaled <= STD_LOGIC_VECTOR(SIGNED(acc) / SIGNED(c));
	sgn_out_acc <= acc(31) XOR c(31);
	acc_scaled_tmp <= STD_LOGIC_VECTOR(UNSIGNED(abs(SIGNED(acc))) / UNSIGNED(abs(SIGNED(c))));

	acc_scaled <= acc_scaled_tmp when (sgn_out_acc='0') else STD_LOGIC_VECTOR(SIGNED(-SIGNED(acc_scaled_tmp)));

	avg_reg: regnbit GENERIC MAP(N=>32) PORT MAP(CLK=>CLK, RST_n=>RST_n, ENABLE=>EN_avg, D=>acc_scaled, Q=>avg);

	-- if sqrt has its CU change this
	sqrt_unit: I_SQRT PORT MAP(n=>acc_scaled, CLK=>CLK, RST_n=>RST_n, EN=>EN_sqrt, SEL=>SEL_sqrt, VAL=>VAL, Z=>Z, out_sqrt=>out_sqrt);

	sigma_reg: regnbit GENERIC MAP(N=>32) PORT MAP(CLK=>CLK, RST_n=>RST_n, ENABLE=>EN_sigma, D=>out_sqrt, Q=>sigma);

	diff <= STD_LOGIC_VECTOR(SIGNED(q_in_norm) - SIGNED(avg));	

	square_tmp <= STD_LOGIC_VECTOR(SIGNED(diff) * SIGNED(diff));
	square <= square_tmp(31+bits_choice downto bits_choice);

	--q_out_norm <= STD_LOGIC_VECTOR(SIGNED(diff) / SIGNED(sigma));
	sgn_out_out <= diff(31) XOR sigma(31);
	q_out_norm_tmp <= STD_LOGIC_VECTOR(UNSIGNED(abs(SIGNED(diff))) / UNSIGNED(abs(SIGNED(sigma))));

	q_out_norm <= q_out_norm_tmp when (sgn_out_out='0') else STD_LOGIC_VECTOR(SIGNED(-SIGNED(q_out_norm_tmp)));

END beh;




