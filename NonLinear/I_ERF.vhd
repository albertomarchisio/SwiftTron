LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY I_ERF IS
	PORT( q_in_erf : IN STD_LOGIC_VECTOR (31 downto 0);
		  q_b, q_c, q_max : IN STD_LOGIC_VECTOR(31 downto 0);
		  q_out_erf	: OUT STD_LOGIC_VECTOR (31 downto 0)
		 );
END I_ERF;

ARCHITECTURE behaviour OF I_ERF IS

SIGNAL q_abs, q_clip: STD_LOGIC_VECTOR(31 downto 0);
SIGNAL q_l: STD_LOGIC_VECTOR(31 downto 0);
SIGNAL q_sgn: STD_LOGIC;

COMPONENT I_POLY IS
	GENERIC( bits_choice : NATURAL := 0);
	PORT( q, q_b, q_c  : IN STD_LOGIC_VECTOR (31 downto 0);
		  q_out    			: OUT STD_LOGIC_VECTOR (31 downto 0)
		 );
END COMPONENT;

BEGIN

	q_sgn <= q_in_erf(31);
	
	q_abs <= STD_LOGIC_VECTOR(abs(SIGNED(q_in_erf)));
	
	q_clip <= q_max when (q_abs>q_max) else q_abs;

	poly_unit: I_POLY GENERIC MAP(bits_choice=>0) PORT MAP (q=>q_clip, q_b=>q_b, q_c=>q_c, q_out=>q_l);

	q_out_erf <= q_l when (q_sgn='0') else STD_LOGIC_VECTOR(SIGNED(-SIGNED(q_l)));



END behaviour;
