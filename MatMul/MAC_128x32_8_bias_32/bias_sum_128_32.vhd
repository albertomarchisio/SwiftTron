
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY bias_sum_128_32 IS
PORT (input_row_0, input_row_1, input_row_2, input_row_3, input_row_4, input_row_5, input_row_6, input_row_7, input_row_8, input_row_9, 
	input_row_10, input_row_11, input_row_12, input_row_13, input_row_14, input_row_15, input_row_16, input_row_17, input_row_18, input_row_19, 
	input_row_20, input_row_21, input_row_22, input_row_23, input_row_24, input_row_25, input_row_26, input_row_27, input_row_28, input_row_29, 
	input_row_30, input_row_31, input_row_32, input_row_33, input_row_34, input_row_35, input_row_36, input_row_37, input_row_38, input_row_39, 
	input_row_40, input_row_41, input_row_42, input_row_43, input_row_44, input_row_45, input_row_46, input_row_47, input_row_48, input_row_49, 
	input_row_50, input_row_51, input_row_52, input_row_53, input_row_54, input_row_55, input_row_56, input_row_57, input_row_58, input_row_59, 
	input_row_60, input_row_61, input_row_62, input_row_63, input_row_64, input_row_65, input_row_66, input_row_67, input_row_68, input_row_69, 
	input_row_70, input_row_71, input_row_72, input_row_73, input_row_74, input_row_75, input_row_76, input_row_77, input_row_78, input_row_79, 
	input_row_80, input_row_81, input_row_82, input_row_83, input_row_84, input_row_85, input_row_86, input_row_87, input_row_88, input_row_89, 
	input_row_90, input_row_91, input_row_92, input_row_93, input_row_94, input_row_95, input_row_96, input_row_97, input_row_98, input_row_99, 
	input_row_100, input_row_101, input_row_102, input_row_103, input_row_104, input_row_105, input_row_106, input_row_107, input_row_108, input_row_109, 
	input_row_110, input_row_111, input_row_112, input_row_113, input_row_114, input_row_115, input_row_116, input_row_117, input_row_118, input_row_119, 
	input_row_120, input_row_121, input_row_122, input_row_123, input_row_124, input_row_125, input_row_126, input_row_127: IN STD_LOGIC_VECTOR(31 downto 0);
	b_col : IN STD_LOGIC_VECTOR(31 downto 0);
	output_row_0, output_row_1, output_row_2, output_row_3, output_row_4, output_row_5, output_row_6, output_row_7, output_row_8, output_row_9, 
	output_row_10, output_row_11, output_row_12, output_row_13, output_row_14, output_row_15, output_row_16, output_row_17, output_row_18, output_row_19, 
	output_row_20, output_row_21, output_row_22, output_row_23, output_row_24, output_row_25, output_row_26, output_row_27, output_row_28, output_row_29, 
	output_row_30, output_row_31, output_row_32, output_row_33, output_row_34, output_row_35, output_row_36, output_row_37, output_row_38, output_row_39, 
	output_row_40, output_row_41, output_row_42, output_row_43, output_row_44, output_row_45, output_row_46, output_row_47, output_row_48, output_row_49, 
	output_row_50, output_row_51, output_row_52, output_row_53, output_row_54, output_row_55, output_row_56, output_row_57, output_row_58, output_row_59, 
	output_row_60, output_row_61, output_row_62, output_row_63, output_row_64, output_row_65, output_row_66, output_row_67, output_row_68, output_row_69, 
	output_row_70, output_row_71, output_row_72, output_row_73, output_row_74, output_row_75, output_row_76, output_row_77, output_row_78, output_row_79, 
	output_row_80, output_row_81, output_row_82, output_row_83, output_row_84, output_row_85, output_row_86, output_row_87, output_row_88, output_row_89, 
	output_row_90, output_row_91, output_row_92, output_row_93, output_row_94, output_row_95, output_row_96, output_row_97, output_row_98, output_row_99, 
	output_row_100, output_row_101, output_row_102, output_row_103, output_row_104, output_row_105, output_row_106, output_row_107, output_row_108, output_row_109, 
	output_row_110, output_row_111, output_row_112, output_row_113, output_row_114, output_row_115, output_row_116, output_row_117, output_row_118, output_row_119, 
	output_row_120, output_row_121, output_row_122, output_row_123, output_row_124, output_row_125, output_row_126, output_row_127: OUT STD_LOGIC_VECTOR(31 downto 0)
);
END bias_sum_128_32;

ARCHITECTURE behaviour OF  bias_sum_128_32 IS



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
	output_row_64 <= STD_LOGIC_VECTOR(SIGNED(input_row_64) + SIGNED(b_col));
	output_row_65 <= STD_LOGIC_VECTOR(SIGNED(input_row_65) + SIGNED(b_col));
	output_row_66 <= STD_LOGIC_VECTOR(SIGNED(input_row_66) + SIGNED(b_col));
	output_row_67 <= STD_LOGIC_VECTOR(SIGNED(input_row_67) + SIGNED(b_col));
	output_row_68 <= STD_LOGIC_VECTOR(SIGNED(input_row_68) + SIGNED(b_col));
	output_row_69 <= STD_LOGIC_VECTOR(SIGNED(input_row_69) + SIGNED(b_col));
	output_row_70 <= STD_LOGIC_VECTOR(SIGNED(input_row_70) + SIGNED(b_col));
	output_row_71 <= STD_LOGIC_VECTOR(SIGNED(input_row_71) + SIGNED(b_col));
	output_row_72 <= STD_LOGIC_VECTOR(SIGNED(input_row_72) + SIGNED(b_col));
	output_row_73 <= STD_LOGIC_VECTOR(SIGNED(input_row_73) + SIGNED(b_col));
	output_row_74 <= STD_LOGIC_VECTOR(SIGNED(input_row_74) + SIGNED(b_col));
	output_row_75 <= STD_LOGIC_VECTOR(SIGNED(input_row_75) + SIGNED(b_col));
	output_row_76 <= STD_LOGIC_VECTOR(SIGNED(input_row_76) + SIGNED(b_col));
	output_row_77 <= STD_LOGIC_VECTOR(SIGNED(input_row_77) + SIGNED(b_col));
	output_row_78 <= STD_LOGIC_VECTOR(SIGNED(input_row_78) + SIGNED(b_col));
	output_row_79 <= STD_LOGIC_VECTOR(SIGNED(input_row_79) + SIGNED(b_col));
	output_row_80 <= STD_LOGIC_VECTOR(SIGNED(input_row_80) + SIGNED(b_col));
	output_row_81 <= STD_LOGIC_VECTOR(SIGNED(input_row_81) + SIGNED(b_col));
	output_row_82 <= STD_LOGIC_VECTOR(SIGNED(input_row_82) + SIGNED(b_col));
	output_row_83 <= STD_LOGIC_VECTOR(SIGNED(input_row_83) + SIGNED(b_col));
	output_row_84 <= STD_LOGIC_VECTOR(SIGNED(input_row_84) + SIGNED(b_col));
	output_row_85 <= STD_LOGIC_VECTOR(SIGNED(input_row_85) + SIGNED(b_col));
	output_row_86 <= STD_LOGIC_VECTOR(SIGNED(input_row_86) + SIGNED(b_col));
	output_row_87 <= STD_LOGIC_VECTOR(SIGNED(input_row_87) + SIGNED(b_col));
	output_row_88 <= STD_LOGIC_VECTOR(SIGNED(input_row_88) + SIGNED(b_col));
	output_row_89 <= STD_LOGIC_VECTOR(SIGNED(input_row_89) + SIGNED(b_col));
	output_row_90 <= STD_LOGIC_VECTOR(SIGNED(input_row_90) + SIGNED(b_col));
	output_row_91 <= STD_LOGIC_VECTOR(SIGNED(input_row_91) + SIGNED(b_col));
	output_row_92 <= STD_LOGIC_VECTOR(SIGNED(input_row_92) + SIGNED(b_col));
	output_row_93 <= STD_LOGIC_VECTOR(SIGNED(input_row_93) + SIGNED(b_col));
	output_row_94 <= STD_LOGIC_VECTOR(SIGNED(input_row_94) + SIGNED(b_col));
	output_row_95 <= STD_LOGIC_VECTOR(SIGNED(input_row_95) + SIGNED(b_col));
	output_row_96 <= STD_LOGIC_VECTOR(SIGNED(input_row_96) + SIGNED(b_col));
	output_row_97 <= STD_LOGIC_VECTOR(SIGNED(input_row_97) + SIGNED(b_col));
	output_row_98 <= STD_LOGIC_VECTOR(SIGNED(input_row_98) + SIGNED(b_col));
	output_row_99 <= STD_LOGIC_VECTOR(SIGNED(input_row_99) + SIGNED(b_col));
	output_row_100 <= STD_LOGIC_VECTOR(SIGNED(input_row_100) + SIGNED(b_col));
	output_row_101 <= STD_LOGIC_VECTOR(SIGNED(input_row_101) + SIGNED(b_col));
	output_row_102 <= STD_LOGIC_VECTOR(SIGNED(input_row_102) + SIGNED(b_col));
	output_row_103 <= STD_LOGIC_VECTOR(SIGNED(input_row_103) + SIGNED(b_col));
	output_row_104 <= STD_LOGIC_VECTOR(SIGNED(input_row_104) + SIGNED(b_col));
	output_row_105 <= STD_LOGIC_VECTOR(SIGNED(input_row_105) + SIGNED(b_col));
	output_row_106 <= STD_LOGIC_VECTOR(SIGNED(input_row_106) + SIGNED(b_col));
	output_row_107 <= STD_LOGIC_VECTOR(SIGNED(input_row_107) + SIGNED(b_col));
	output_row_108 <= STD_LOGIC_VECTOR(SIGNED(input_row_108) + SIGNED(b_col));
	output_row_109 <= STD_LOGIC_VECTOR(SIGNED(input_row_109) + SIGNED(b_col));
	output_row_110 <= STD_LOGIC_VECTOR(SIGNED(input_row_110) + SIGNED(b_col));
	output_row_111 <= STD_LOGIC_VECTOR(SIGNED(input_row_111) + SIGNED(b_col));
	output_row_112 <= STD_LOGIC_VECTOR(SIGNED(input_row_112) + SIGNED(b_col));
	output_row_113 <= STD_LOGIC_VECTOR(SIGNED(input_row_113) + SIGNED(b_col));
	output_row_114 <= STD_LOGIC_VECTOR(SIGNED(input_row_114) + SIGNED(b_col));
	output_row_115 <= STD_LOGIC_VECTOR(SIGNED(input_row_115) + SIGNED(b_col));
	output_row_116 <= STD_LOGIC_VECTOR(SIGNED(input_row_116) + SIGNED(b_col));
	output_row_117 <= STD_LOGIC_VECTOR(SIGNED(input_row_117) + SIGNED(b_col));
	output_row_118 <= STD_LOGIC_VECTOR(SIGNED(input_row_118) + SIGNED(b_col));
	output_row_119 <= STD_LOGIC_VECTOR(SIGNED(input_row_119) + SIGNED(b_col));
	output_row_120 <= STD_LOGIC_VECTOR(SIGNED(input_row_120) + SIGNED(b_col));
	output_row_121 <= STD_LOGIC_VECTOR(SIGNED(input_row_121) + SIGNED(b_col));
	output_row_122 <= STD_LOGIC_VECTOR(SIGNED(input_row_122) + SIGNED(b_col));
	output_row_123 <= STD_LOGIC_VECTOR(SIGNED(input_row_123) + SIGNED(b_col));
	output_row_124 <= STD_LOGIC_VECTOR(SIGNED(input_row_124) + SIGNED(b_col));
	output_row_125 <= STD_LOGIC_VECTOR(SIGNED(input_row_125) + SIGNED(b_col));
	output_row_126 <= STD_LOGIC_VECTOR(SIGNED(input_row_126) + SIGNED(b_col));
	output_row_127 <= STD_LOGIC_VECTOR(SIGNED(input_row_127) + SIGNED(b_col));


END behaviour;
