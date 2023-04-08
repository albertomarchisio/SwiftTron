
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY MAC_bias_base_8x8_8 IS
PORT (input_row_0, input_row_1, input_row_2, input_row_3, input_row_4, input_row_5, input_row_6, input_row_7: IN STD_LOGIC_VECTOR(7 downto 0);
	input_col_0, input_col_1, input_col_2, input_col_3, input_col_4, input_col_5, input_col_6, input_col_7: IN STD_LOGIC_VECTOR(7 downto 0);
	b_0, b_1, b_2, b_3, b_4, b_5, b_6, b_7: IN STD_LOGIC_VECTOR(31 downto 0);
	SEL_mux: IN STD_LOGIC_VECTOR(2 downto 0);
	CLK, RST_n, ENABLE : IN STD_LOGIC;
	output_row_0, output_row_1, output_row_2, output_row_3, output_row_4, output_row_5, output_row_6, output_row_7: OUT STD_LOGIC_VECTOR(31 downto 0)
);
END MAC_bias_base_8x8_8;

ARCHITECTURE behaviour OF  MAC_bias_base_8x8_8 IS


	COMPONENT MAC_8x8_8 IS
	PORT (input_row_0, input_row_1, input_row_2, input_row_3, input_row_4, input_row_5, input_row_6, input_row_7: IN STD_LOGIC_VECTOR(7 downto 0);
		input_col_0, input_col_1, input_col_2, input_col_3, input_col_4, input_col_5, input_col_6, input_col_7: IN STD_LOGIC_VECTOR(7 downto 0);
		SEL_mux: IN STD_LOGIC_VECTOR(2 downto 0);
		CLK, RST_n, ENABLE : IN STD_LOGIC;
		output_row_0, output_row_1, output_row_2, output_row_3, output_row_4, output_row_5, output_row_6, output_row_7: OUT STD_LOGIC_VECTOR(31 downto 0)
	);
	END COMPONENT;


	COMPONENT bias_sum_8_32 IS
	PORT (input_row_0, input_row_1, input_row_2, input_row_3, input_row_4, input_row_5, input_row_6, input_row_7: IN STD_LOGIC_VECTOR(31 downto 0);
		b_0, b_1, b_2, b_3, b_4, b_5, b_6, b_7: IN STD_LOGIC_VECTOR(31 downto 0);
		output_row_0, output_row_1, output_row_2, output_row_3, output_row_4, output_row_5, output_row_6, output_row_7: OUT STD_LOGIC_VECTOR(31 downto 0)
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

BEGIN

	MAC_base: MAC_8x8_8 PORT MAP(CLK=>CLK, RST_n=>RST_n, ENABLE=>ENABLE,
		input_row_0=>input_row_0, input_row_1=>input_row_1, input_row_2=>input_row_2, input_row_3=>input_row_3, input_row_4=>input_row_4, input_row_5=>input_row_5, input_row_6=>input_row_6, input_row_7=>input_row_7, 
		input_col_0=>input_col_0, input_col_1=>input_col_1, input_col_2=>input_col_2, input_col_3=>input_col_3, input_col_4=>input_col_4, input_col_5=>input_col_5, input_col_6=>input_col_6, input_col_7=>input_col_7, 
		output_row_0=>output_row_MAC_base_0, output_row_1=>output_row_MAC_base_1, output_row_2=>output_row_MAC_base_2, output_row_3=>output_row_MAC_base_3, output_row_4=>output_row_MAC_base_4, output_row_5=>output_row_MAC_base_5, output_row_6=>output_row_MAC_base_6, output_row_7=>output_row_MAC_base_7, 
		SEL_mux=>SEL_mux);
	bias_sum: bias_sum_8_32 PORT MAP(CLK=>CLK, RST_n=>RST_n, ENABLE=>ENABLE,
		input_row_0=>output_row_MAC_base_0, input_row_1=>output_row_MAC_base_1, input_row_2=>output_row_MAC_base_2, input_row_3=>output_row_MAC_base_3, input_row_4=>output_row_MAC_base_4, input_row_5=>output_row_MAC_base_5, input_row_6=>output_row_MAC_base_6, input_row_7=>output_row_MAC_base_7, 
		output_row_0=>output_row_0, output_row_1=>output_row_1, output_row_2=>output_row_2, output_row_3=>output_row_3, output_row_4=>output_row_4, output_row_5=>output_row_5, output_row_6=>output_row_6, output_row_7=>output_row_7);


END behaviour;
