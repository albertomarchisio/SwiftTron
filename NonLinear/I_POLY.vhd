LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY I_POLY IS
	GENERIC( bits_choice : NATURAL := 0);
	PORT( q, q_b, q_c  : IN STD_LOGIC_VECTOR (31 downto 0);
--		  CLK, RST_n, ENABLE 	: IN STD_LOGIC;
		  q_out    			: OUT STD_LOGIC_VECTOR (31 downto 0)
		 );
END I_POLY;

ARCHITECTURE behaviour OF I_POLY IS

SIGNAL square: STD_LOGIC_VECTOR(63 downto 0);
SIGNAL square_32: STD_LOGIC_VECTOR(31 downto 0);
SIGNAL sum_qb: STD_LOGIC_VECTOR(31 downto 0);

BEGIN
	
	sum_qb <= STD_LOGIC_VECTOR(SIGNED(q) + SIGNED(q_b));

	square <= STD_LOGIC_VECTOR(SIGNED(sum_qb) * SIGNED(sum_qb));
	
	square_32 <= square(31+bits_choice downto bits_choice);
	
	q_out <= STD_LOGIC_VECTOR(SIGNED(square_32) + SIGNED(q_c));
	
END behaviour;
