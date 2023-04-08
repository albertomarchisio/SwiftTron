
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY MAC_bias_128x32_8_reg IS
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
	input_row_120, input_row_121, input_row_122, input_row_123, input_row_124, input_row_125, input_row_126, input_row_127: IN STD_LOGIC_VECTOR(7 downto 0);
	input_col_0, input_col_1, input_col_2, input_col_3, input_col_4, input_col_5, input_col_6, input_col_7, input_col_8, input_col_9, 
	input_col_10, input_col_11, input_col_12, input_col_13, input_col_14, input_col_15, input_col_16, input_col_17, input_col_18, input_col_19, 
	input_col_20, input_col_21, input_col_22, input_col_23, input_col_24, input_col_25, input_col_26, input_col_27, input_col_28, input_col_29, 
	input_col_30, input_col_31: IN STD_LOGIC_VECTOR(7 downto 0);
	b_col : IN STD_LOGIC_VECTOR(31 downto 0);
	SEL_mux: IN STD_LOGIC_VECTOR(4 downto 0);
	CLK, RST_n, ENABLE : IN STD_LOGIC;
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
END MAC_bias_128x32_8_reg;

ARCHITECTURE behaviour OF  MAC_bias_128x32_8_reg IS


	COMPONENT MAC_128x32_8_reg IS
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
		input_row_120, input_row_121, input_row_122, input_row_123, input_row_124, input_row_125, input_row_126, input_row_127: IN STD_LOGIC_VECTOR(7 downto 0);
		input_col_0, input_col_1, input_col_2, input_col_3, input_col_4, input_col_5, input_col_6, input_col_7, input_col_8, input_col_9, 
		input_col_10, input_col_11, input_col_12, input_col_13, input_col_14, input_col_15, input_col_16, input_col_17, input_col_18, input_col_19, 
		input_col_20, input_col_21, input_col_22, input_col_23, input_col_24, input_col_25, input_col_26, input_col_27, input_col_28, input_col_29, 
		input_col_30, input_col_31: IN STD_LOGIC_VECTOR(7 downto 0);
		SEL_mux: IN STD_LOGIC_VECTOR(4 downto 0);
		CLK, RST_n, ENABLE : IN STD_LOGIC;
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
	END COMPONENT;


	COMPONENT bias_sum_128_32 IS
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
	END COMPONENT;

	COMPONENT regnbit IS
	GENERIC ( N : POSITIVE := 2);
	PORT(
		D    : IN STD_LOGIC_VECTOR(N-1 downto 0);
		CLK, RST_n, ENABLE : IN STD_LOGIC;
		Q    : OUT STD_LOGIC_VECTOR(N-1 downto 0)
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
	SIGNAL output_row_MAC_base_32: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_33: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_34: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_35: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_36: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_37: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_38: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_39: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_40: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_41: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_42: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_43: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_44: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_45: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_46: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_47: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_48: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_49: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_50: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_51: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_52: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_53: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_54: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_55: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_56: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_57: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_58: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_59: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_60: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_61: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_62: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_63: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_64: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_65: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_66: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_67: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_68: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_69: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_70: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_71: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_72: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_73: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_74: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_75: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_76: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_77: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_78: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_79: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_80: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_81: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_82: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_83: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_84: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_85: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_86: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_87: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_88: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_89: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_90: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_91: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_92: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_93: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_94: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_95: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_96: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_97: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_98: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_99: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_100: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_101: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_102: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_103: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_104: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_105: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_106: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_107: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_108: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_109: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_110: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_111: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_112: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_113: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_114: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_115: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_116: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_117: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_118: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_119: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_120: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_121: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_122: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_123: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_124: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_125: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_126: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL output_row_MAC_base_127: STD_LOGIC_VECTOR(31 downto 0);
	SIGNAL b_col_reg: STD_LOGIC_VECTOR(31 downto 0);


BEGIN

	MAC_base: MAC_128x32_8_reg PORT MAP(CLK=>CLK, RST_n=>RST_n, ENABLE=>ENABLE,
		input_row_0=>input_row_0, input_row_1=>input_row_1, input_row_2=>input_row_2, input_row_3=>input_row_3, input_row_4=>input_row_4, input_row_5=>input_row_5, input_row_6=>input_row_6, input_row_7=>input_row_7, input_row_8=>input_row_8, input_row_9=>input_row_9, input_row_10=>input_row_10, input_row_11=>input_row_11, input_row_12=>input_row_12, input_row_13=>input_row_13, input_row_14=>input_row_14, input_row_15=>input_row_15, input_row_16=>input_row_16, input_row_17=>input_row_17, input_row_18=>input_row_18, input_row_19=>input_row_19, input_row_20=>input_row_20, input_row_21=>input_row_21, input_row_22=>input_row_22, input_row_23=>input_row_23, input_row_24=>input_row_24, input_row_25=>input_row_25, input_row_26=>input_row_26, input_row_27=>input_row_27, input_row_28=>input_row_28, input_row_29=>input_row_29, input_row_30=>input_row_30, input_row_31=>input_row_31, input_row_32=>input_row_32, input_row_33=>input_row_33, input_row_34=>input_row_34, input_row_35=>input_row_35, input_row_36=>input_row_36, input_row_37=>input_row_37, input_row_38=>input_row_38, input_row_39=>input_row_39, input_row_40=>input_row_40, input_row_41=>input_row_41, input_row_42=>input_row_42, input_row_43=>input_row_43, input_row_44=>input_row_44, input_row_45=>input_row_45, input_row_46=>input_row_46, input_row_47=>input_row_47, input_row_48=>input_row_48, input_row_49=>input_row_49, input_row_50=>input_row_50, input_row_51=>input_row_51, input_row_52=>input_row_52, input_row_53=>input_row_53, input_row_54=>input_row_54, input_row_55=>input_row_55, input_row_56=>input_row_56, input_row_57=>input_row_57, input_row_58=>input_row_58, input_row_59=>input_row_59, input_row_60=>input_row_60, input_row_61=>input_row_61, input_row_62=>input_row_62, input_row_63=>input_row_63, input_row_64=>input_row_64, input_row_65=>input_row_65, input_row_66=>input_row_66, input_row_67=>input_row_67, input_row_68=>input_row_68, input_row_69=>input_row_69, input_row_70=>input_row_70, input_row_71=>input_row_71, input_row_72=>input_row_72, input_row_73=>input_row_73, input_row_74=>input_row_74, input_row_75=>input_row_75, input_row_76=>input_row_76, input_row_77=>input_row_77, input_row_78=>input_row_78, input_row_79=>input_row_79, input_row_80=>input_row_80, input_row_81=>input_row_81, input_row_82=>input_row_82, input_row_83=>input_row_83, input_row_84=>input_row_84, input_row_85=>input_row_85, input_row_86=>input_row_86, input_row_87=>input_row_87, input_row_88=>input_row_88, input_row_89=>input_row_89, input_row_90=>input_row_90, input_row_91=>input_row_91, input_row_92=>input_row_92, input_row_93=>input_row_93, input_row_94=>input_row_94, input_row_95=>input_row_95, input_row_96=>input_row_96, input_row_97=>input_row_97, input_row_98=>input_row_98, input_row_99=>input_row_99, input_row_100=>input_row_100, input_row_101=>input_row_101, input_row_102=>input_row_102, input_row_103=>input_row_103, input_row_104=>input_row_104, input_row_105=>input_row_105, input_row_106=>input_row_106, input_row_107=>input_row_107, input_row_108=>input_row_108, input_row_109=>input_row_109, input_row_110=>input_row_110, input_row_111=>input_row_111, input_row_112=>input_row_112, input_row_113=>input_row_113, input_row_114=>input_row_114, input_row_115=>input_row_115, input_row_116=>input_row_116, input_row_117=>input_row_117, input_row_118=>input_row_118, input_row_119=>input_row_119, input_row_120=>input_row_120, input_row_121=>input_row_121, input_row_122=>input_row_122, input_row_123=>input_row_123, input_row_124=>input_row_124, input_row_125=>input_row_125, input_row_126=>input_row_126, input_row_127=>input_row_127, 
		input_col_0=>input_col_0, input_col_1=>input_col_1, input_col_2=>input_col_2, input_col_3=>input_col_3, input_col_4=>input_col_4, input_col_5=>input_col_5, input_col_6=>input_col_6, input_col_7=>input_col_7, input_col_8=>input_col_8, input_col_9=>input_col_9, input_col_10=>input_col_10, input_col_11=>input_col_11, input_col_12=>input_col_12, input_col_13=>input_col_13, input_col_14=>input_col_14, input_col_15=>input_col_15, input_col_16=>input_col_16, input_col_17=>input_col_17, input_col_18=>input_col_18, input_col_19=>input_col_19, input_col_20=>input_col_20, input_col_21=>input_col_21, input_col_22=>input_col_22, input_col_23=>input_col_23, input_col_24=>input_col_24, input_col_25=>input_col_25, input_col_26=>input_col_26, input_col_27=>input_col_27, input_col_28=>input_col_28, input_col_29=>input_col_29, input_col_30=>input_col_30, input_col_31=>input_col_31, 
		output_row_0=>output_row_MAC_base_0, output_row_1=>output_row_MAC_base_1, output_row_2=>output_row_MAC_base_2, output_row_3=>output_row_MAC_base_3, output_row_4=>output_row_MAC_base_4, output_row_5=>output_row_MAC_base_5, output_row_6=>output_row_MAC_base_6, output_row_7=>output_row_MAC_base_7, output_row_8=>output_row_MAC_base_8, output_row_9=>output_row_MAC_base_9, output_row_10=>output_row_MAC_base_10, output_row_11=>output_row_MAC_base_11, output_row_12=>output_row_MAC_base_12, output_row_13=>output_row_MAC_base_13, output_row_14=>output_row_MAC_base_14, output_row_15=>output_row_MAC_base_15, output_row_16=>output_row_MAC_base_16, output_row_17=>output_row_MAC_base_17, output_row_18=>output_row_MAC_base_18, output_row_19=>output_row_MAC_base_19, output_row_20=>output_row_MAC_base_20, output_row_21=>output_row_MAC_base_21, output_row_22=>output_row_MAC_base_22, output_row_23=>output_row_MAC_base_23, output_row_24=>output_row_MAC_base_24, output_row_25=>output_row_MAC_base_25, output_row_26=>output_row_MAC_base_26, output_row_27=>output_row_MAC_base_27, output_row_28=>output_row_MAC_base_28, output_row_29=>output_row_MAC_base_29, output_row_30=>output_row_MAC_base_30, output_row_31=>output_row_MAC_base_31, output_row_32=>output_row_MAC_base_32, output_row_33=>output_row_MAC_base_33, output_row_34=>output_row_MAC_base_34, output_row_35=>output_row_MAC_base_35, output_row_36=>output_row_MAC_base_36, output_row_37=>output_row_MAC_base_37, output_row_38=>output_row_MAC_base_38, output_row_39=>output_row_MAC_base_39, output_row_40=>output_row_MAC_base_40, output_row_41=>output_row_MAC_base_41, output_row_42=>output_row_MAC_base_42, output_row_43=>output_row_MAC_base_43, output_row_44=>output_row_MAC_base_44, output_row_45=>output_row_MAC_base_45, output_row_46=>output_row_MAC_base_46, output_row_47=>output_row_MAC_base_47, output_row_48=>output_row_MAC_base_48, output_row_49=>output_row_MAC_base_49, output_row_50=>output_row_MAC_base_50, output_row_51=>output_row_MAC_base_51, output_row_52=>output_row_MAC_base_52, output_row_53=>output_row_MAC_base_53, output_row_54=>output_row_MAC_base_54, output_row_55=>output_row_MAC_base_55, output_row_56=>output_row_MAC_base_56, output_row_57=>output_row_MAC_base_57, output_row_58=>output_row_MAC_base_58, output_row_59=>output_row_MAC_base_59, output_row_60=>output_row_MAC_base_60, output_row_61=>output_row_MAC_base_61, output_row_62=>output_row_MAC_base_62, output_row_63=>output_row_MAC_base_63, output_row_64=>output_row_MAC_base_64, output_row_65=>output_row_MAC_base_65, output_row_66=>output_row_MAC_base_66, output_row_67=>output_row_MAC_base_67, output_row_68=>output_row_MAC_base_68, output_row_69=>output_row_MAC_base_69, output_row_70=>output_row_MAC_base_70, output_row_71=>output_row_MAC_base_71, output_row_72=>output_row_MAC_base_72, output_row_73=>output_row_MAC_base_73, output_row_74=>output_row_MAC_base_74, output_row_75=>output_row_MAC_base_75, output_row_76=>output_row_MAC_base_76, output_row_77=>output_row_MAC_base_77, output_row_78=>output_row_MAC_base_78, output_row_79=>output_row_MAC_base_79, output_row_80=>output_row_MAC_base_80, output_row_81=>output_row_MAC_base_81, output_row_82=>output_row_MAC_base_82, output_row_83=>output_row_MAC_base_83, output_row_84=>output_row_MAC_base_84, output_row_85=>output_row_MAC_base_85, output_row_86=>output_row_MAC_base_86, output_row_87=>output_row_MAC_base_87, output_row_88=>output_row_MAC_base_88, output_row_89=>output_row_MAC_base_89, output_row_90=>output_row_MAC_base_90, output_row_91=>output_row_MAC_base_91, output_row_92=>output_row_MAC_base_92, output_row_93=>output_row_MAC_base_93, output_row_94=>output_row_MAC_base_94, output_row_95=>output_row_MAC_base_95, output_row_96=>output_row_MAC_base_96, output_row_97=>output_row_MAC_base_97, output_row_98=>output_row_MAC_base_98, output_row_99=>output_row_MAC_base_99, output_row_100=>output_row_MAC_base_100, output_row_101=>output_row_MAC_base_101, output_row_102=>output_row_MAC_base_102, output_row_103=>output_row_MAC_base_103, output_row_104=>output_row_MAC_base_104, output_row_105=>output_row_MAC_base_105, output_row_106=>output_row_MAC_base_106, output_row_107=>output_row_MAC_base_107, output_row_108=>output_row_MAC_base_108, output_row_109=>output_row_MAC_base_109, output_row_110=>output_row_MAC_base_110, output_row_111=>output_row_MAC_base_111, output_row_112=>output_row_MAC_base_112, output_row_113=>output_row_MAC_base_113, output_row_114=>output_row_MAC_base_114, output_row_115=>output_row_MAC_base_115, output_row_116=>output_row_MAC_base_116, output_row_117=>output_row_MAC_base_117, output_row_118=>output_row_MAC_base_118, output_row_119=>output_row_MAC_base_119, output_row_120=>output_row_MAC_base_120, output_row_121=>output_row_MAC_base_121, output_row_122=>output_row_MAC_base_122, output_row_123=>output_row_MAC_base_123, output_row_124=>output_row_MAC_base_124, output_row_125=>output_row_MAC_base_125, output_row_126=>output_row_MAC_base_126, output_row_127=>output_row_MAC_base_127, 
		SEL_mux=>SEL_mux);

	bias_reg: regnbit GENERIC MAP(N=>32) PORT MAP(CLK=>CLK, RST_n=>RST_n, ENABLE=>'1', D=>b_col, Q=>b_col_reg);
	bias_sum: bias_sum_128_32 PORT MAP(input_row_0=>output_row_MAC_base_0, input_row_1=>output_row_MAC_base_1, input_row_2=>output_row_MAC_base_2, input_row_3=>output_row_MAC_base_3, input_row_4=>output_row_MAC_base_4, input_row_5=>output_row_MAC_base_5, input_row_6=>output_row_MAC_base_6, input_row_7=>output_row_MAC_base_7, input_row_8=>output_row_MAC_base_8, input_row_9=>output_row_MAC_base_9, input_row_10=>output_row_MAC_base_10, input_row_11=>output_row_MAC_base_11, input_row_12=>output_row_MAC_base_12, input_row_13=>output_row_MAC_base_13, input_row_14=>output_row_MAC_base_14, input_row_15=>output_row_MAC_base_15, input_row_16=>output_row_MAC_base_16, input_row_17=>output_row_MAC_base_17, input_row_18=>output_row_MAC_base_18, input_row_19=>output_row_MAC_base_19, input_row_20=>output_row_MAC_base_20, input_row_21=>output_row_MAC_base_21, input_row_22=>output_row_MAC_base_22, input_row_23=>output_row_MAC_base_23, input_row_24=>output_row_MAC_base_24, input_row_25=>output_row_MAC_base_25, input_row_26=>output_row_MAC_base_26, input_row_27=>output_row_MAC_base_27, input_row_28=>output_row_MAC_base_28, input_row_29=>output_row_MAC_base_29, input_row_30=>output_row_MAC_base_30, input_row_31=>output_row_MAC_base_31, input_row_32=>output_row_MAC_base_32, input_row_33=>output_row_MAC_base_33, input_row_34=>output_row_MAC_base_34, input_row_35=>output_row_MAC_base_35, input_row_36=>output_row_MAC_base_36, input_row_37=>output_row_MAC_base_37, input_row_38=>output_row_MAC_base_38, input_row_39=>output_row_MAC_base_39, input_row_40=>output_row_MAC_base_40, input_row_41=>output_row_MAC_base_41, input_row_42=>output_row_MAC_base_42, input_row_43=>output_row_MAC_base_43, input_row_44=>output_row_MAC_base_44, input_row_45=>output_row_MAC_base_45, input_row_46=>output_row_MAC_base_46, input_row_47=>output_row_MAC_base_47, input_row_48=>output_row_MAC_base_48, input_row_49=>output_row_MAC_base_49, input_row_50=>output_row_MAC_base_50, input_row_51=>output_row_MAC_base_51, input_row_52=>output_row_MAC_base_52, input_row_53=>output_row_MAC_base_53, input_row_54=>output_row_MAC_base_54, input_row_55=>output_row_MAC_base_55, input_row_56=>output_row_MAC_base_56, input_row_57=>output_row_MAC_base_57, input_row_58=>output_row_MAC_base_58, input_row_59=>output_row_MAC_base_59, input_row_60=>output_row_MAC_base_60, input_row_61=>output_row_MAC_base_61, input_row_62=>output_row_MAC_base_62, input_row_63=>output_row_MAC_base_63, input_row_64=>output_row_MAC_base_64, input_row_65=>output_row_MAC_base_65, input_row_66=>output_row_MAC_base_66, input_row_67=>output_row_MAC_base_67, input_row_68=>output_row_MAC_base_68, input_row_69=>output_row_MAC_base_69, input_row_70=>output_row_MAC_base_70, input_row_71=>output_row_MAC_base_71, input_row_72=>output_row_MAC_base_72, input_row_73=>output_row_MAC_base_73, input_row_74=>output_row_MAC_base_74, input_row_75=>output_row_MAC_base_75, input_row_76=>output_row_MAC_base_76, input_row_77=>output_row_MAC_base_77, input_row_78=>output_row_MAC_base_78, input_row_79=>output_row_MAC_base_79, input_row_80=>output_row_MAC_base_80, input_row_81=>output_row_MAC_base_81, input_row_82=>output_row_MAC_base_82, input_row_83=>output_row_MAC_base_83, input_row_84=>output_row_MAC_base_84, input_row_85=>output_row_MAC_base_85, input_row_86=>output_row_MAC_base_86, input_row_87=>output_row_MAC_base_87, input_row_88=>output_row_MAC_base_88, input_row_89=>output_row_MAC_base_89, input_row_90=>output_row_MAC_base_90, input_row_91=>output_row_MAC_base_91, input_row_92=>output_row_MAC_base_92, input_row_93=>output_row_MAC_base_93, input_row_94=>output_row_MAC_base_94, input_row_95=>output_row_MAC_base_95, input_row_96=>output_row_MAC_base_96, input_row_97=>output_row_MAC_base_97, input_row_98=>output_row_MAC_base_98, input_row_99=>output_row_MAC_base_99, input_row_100=>output_row_MAC_base_100, input_row_101=>output_row_MAC_base_101, input_row_102=>output_row_MAC_base_102, input_row_103=>output_row_MAC_base_103, input_row_104=>output_row_MAC_base_104, input_row_105=>output_row_MAC_base_105, input_row_106=>output_row_MAC_base_106, input_row_107=>output_row_MAC_base_107, input_row_108=>output_row_MAC_base_108, input_row_109=>output_row_MAC_base_109, input_row_110=>output_row_MAC_base_110, input_row_111=>output_row_MAC_base_111, input_row_112=>output_row_MAC_base_112, input_row_113=>output_row_MAC_base_113, input_row_114=>output_row_MAC_base_114, input_row_115=>output_row_MAC_base_115, input_row_116=>output_row_MAC_base_116, input_row_117=>output_row_MAC_base_117, input_row_118=>output_row_MAC_base_118, input_row_119=>output_row_MAC_base_119, input_row_120=>output_row_MAC_base_120, input_row_121=>output_row_MAC_base_121, input_row_122=>output_row_MAC_base_122, input_row_123=>output_row_MAC_base_123, input_row_124=>output_row_MAC_base_124, input_row_125=>output_row_MAC_base_125, input_row_126=>output_row_MAC_base_126, input_row_127=>output_row_MAC_base_127, 
		b_col=>b_col_reg, output_row_0=>output_row_0, output_row_1=>output_row_1, output_row_2=>output_row_2, output_row_3=>output_row_3, output_row_4=>output_row_4, output_row_5=>output_row_5, output_row_6=>output_row_6, output_row_7=>output_row_7, output_row_8=>output_row_8, output_row_9=>output_row_9, output_row_10=>output_row_10, output_row_11=>output_row_11, output_row_12=>output_row_12, output_row_13=>output_row_13, output_row_14=>output_row_14, output_row_15=>output_row_15, output_row_16=>output_row_16, output_row_17=>output_row_17, output_row_18=>output_row_18, output_row_19=>output_row_19, output_row_20=>output_row_20, output_row_21=>output_row_21, output_row_22=>output_row_22, output_row_23=>output_row_23, output_row_24=>output_row_24, output_row_25=>output_row_25, output_row_26=>output_row_26, output_row_27=>output_row_27, output_row_28=>output_row_28, output_row_29=>output_row_29, output_row_30=>output_row_30, output_row_31=>output_row_31, output_row_32=>output_row_32, output_row_33=>output_row_33, output_row_34=>output_row_34, output_row_35=>output_row_35, output_row_36=>output_row_36, output_row_37=>output_row_37, output_row_38=>output_row_38, output_row_39=>output_row_39, output_row_40=>output_row_40, output_row_41=>output_row_41, output_row_42=>output_row_42, output_row_43=>output_row_43, output_row_44=>output_row_44, output_row_45=>output_row_45, output_row_46=>output_row_46, output_row_47=>output_row_47, output_row_48=>output_row_48, output_row_49=>output_row_49, output_row_50=>output_row_50, output_row_51=>output_row_51, output_row_52=>output_row_52, output_row_53=>output_row_53, output_row_54=>output_row_54, output_row_55=>output_row_55, output_row_56=>output_row_56, output_row_57=>output_row_57, output_row_58=>output_row_58, output_row_59=>output_row_59, output_row_60=>output_row_60, output_row_61=>output_row_61, output_row_62=>output_row_62, output_row_63=>output_row_63, output_row_64=>output_row_64, output_row_65=>output_row_65, output_row_66=>output_row_66, output_row_67=>output_row_67, output_row_68=>output_row_68, output_row_69=>output_row_69, output_row_70=>output_row_70, output_row_71=>output_row_71, output_row_72=>output_row_72, output_row_73=>output_row_73, output_row_74=>output_row_74, output_row_75=>output_row_75, output_row_76=>output_row_76, output_row_77=>output_row_77, output_row_78=>output_row_78, output_row_79=>output_row_79, output_row_80=>output_row_80, output_row_81=>output_row_81, output_row_82=>output_row_82, output_row_83=>output_row_83, output_row_84=>output_row_84, output_row_85=>output_row_85, output_row_86=>output_row_86, output_row_87=>output_row_87, output_row_88=>output_row_88, output_row_89=>output_row_89, output_row_90=>output_row_90, output_row_91=>output_row_91, output_row_92=>output_row_92, output_row_93=>output_row_93, output_row_94=>output_row_94, output_row_95=>output_row_95, output_row_96=>output_row_96, output_row_97=>output_row_97, output_row_98=>output_row_98, output_row_99=>output_row_99, output_row_100=>output_row_100, output_row_101=>output_row_101, output_row_102=>output_row_102, output_row_103=>output_row_103, output_row_104=>output_row_104, output_row_105=>output_row_105, output_row_106=>output_row_106, output_row_107=>output_row_107, output_row_108=>output_row_108, output_row_109=>output_row_109, output_row_110=>output_row_110, output_row_111=>output_row_111, output_row_112=>output_row_112, output_row_113=>output_row_113, output_row_114=>output_row_114, output_row_115=>output_row_115, output_row_116=>output_row_116, output_row_117=>output_row_117, output_row_118=>output_row_118, output_row_119=>output_row_119, output_row_120=>output_row_120, output_row_121=>output_row_121, output_row_122=>output_row_122, output_row_123=>output_row_123, output_row_124=>output_row_124, output_row_125=>output_row_125, output_row_126=>output_row_126, output_row_127=>output_row_127);


END behaviour;
