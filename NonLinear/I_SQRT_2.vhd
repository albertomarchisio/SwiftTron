LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY I_SQRT_2 IS
	PORT( n : IN STD_LOGIC_VECTOR (31 downto 0);
		  CLK, RST_n, EN, SEL: IN STD_LOGIC;
		  VAL, Z: OUT STD_LOGIC;
		  out_sqrt	: OUT STD_LOGIC_VECTOR (31 downto 0)
		 );
END I_SQRT_2;

ARCHITECTURE behaviour OF I_SQRT_2 IS

COMPONENT regnbit IS
	GENERIC ( N : POSITIVE := 2
				);
	PORT( D    : IN STD_LOGIC_VECTOR(N-1 downto 0);
		  CLK, RST_n, ENABLE : IN STD_LOGIC;
		  Q    : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		 );
END COMPONENT;

COMPONENT ff IS
	PORT( D    : IN STD_LOGIC;
		  CLK, RST_n, ENABLE : IN STD_LOGIC;
		  Q    : OUT STD_LOGIC
		 );
END COMPONENT;

SIGNAL n_bits_div: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL x_0, x_i_mux, x_i, x_next, sqrt: STD_LOGIC_VECTOR(31 downto 0);
SIGNAL val_comb, z_comb: STD_LOGIC;
SIGNAL sum: STD_LOGIC_VECTOR(32 downto 0);
SIGNAL div_n_xi: STD_LOGIC_VECTOR(31 downto 0);

BEGIN

	-- x0 = 2**(Bits(n)/2)=2**(32/2)=2**16=65536
	x_0 <= x"00010000";

	x_i_mux <= x_0 when (SEL='0') else x_next;

	div_n_xi <= STD_LOGIC_VECTOR(SIGNED(n) / SIGNED(x_i));
	
	sum <= STD_LOGIC_VECTOR(SIGNED(x_i(31) & x_i) + SIGNED(div_n_xi(31) & div_n_xi));

	x_next <= sum(32 downto 1);

	out_sqrt_reg: regnbit GENERIC MAP(N=>32) PORT MAP(CLK=>CLK, RST_n=>RST_n, ENABLE=>EN, D=>sqrt, Q=>out_sqrt);
	x_i_reg: regnbit GENERIC MAP(N=>32) PORT MAP(CLK=>CLK, RST_n=>RST_n, ENABLE=>'1', D=>x_i_mux, Q=>x_i);
	val_ff: ff PORT MAP(CLK=>CLK, RST_n=>RST_n, ENABLE=>EN, D=>val_comb, Q=>VAL);
	z_ff: ff PORT MAP(CLK=>CLK, RST_n=>RST_n, ENABLE=>EN, D=>z_comb, Q=>Z);


	PROCESS(n, x_next, x_i)
	BEGIN
		IF(n=x"00000000") THEN
			sqrt <= (OTHERS=>'0');
			val_comb <= '0';
			z_comb <= '1';
		ELSIF(x_next >= x_i) THEN
			sqrt <= x_i;
			val_comb <= '1';
			z_comb <= '0';
		ELSE 
			val_comb <= '0';
			z_comb <= '0';
			sqrt <= (OTHERS=>'0');
		END IF;
	END PROCESS;


END behaviour;
