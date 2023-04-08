
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY MAC_bias_32x16_8 IS
PORT (input_row_0, input_row_1, input_row_2, input_row_3, input_row_4, input_row_5, input_row_6, input_row_7, input_row_8, input_row_9, 
	input_row_10, input_row_11, input_row_12, input_row_13, input_row_14, input_row_15, input_row_16, input_row_17, input_row_18, input_row_19, 
	input_row_20, input_row_21, input_row_22, input_row_23, input_row_24, input_row_25, input_row_26, input_row_27, input_row_28, input_row_29, 
	input_row_30, input_row_31: IN STD_LOGIC_VECTOR(7 downto 0);
	input_col_0, input_col_1, input_col_2, input_col_3, input_col_4, input_col_5, input_col_6, input_col_7, input_col_8, input_col_9, 
	input_col_10, input_col_11, input_col_12, input_col_13, input_col_14, input_col_15: IN STD_LOGIC_VECTOR(7 downto 0);
	b_col : IN STD_LOGIC_VECTOR(31 downto 0);
	SEL_mux: IN STD_LOGIC_VECTOR(3 downto 0);
	CLK, RST_n, ENABLE : IN STD_LOGIC;
	output_row_0, output_row_1, output_row_2, output_row_3, output_row_4, output_row_5, output_row_6, output_row_7, output_row_8, output_row_9, 
	output_row_10, output_row_11, output_row_12, output_row_13, output_row_14, output_row_15, output_row_16, output_row_17, output_row_18, output_row_19, 
	output_row_20, output_row_21, output_row_22, output_row_23, output_row_24, output_row_25, output_row_26, output_row_27, output_row_28, output_row_29, 
	output_row_30, output_row_31: OUT STD_LOGIC_VECTOR(31 downto 0)
);
END MAC_bias_32x16_8;

ARCHITECTURE behaviour OF  MAC_bias_32x16_8 IS


	COMPONENT MAC_32x16_8 IS
	PORT (input_row_0, input_row_1, input_row_2, input_row_3, input_row_4, input_row_5, input_row_6, input_row_7, input_row_8, input_row_9, 
		input_row_10, input_row_11, input_row_12, input_row_13, input_row_14, input_row_15, input_row_16, input_row_17, input_row_18, input_row_19, 
		input_row_20, input_row_21, input_row_22, input_row_23, input_row_24, input_row_25, input_row_26, input_row_27, input_row_28, input_row_29, 
		input_row_30, input_row_31: IN STD_LOGIC_VECTOR(7 downto 0);
		input_col_0, input_col_1, input_col_2, input_col_3, input_col_4, input_col_5, input_col_6, input_col_7, input_col_8, input_col_9, 
		input_col_10, input_col_11, input_col_12, input_col_13, input_col_14, input_col_15: IN STD_LOGIC_VECTOR(7 downto 0);
		SEL_mux: IN STD_LOGIC_VECTOR(3 downto 0);
		CLK, RST_n, ENABLE : IN STD_LOGIC;
		output_row_0, output_row_1, output_row_2, output_row_3, output_row_4, output_row_5, output_row_6, output_row_7, output_row_8, output_row_9, 
		output_row_10, output_row_11, output_row_12, output_row_13, output_row_14, output_row_15, output_row_16, output_row_17, output_row_18, output_row_19, 
		output_row_20, output_row_21, output_row_22, output_row_23, output_row_24, output_row_25, output_row_26, output_row_27, output_row_28, output_row_29, 
		output_row_30, output_row_31: OUT STD_LOGIC_VECTOR(31 downto 0)
	);
	END COMPONENT;


	COMPONENT bias_sum_32_32 IS
	PORT (input_row_0, input_row_1, input_row_2, input_row_3, input_row_4, input_row_5, input_row_6, input_row_7, input_row_8, input_row_9, 
		input_row_10, input_row_11, input_row_12, input_row_13, input_row_14, input_row_15, input_row_16, input_row_17, input_row_18, input_row_19, 
		input_row_20, input_row_21, input_row_22, input_row_23, input_row_24, input_row_25, input_row_26, input_row_27, input_row_28, input_row_29, 
		input_row_30, input_row_31: IN STD_LOGIC_VECTOR(31 downto 0);
		b_col : IN STD_LOGIC_VECTOR(31 downto 0);
		output_row_0, output_row_1, output_row_2, output_row_3, output_row_4, output_row_5, output_row_6, output_row_7, output_row_8, output_row_9, 
		output_row_10, output_row_11, output_row_12, output_row_13, output_row_14, output_row_15, output_row_16, output_row_17, output_row_18, output_row_19, 
		output_row_20, output_row_21, output_row_22, output_row_23, output_row_24, output_row_25, output_row_26, output_row_27, output_row_28, output_row_29, 
		output_row_30, output_row_31: OUT STD_LOGIC_VECTOR(31 downto 0)
	);
	END COMPONENT;


	SIGNAL output_row_MAC_base_0: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_1: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_2: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_3: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_4: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_5: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_6: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_7: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_8: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_9: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_10: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_11: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_12: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_13: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_14: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_15: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_16: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_17: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_18: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_19: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_20: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_21: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_22: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_23: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_24: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_25: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_26: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_27: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_28: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_29: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_30: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_31: STD_LOGIC_VECTOR(31 downto 0);

BEGIN

	MAC_base: MAC_32x16_8 PORT MAP(CLK=>CLK, RST_n=>RST_n, ENABLE=>ENABLE,
		input_row_0=>input_row_0, input_row_1=>input_row_1, input_row_2=>input_row_2, input_row_3=>input_row_3, input_row_4=>input_row_4, input_row_5=>input_row_5, input_row_6=>input_row_6, input_row_7=>input_row_7, input_row_8=>input_row_8, input_row_9=>input_row_9, input_row_10=>input_row_10, input_row_11=>input_row_11, input_row_12=>input_row_12, input_row_13=>input_row_13, input_row_14=>input_row_14, input_row_15=>input_row_15, input_row_16=>input_row_16, input_row_17=>input_row_17, input_row_18=>input_row_18, input_row_19=>input_row_19, input_row_20=>input_row_20, input_row_21=>input_row_21, input_row_22=>input_row_22, input_row_23=>input_row_23, input_row_24=>input_row_24, input_row_25=>input_row_25, input_row_26=>input_row_26, input_row_27=>input_row_27, input_row_28=>input_row_28, input_row_29=>input_row_29, input_row_30=>input_row_30, input_row_31=>input_row_31, 
		input_col_0=>input_col_0, input_col_1=>input_col_1, input_col_2=>input_col_2, input_col_3=>input_col_3, input_col_4=>input_col_4, input_col_5=>input_col_5, input_col_6=>input_col_6, input_col_7=>input_col_7, input_col_8=>input_col_8, input_col_9=>input_col_9, input_col_10=>input_col_10, input_col_11=>input_col_11, input_col_12=>input_col_12, input_col_13=>input_col_13, input_col_14=>input_col_14, input_col_15=>input_col_15, 
		output_row_0=>output_row_MAC_base_0, output_row_1=>output_row_MAC_base_1, output_row_2=>output_row_MAC_base_2, output_row_3=>output_row_MAC_base_3, output_row_4=>output_row_MAC_base_4, output_row_5=>output_row_MAC_base_5, output_row_6=>output_row_MAC_base_6, output_row_7=>output_row_MAC_base_7, output_row_8=>output_row_MAC_base_8, output_row_9=>output_row_MAC_base_9, output_row_10=>output_row_MAC_base_10, output_row_11=>output_row_MAC_base_11, output_row_12=>output_row_MAC_base_12, output_row_13=>output_row_MAC_base_13, output_row_14=>output_row_MAC_base_14, output_row_15=>output_row_MAC_base_15, output_row_16=>output_row_MAC_base_16, output_row_17=>output_row_MAC_base_17, output_row_18=>output_row_MAC_base_18, output_row_19=>output_row_MAC_base_19, output_row_20=>output_row_MAC_base_20, output_row_21=>output_row_MAC_base_21, output_row_22=>output_row_MAC_base_22, output_row_23=>output_row_MAC_base_23, output_row_24=>output_row_MAC_base_24, output_row_25=>output_row_MAC_base_25, output_row_26=>output_row_MAC_base_26, output_row_27=>output_row_MAC_base_27, output_row_28=>output_row_MAC_base_28, output_row_29=>output_row_MAC_base_29, output_row_30=>output_row_MAC_base_30, output_row_31=>output_row_MAC_base_31, 
		SEL_mux=>SEL_mux);
	bias_sum: bias_sum_32_32 PORT MAP(input_row_0=>output_row_MAC_base_0, input_row_1=>output_row_MAC_base_1, input_row_2=>output_row_MAC_base_2, input_row_3=>output_row_MAC_base_3, input_row_4=>output_row_MAC_base_4, input_row_5=>output_row_MAC_base_5, input_row_6=>output_row_MAC_base_6, input_row_7=>output_row_MAC_base_7, input_row_8=>output_row_MAC_base_8, input_row_9=>output_row_MAC_base_9, input_row_10=>output_row_MAC_base_10, input_row_11=>output_row_MAC_base_11, input_row_12=>output_row_MAC_base_12, input_row_13=>output_row_MAC_base_13, input_row_14=>output_row_MAC_base_14, input_row_15=>output_row_MAC_base_15, input_row_16=>output_row_MAC_base_16, input_row_17=>output_row_MAC_base_17, input_row_18=>output_row_MAC_base_18, input_row_19=>output_row_MAC_base_19, input_row_20=>output_row_MAC_base_20, input_row_21=>output_row_MAC_base_21, input_row_22=>output_row_MAC_base_22, input_row_23=>output_row_MAC_base_23, input_row_24=>output_row_MAC_base_24, input_row_25=>output_row_MAC_base_25, input_row_26=>output_row_MAC_base_26, input_row_27=>output_row_MAC_base_27, input_row_28=>output_row_MAC_base_28, input_row_29=>output_row_MAC_base_29, input_row_30=>output_row_MAC_base_30, input_row_31=>output_row_MAC_base_31, 
		b_col=>b_col, output_row_0=>output_row_0, output_row_1=>output_row_1, output_row_2=>output_row_2, output_row_3=>output_row_3, output_row_4=>output_row_4, output_row_5=>output_row_5, output_row_6=>output_row_6, output_row_7=>output_row_7, output_row_8=>output_row_8, output_row_9=>output_row_9, output_row_10=>output_row_10, output_row_11=>output_row_11, output_row_12=>output_row_12, output_row_13=>output_row_13, output_row_14=>output_row_14, output_row_15=>output_row_15, output_row_16=>output_row_16, output_row_17=>output_row_17, output_row_18=>output_row_18, output_row_19=>output_row_19, output_row_20=>output_row_20, output_row_21=>output_row_21, output_row_22=>output_row_22, output_row_23=>output_row_23, output_row_24=>output_row_24, output_row_25=>output_row_25, output_row_26=>output_row_26, output_row_27=>output_row_27, output_row_28=>output_row_28, output_row_29=>output_row_29, output_row_30=>output_row_30, output_row_31=>output_row_31);


END behaviour;
