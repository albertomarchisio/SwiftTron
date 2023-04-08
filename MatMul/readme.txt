Folder common contains vhd files used in all combinations.

Folder structure:

MAC_{row}x{col}_{n_bits}:
	MACs_{row}x{col}_{n_bits}.vhd
	mux_{col}to1_nbit.vhd
	sim:
		sim_MAC_base_{row}x{col}_{n_bits}.do
		tb:
			clk_gen.vhd
			data_sink_{row}x{col}_{n_bits}.vhd
			data_maker_{row}x{col}_{n_bits}.vhd
			tb_MAC_{row}x{col}_{n_bits}.v
			test files



Folder bias contains equivalent files and scripts for MatMul with bias sum


N.B.: files with "*_reg_*" refer to MatMul structure with input and output regs
	For MatMul needing mux_768to1 there is a dedicated file
