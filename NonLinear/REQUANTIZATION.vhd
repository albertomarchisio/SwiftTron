LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY REQUANTIZATION IS
	PORT( q_in_req  : IN STD_LOGIC_VECTOR (31 downto 0);
		  m : IN STD_LOGIC_VECTOR(31 downto 0);
		  c : IN STD_LOGIC_VECTOR(5 downto 0);
		  q_out_req	: OUT STD_LOGIC_VECTOR (7 downto 0)
		 );
END REQUANTIZATION;

ARCHITECTURE beh of REQUANTIZATION is

SIGNAL product, tmp : STD_LOGIC_VECTOR(63 downto 0);

BEGIN 

	product <= STD_LOGIC_VECTOR(SIGNED(q_in_req)*SIGNED(m));
	
	tmp <= STD_LOGIC_VECTOR(shift_right(SIGNED(product), TO_INTEGER(unsigned(c))));
	
	q_out_req <= tmp(7 downto 0);

END beh;




