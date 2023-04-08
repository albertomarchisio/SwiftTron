LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY I_GELU IS
	PORT( q_in_gelu : IN STD_LOGIC_VECTOR (31 downto 0);
		  q_b, q_c, q_max, q_1 : IN STD_LOGIC_VECTOR(31 downto 0);
		  q_out_gelu	: OUT STD_LOGIC_VECTOR (31 downto 0)
		 );
END I_GELU;

ARCHITECTURE behaviour OF I_GELU IS

SIGNAL q_erf, sum_erf_1: STD_LOGIC_VECTOR(31 downto 0);
SIGNAL out_tmp: STD_LOGIC_VECTOR(63 downto 0);

COMPONENT I_ERF IS
	PORT( q_in_erf : IN STD_LOGIC_VECTOR (31 downto 0);
		  q_b, q_c, q_max : IN STD_LOGIC_VECTOR(31 downto 0);
		  q_out_erf	: OUT STD_LOGIC_VECTOR (31 downto 0)
		 );
END COMPONENT;

BEGIN

	erf_unit: I_ERF PORT MAP (q_in_erf=>q_in_gelu, q_b=>q_b, q_c=>q_c, q_max=>q_max, q_out_erf=>q_erf);

	sum_erf_1 <= STD_LOGIC_VECTOR(SIGNED(q_erf) + SIGNED(q_1));

 	out_tmp <= STD_LOGIC_VECTOR(SIGNED(sum_erf_1) * SIGNED(q_in_gelu));

	q_out_gelu <= out_tmp(31 downto 0);
	

END behaviour;
