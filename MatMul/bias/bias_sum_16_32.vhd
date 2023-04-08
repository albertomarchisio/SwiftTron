
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY bias_sum_16_32 IS
PORT (input_row_0, input_row_1, input_row_2, input_row_3, input_row_4, input_row_5, input_row_6, input_row_7, input_row_8, input_row_9, 
	input_row_10, input_row_11, input_row_12, input_row_13, input_row_14, input_row_15: IN STD_LOGIC_VECTOR(31 downto 0);
	b_0, b_1, b_2, b_3, b_4, b_5, b_6, b_7, b_8, b_9, 
	b_10, b_11, b_12, b_13, b_14, b_15: IN STD_LOGIC_VECTOR(31 downto 0);
	output_row_0, output_row_1, output_row_2, output_row_3, output_row_4, output_row_5, output_row_6, output_row_7, output_row_8, output_row_9, 
	output_row_10, output_row_11, output_row_12, output_row_13, output_row_14, output_row_15: OUT STD_LOGIC_VECTOR(31 downto 0)
);
END bias_sum_16_32;

ARCHITECTURE behaviour OF  bias_sum_16_32 IS



BEGIN

	output_row_0 <= STD_LOGIC_VECTOR(SIGNED(input_row_0) + SIGNED(b_0));
	output_row_1 <= STD_LOGIC_VECTOR(SIGNED(input_row_1) + SIGNED(b_1));
	output_row_2 <= STD_LOGIC_VECTOR(SIGNED(input_row_2) + SIGNED(b_2));
	output_row_3 <= STD_LOGIC_VECTOR(SIGNED(input_row_3) + SIGNED(b_3));
	output_row_4 <= STD_LOGIC_VECTOR(SIGNED(input_row_4) + SIGNED(b_4));
	output_row_5 <= STD_LOGIC_VECTOR(SIGNED(input_row_5) + SIGNED(b_5));
	output_row_6 <= STD_LOGIC_VECTOR(SIGNED(input_row_6) + SIGNED(b_6));
	output_row_7 <= STD_LOGIC_VECTOR(SIGNED(input_row_7) + SIGNED(b_7));
	output_row_8 <= STD_LOGIC_VECTOR(SIGNED(input_row_8) + SIGNED(b_8));
	output_row_9 <= STD_LOGIC_VECTOR(SIGNED(input_row_9) + SIGNED(b_9));
	output_row_10 <= STD_LOGIC_VECTOR(SIGNED(input_row_10) + SIGNED(b_10));
	output_row_11 <= STD_LOGIC_VECTOR(SIGNED(input_row_11) + SIGNED(b_11));
	output_row_12 <= STD_LOGIC_VECTOR(SIGNED(input_row_12) + SIGNED(b_12));
	output_row_13 <= STD_LOGIC_VECTOR(SIGNED(input_row_13) + SIGNED(b_13));
	output_row_14 <= STD_LOGIC_VECTOR(SIGNED(input_row_14) + SIGNED(b_14));
	output_row_15 <= STD_LOGIC_VECTOR(SIGNED(input_row_15) + SIGNED(b_15));


END behaviour;
