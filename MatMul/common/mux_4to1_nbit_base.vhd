LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux_4to1_nbit_base IS
GENERIC ( N : POSITIVE :=1
);
PORT( I0, I1, I2, I3: IN STD_LOGIC_VECTOR(N-1 downto 0);
			SEL  : IN STD_LOGIC_VECTOR(1 downto 0);
			O    : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		 );
END mux_4to1_nbit_base;

ARCHITECTURE behaviour OF mux_4to1_nbit_base IS
BEGIN

	--selection process
	PROCESS(I0, I1, I2, I3, SEL)
	BEGIN
		CASE SEL IS
			WHEN "00" => O <= I0;
			WHEN "01" => O <= I1;
			WHEN "10" => O <= I2;
			WHEN "11" => O <= I3;
			WHEN OTHERS => O <= (OTHERS=>'0');
		END CASE;
	END PROCESS;
	
END behaviour;
