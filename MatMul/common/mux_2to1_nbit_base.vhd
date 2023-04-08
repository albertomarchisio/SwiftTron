LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux_2to1_nbit_base IS
GENERIC ( N : POSITIVE :=1
);
PORT( 
	I0, I1: IN STD_LOGIC_VECTOR(N-1 downto 0);
	SEL  : IN STD_LOGIC;
	O    : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		 );
END mux_2to1_nbit_base;

ARCHITECTURE behaviour OF mux_2to1_nbit_base IS
BEGIN

	--selection process
	PROCESS(I0, I1, SEL)
	BEGIN
		CASE SEL IS
			WHEN '0' => O <= I0;
			WHEN '1' => O <= I1;
			WHEN OTHERS => O <= (OTHERS=>'0');
		END CASE;
	END PROCESS;
	
END behaviour;
