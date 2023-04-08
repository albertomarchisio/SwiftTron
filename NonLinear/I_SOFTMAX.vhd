LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY I_SOFTMAX IS
	PORT( q_in_soft : IN STD_LOGIC_VECTOR (31 downto 0);
		  q_b, q_c, q_ln2, q_ln2_neg_inv: IN STD_LOGIC_VECTOR(31 downto 0);
		  CLK, RST_n, EN_max, EN_acc: IN STD_LOGIC;
		  q_out_soft	: OUT STD_LOGIC_VECTOR (31 downto 0)
		 );
END I_SOFTMAX;

ARCHITECTURE behaviour OF I_SOFTMAX IS

COMPONENT I_EXP IS
	GENERIC( bits_choice : NATURAL := 0);
	PORT( q_in_exp : IN STD_LOGIC_VECTOR (31 downto 0);
		  q_b, q_c, q_ln2, q_ln2_neg_inv: IN STD_LOGIC_VECTOR(31 downto 0);
		  q_out_exp    			: OUT STD_LOGIC_VECTOR (31 downto 0)
		 );
END COMPONENT;

SIGNAL q_max, q_diff: STD_LOGIC_VECTOR(31 downto 0);
SIGNAL q_exp, acc, q_out_tmp: STD_LOGIC_VECTOR(31 downto 0);
SIGNAL sgn_out : STD_LOGIC;

BEGIN


	max_acc_proc: PROCESS(CLK, RST_n)
	BEGIN
		IF(RST_n = '0') THEN
			q_max <= (OTHERS=>'0');
			acc <= (OTHERS=>'0');
		ELSIF(CLK'EVENT AND CLK='1') THEN
			IF(EN_max = '1') THEN
				IF(SIGNED(q_in_soft) > SIGNED(q_max)) THEN
					q_max <= q_in_soft;
				END IF;
			END IF;
			IF(EN_acc = '1') THEN
				acc <= STD_LOGIC_VECTOR(SIGNED(acc) + SIGNED(q_exp));
			END IF;
		END IF;
	END PROCESS;

	q_diff <= STD_LOGIC_VECTOR(SIGNED(q_in_soft) - SIGNED(q_max));

	exp_unit: I_EXP GENERIC MAP(bits_choice=>0) PORT MAP (q_in_exp=>q_diff, q_b=>q_b, q_c=>q_c, q_ln2=>q_ln2, q_ln2_neg_inv=>q_ln2_neg_inv, q_out_exp=>q_exp);

	--q_out_soft <= STD_LOGIC_VECTOR(SIGNED(q_exp) / SIGNED(acc));	
	sgn_out <= q_exp(31) XOR acc(31);
	q_out_tmp <= STD_LOGIC_VECTOR(UNSIGNED(abs(SIGNED(q_exp))) / UNSIGNED(abs(SIGNED(acc))));

	q_out_soft <= q_out_tmp when (sgn_out='0') else STD_LOGIC_VECTOR(SIGNED(-SIGNED(q_out_tmp)));


END behaviour;
