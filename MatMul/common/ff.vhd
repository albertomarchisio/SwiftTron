LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY ff IS
	PORT( D    : IN STD_LOGIC;
		  CLK, RST_n, ENABLE : IN STD_LOGIC;
		  Q    : OUT STD_LOGIC
		 );
END ff;

ARCHITECTURE behaviour OF ff IS
BEGIN
	
	PROCESS(CLK, RST_n)
	BEGIN
		IF(RST_n='0') THEN
			Q <= '0';
		ELSIF(CLK'EVENT AND CLK='1') THEN
			IF(ENABLE='1') THEN
				Q <= D;
			END IF;
		END IF;
	END PROCESS;
	
END behaviour;
