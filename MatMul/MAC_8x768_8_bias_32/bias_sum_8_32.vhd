
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY bias_sum_8_32 IS
PORT (input_row_0, input_row_1, input_row_2, input_row_3, input_row_4, input_row_5, input_row_6, input_row_7: IN STD_LOGIC_VECTOR(31 downto 0);
	b_col : IN STD_LOGIC_VECTOR(31 downto 0);
	output_row_0, output_row_1, output_row_2, output_row_3, output_row_4, output_row_5, output_row_6, output_row_7: OUT STD_LOGIC_VECTOR(31 downto 0)
);
END bias_sum_8_32;

ARCHITECTURE behaviour OF  bias_sum_8_32 IS



BEGIN

	output_row_0 <= STD_LOGIC_VECTOR(SIGNED(input_row_0) + SIGNED(b_col));
	output_row_1 <= STD_LOGIC_VECTOR(SIGNED(input_row_1) + SIGNED(b_col));
	output_row_2 <= STD_LOGIC_VECTOR(SIGNED(input_row_2) + SIGNED(b_col));
	output_row_3 <= STD_LOGIC_VECTOR(SIGNED(input_row_3) + SIGNED(b_col));
	output_row_4 <= STD_LOGIC_VECTOR(SIGNED(input_row_4) + SIGNED(b_col));
	output_row_5 <= STD_LOGIC_VECTOR(SIGNED(input_row_5) + SIGNED(b_col));
	output_row_6 <= STD_LOGIC_VECTOR(SIGNED(input_row_6) + SIGNED(b_col));
	output_row_7 <= STD_LOGIC_VECTOR(SIGNED(input_row_7) + SIGNED(b_col));


END behaviour;
