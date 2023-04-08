--LIBRARY ieee, DWARE;
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
--USE DWARE.DW_Foundation_arith.all;

ENTITY I_SQRT IS
	PORT( n : IN STD_LOGIC_VECTOR (31 downto 0);
		  CLK, RST_n, EN, SEL: IN STD_LOGIC;
		  VAL, Z: OUT STD_LOGIC;
		  out_sqrt	: OUT STD_LOGIC_VECTOR (31 downto 0)
		 );
END I_SQRT;

ARCHITECTURE behaviour OF I_SQRT IS

SIGNAL n_bits_div: STD_LOGIC_VECTOR(4 downto 0);
SIGNAL x_0, x_i_mux, x_i, x_next: STD_LOGIC_VECTOR(31 downto 0);
SIGNAL sum: STD_LOGIC_VECTOR(32 downto 0);
SIGNAL div_n_xi, div_n_xi_tmp: STD_LOGIC_VECTOR(31 downto 0);
SIGNAL sgn_out : STD_LOGIC;

component DW_div_func is 
	generic (width : positive :=8 );
	port ( a	: in std_logic_vector(width-1 downto 0);
			b	: in std_logic_vector(width-1 downto 0);
			quotient_tc: out std_logic_vector(width-1 downto 0));
end component;

BEGIN

	-- x0 = 2**(Bits(n)/2)=2**(32/2)=2**16=65536
	x_0 <= x"00010000";

	x_i_mux <= x_0 when (SEL='0') else x_next;

	sgn_out <= n(31) XOR x_i(31);
	div_n_xi_tmp <= STD_LOGIC_VECTOR(UNSIGNED(abs(SIGNED(n))) / UNSIGNED(abs(SIGNED(x_i))));
	--div: DW_div_func generic map(width=>32) port map(a=>n, b=>x_i, quotient_tc=>div_n_xi);

	div_n_xi <= div_n_xi_tmp when (sgn_out='0') else STD_LOGIC_VECTOR(SIGNED(-SIGNED(div_n_xi_tmp)));
	
	sum <= STD_LOGIC_VECTOR(SIGNED(x_i(31) & x_i) + SIGNED(div_n_xi(31) & div_n_xi));
	--sum <= STD_LOGIC_VECTOR(SIGNED(x_i) + SIGNED(x_i));

	x_next <= sum(32 downto 1);

	--x_next <= sum;

	PROCESS(CLK, RST_n)
	BEGIN
		IF(RST_n='0') THEN
			out_sqrt <= (OTHERS=>'0');
			x_i <= (OTHERS=>'0');
			VAL <= '0';
			Z <= '0';
		ELSIF(CLK'EVENT AND CLK='1') THEN
			IF(EN = '1') THEN
				IF(n=x"00000000") THEN
					out_sqrt <= (OTHERS=>'0');
					VAL <= '0';
					Z <= '1';
				ELSIF(x_next >= x_i) THEN
					out_sqrt <= x_i;
					VAL <= '1';
					Z <= '0';
				ELSE 
					VAL <= '0';
					Z <= '0';
				END IF;
			END IF;
			x_i <= x_i_mux;
			
		END IF;
	END PROCESS;	
	




END behaviour;
