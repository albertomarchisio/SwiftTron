
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY bias_sum_64_32 IS
PORT (input_row_0, input_row_1, input_row_2, input_row_3, input_row_4, input_row_5, input_row_6, input_row_7, input_row_8, input_row_9, 
	input_row_10, input_row_11, input_row_12, input_row_13, input_row_14, input_row_15, input_row_16, input_row_17, input_row_18, input_row_19, 
	input_row_20, input_row_21, input_row_22, input_row_23, input_row_24, input_row_25, input_row_26, input_row_27, input_row_28, input_row_29, 
	input_row_30, input_row_31, input_row_32, input_row_33, input_row_34, input_row_35, input_row_36, input_row_37, input_row_38, input_row_39, 
	input_row_40, input_row_41, input_row_42, input_row_43, input_row_44, input_row_45, input_row_46, input_row_47, input_row_48, input_row_49, 
	input_row_50, input_row_51, input_row_52, input_row_53, input_row_54, input_row_55, input_row_56, input_row_57, input_row_58, input_row_59, 
	input_row_60, input_row_61, input_row_62, input_row_63: IN STD_LOGIC_VECTOR(31 downto 0);
	b_col : IN STD_LOGIC_VECTOR(31 downto 0);
	output_row_0, output_row_1, output_row_2, output_row_3, output_row_4, output_row_5, output_row_6, output_row_7, output_row_8, output_row_9, 
	output_row_10, output_row_11, output_row_12, output_row_13, output_row_14, output_row_15, output_row_16, output_row_17, output_row_18, output_row_19, 
	output_row_20, output_row_21, output_row_22, output_row_23, output_row_24, output_row_25, output_row_26, output_row_27, output_row_28, output_row_29, 
	output_row_30, output_row_31, output_row_32, output_row_33, output_row_34, output_row_35, output_row_36, output_row_37, output_row_38, output_row_39, 
	output_row_40, output_row_41, output_row_42, output_row_43, output_row_44, output_row_45, output_row_46, output_row_47, output_row_48, output_row_49, 
	output_row_50, output_row_51, output_row_52, output_row_53, output_row_54, output_row_55, output_row_56, output_row_57, output_row_58, output_row_59, 
	output_row_60, output_row_61, output_row_62, output_row_63: OUT STD_LOGIC_VECTOR(31 downto 0)
);
END bias_sum_64_32;

ARCHITECTURE behaviour OF  bias_sum_64_32 IS



BEGIN

	output_row_0 <= STD_LOGIC_VECTOR(SIGNED(input_row_0) + SIGNED(b_col));
	output_row_1 <= STD_LOGIC_VECTOR(SIGNED(input_row_1) + SIGNED(b_col));
	output_row_2 <= STD_LOGIC_VECTOR(SIGNED(input_row_2) + SIGNED(b_col));
	output_row_3 <= STD_LOGIC_VECTOR(SIGNED(input_row_3) + SIGNED(b_col));
	output_row_4 <= STD_LOGIC_VECTOR(SIGNED(input_row_4) + SIGNED(b_col));
	output_row_5 <= STD_LOGIC_VECTOR(SIGNED(input_row_5) + SIGNED(b_col));
	output_row_6 <= STD_LOGIC_VECTOR(SIGNED(input_row_6) + SIGNED(b_col));
	output_row_7 <= STD_LOGIC_VECTOR(SIGNED(input_row_7) + SIGNED(b_col));
	output_row_8 <= STD_LOGIC_VECTOR(SIGNED(input_row_8) + SIGNED(b_col));
	output_row_9 <= STD_LOGIC_VECTOR(SIGNED(input_row_9) + SIGNED(b_col));
	output_row_10 <= STD_LOGIC_VECTOR(SIGNED(input_row_10) + SIGNED(b_col));
	output_row_11 <= STD_LOGIC_VECTOR(SIGNED(input_row_11) + SIGNED(b_col));
	output_row_12 <= STD_LOGIC_VECTOR(SIGNED(input_row_12) + SIGNED(b_col));
	output_row_13 <= STD_LOGIC_VECTOR(SIGNED(input_row_13) + SIGNED(b_col));
	output_row_14 <= STD_LOGIC_VECTOR(SIGNED(input_row_14) + SIGNED(b_col));
	output_row_15 <= STD_LOGIC_VECTOR(SIGNED(input_row_15) + SIGNED(b_col));
	output_row_16 <= STD_LOGIC_VECTOR(SIGNED(input_row_16) + SIGNED(b_col));
	output_row_17 <= STD_LOGIC_VECTOR(SIGNED(input_row_17) + SIGNED(b_col));
	output_row_18 <= STD_LOGIC_VECTOR(SIGNED(input_row_18) + SIGNED(b_col));
	output_row_19 <= STD_LOGIC_VECTOR(SIGNED(input_row_19) + SIGNED(b_col));
	output_row_20 <= STD_LOGIC_VECTOR(SIGNED(input_row_20) + SIGNED(b_col));
	output_row_21 <= STD_LOGIC_VECTOR(SIGNED(input_row_21) + SIGNED(b_col));
	output_row_22 <= STD_LOGIC_VECTOR(SIGNED(input_row_22) + SIGNED(b_col));
	output_row_23 <= STD_LOGIC_VECTOR(SIGNED(input_row_23) + SIGNED(b_col));
	output_row_24 <= STD_LOGIC_VECTOR(SIGNED(input_row_24) + SIGNED(b_col));
	output_row_25 <= STD_LOGIC_VECTOR(SIGNED(input_row_25) + SIGNED(b_col));
	output_row_26 <= STD_LOGIC_VECTOR(SIGNED(input_row_26) + SIGNED(b_col));
	output_row_27 <= STD_LOGIC_VECTOR(SIGNED(input_row_27) + SIGNED(b_col));
	output_row_28 <= STD_LOGIC_VECTOR(SIGNED(input_row_28) + SIGNED(b_col));
	output_row_29 <= STD_LOGIC_VECTOR(SIGNED(input_row_29) + SIGNED(b_col));
	output_row_30 <= STD_LOGIC_VECTOR(SIGNED(input_row_30) + SIGNED(b_col));
	output_row_31 <= STD_LOGIC_VECTOR(SIGNED(input_row_31) + SIGNED(b_col));
	output_row_32 <= STD_LOGIC_VECTOR(SIGNED(input_row_32) + SIGNED(b_col));
	output_row_33 <= STD_LOGIC_VECTOR(SIGNED(input_row_33) + SIGNED(b_col));
	output_row_34 <= STD_LOGIC_VECTOR(SIGNED(input_row_34) + SIGNED(b_col));
	output_row_35 <= STD_LOGIC_VECTOR(SIGNED(input_row_35) + SIGNED(b_col));
	output_row_36 <= STD_LOGIC_VECTOR(SIGNED(input_row_36) + SIGNED(b_col));
	output_row_37 <= STD_LOGIC_VECTOR(SIGNED(input_row_37) + SIGNED(b_col));
	output_row_38 <= STD_LOGIC_VECTOR(SIGNED(input_row_38) + SIGNED(b_col));
	output_row_39 <= STD_LOGIC_VECTOR(SIGNED(input_row_39) + SIGNED(b_col));
	output_row_40 <= STD_LOGIC_VECTOR(SIGNED(input_row_40) + SIGNED(b_col));
	output_row_41 <= STD_LOGIC_VECTOR(SIGNED(input_row_41) + SIGNED(b_col));
	output_row_42 <= STD_LOGIC_VECTOR(SIGNED(input_row_42) + SIGNED(b_col));
	output_row_43 <= STD_LOGIC_VECTOR(SIGNED(input_row_43) + SIGNED(b_col));
	output_row_44 <= STD_LOGIC_VECTOR(SIGNED(input_row_44) + SIGNED(b_col));
	output_row_45 <= STD_LOGIC_VECTOR(SIGNED(input_row_45) + SIGNED(b_col));
	output_row_46 <= STD_LOGIC_VECTOR(SIGNED(input_row_46) + SIGNED(b_col));
	output_row_47 <= STD_LOGIC_VECTOR(SIGNED(input_row_47) + SIGNED(b_col));
	output_row_48 <= STD_LOGIC_VECTOR(SIGNED(input_row_48) + SIGNED(b_col));
	output_row_49 <= STD_LOGIC_VECTOR(SIGNED(input_row_49) + SIGNED(b_col));
	output_row_50 <= STD_LOGIC_VECTOR(SIGNED(input_row_50) + SIGNED(b_col));
	output_row_51 <= STD_LOGIC_VECTOR(SIGNED(input_row_51) + SIGNED(b_col));
	output_row_52 <= STD_LOGIC_VECTOR(SIGNED(input_row_52) + SIGNED(b_col));
	output_row_53 <= STD_LOGIC_VECTOR(SIGNED(input_row_53) + SIGNED(b_col));
	output_row_54 <= STD_LOGIC_VECTOR(SIGNED(input_row_54) + SIGNED(b_col));
	output_row_55 <= STD_LOGIC_VECTOR(SIGNED(input_row_55) + SIGNED(b_col));
	output_row_56 <= STD_LOGIC_VECTOR(SIGNED(input_row_56) + SIGNED(b_col));
	output_row_57 <= STD_LOGIC_VECTOR(SIGNED(input_row_57) + SIGNED(b_col));
	output_row_58 <= STD_LOGIC_VECTOR(SIGNED(input_row_58) + SIGNED(b_col));
	output_row_59 <= STD_LOGIC_VECTOR(SIGNED(input_row_59) + SIGNED(b_col));
	output_row_60 <= STD_LOGIC_VECTOR(SIGNED(input_row_60) + SIGNED(b_col));
	output_row_61 <= STD_LOGIC_VECTOR(SIGNED(input_row_61) + SIGNED(b_col));
	output_row_62 <= STD_LOGIC_VECTOR(SIGNED(input_row_62) + SIGNED(b_col));
	output_row_63 <= STD_LOGIC_VECTOR(SIGNED(input_row_63) + SIGNED(b_col));


END behaviour;
