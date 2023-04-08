LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY regnbit IS
	GENERIC ( N : POSITIVE := 2
				);
	PORT( D    : IN STD_LOGIC_VECTOR(N-1 downto 0);
		  CLK, RST_n, ENABLE : IN STD_LOGIC;
		  Q    : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		 );
END regnbit;

ARCHITECTURE behaviour OF regnbit IS
BEGIN
	
	PROCESS(CLK, RST_n)
	BEGIN
		IF(RST_n='0') THEN
			Q <= (OTHERS=>'0');
		ELSIF(CLK'EVENT AND CLK='1') THEN
			IF(ENABLE='1') THEN
				Q <= D;
			END IF;
		END IF;
	END PROCESS;
	
END behaviour;
