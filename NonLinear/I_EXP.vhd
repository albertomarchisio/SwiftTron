LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY I_EXP IS
	GENERIC( bits_choice : NATURAL := 0);
	PORT( q_in_exp : IN STD_LOGIC_VECTOR (31 downto 0);
		  q_b, q_c, q_ln2, q_ln2_neg_inv: IN STD_LOGIC_VECTOR(31 downto 0);
		  q_out_exp    			: OUT STD_LOGIC_VECTOR (31 downto 0)
		 );
END I_EXP;

ARCHITECTURE behaviour OF I_EXP IS

SIGNAL q_p, z, z_tmp, zq_ln2 : STD_LOGIC_VECTOR(31 downto 0) := (OTHERS=>'0');
--SIGNAL q_neg: STD_LOGIC_VECTOR(31 downto 0) := (OTHERS=>'0');
SIGNAL zq_ln2_tmp: STD_LOGIC_VECTOR(63 downto 0) := (OTHERS=>'0');
SIGNAL q_l: STD_LOGIC_VECTOR(31 downto 0) := (OTHERS=>'0');
SIGNAL sgn_z: STD_LOGIC;

COMPONENT I_POLY_exp IS
	GENERIC( bits_choice : NATURAL := 0);
	PORT( q, q_b, q_c  : IN STD_LOGIC_VECTOR (31 downto 0);
		  q_out    			: OUT STD_LOGIC_VECTOR (31 downto 0)
		 );
END COMPONENT;

BEGIN

	
--	q_neg <= STD_LOGIC_VECTOR(-SIGNED(q_in));

--	z_tmp <= STD_LOGIC_VECTOR(SIGNED(q_in_exp) * SIGNED(q_ln2_neg_inv));
	--z <= STD_LOGIC_VECTOR(SIGNED(q_in_exp) / SIGNED(q_ln2_neg_inv));
--	z <= z_tmp(31+bits_choice downto bits_choice);

	sgn_z <= q_in_exp(31) XOR q_ln2_neg_inv(31);
	z_tmp <= STD_LOGIC_VECTOR(UNSIGNED(abs(SIGNED(q_in_exp))) / UNSIGNED(abs(SIGNED(q_ln2_neg_inv))));

	z <= z_tmp when (sgn_z='0') else STD_LOGIC_VECTOR(SIGNED(-SIGNED(z_tmp)));

	zq_ln2_tmp <= STD_LOGIC_VECTOR(SIGNED(z) * SIGNED(q_ln2));
	zq_ln2 <= zq_ln2_tmp(31+bits_choice downto bits_choice);

	q_p <= STD_LOGIC_VECTOR(SIGNED(q_in_exp) + SIGNED(zq_ln2));
	
	poly: I_POLY_exp GENERIC MAP(bits_choice=>bits_choice) PORT MAP(q=>q_p, q_b=>q_b, q_c=>q_c, q_out=>q_l);

	shifter: process(q_l, z)
	begin
		if to_integer(signed(z)) > 0 then
			q_out_exp <= STD_LOGIC_VECTOR(shift_right(SIGNED(q_l), TO_INTEGER(UNSIGNED(z))));
		else
			q_out_exp <= STD_LOGIC_VECTOR(shift_left(SIGNED(q_l), TO_INTEGER(UNSIGNED(abs(SIGNED(z))))));
		end if;
	end process;

--	q_out_exp <= STD_LOGIC_VECTOR(shift_right(SIGNED(q_l), 5));

END behaviour;
