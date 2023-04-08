
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux_16to1_nbit IS
GENERIC(
	N : POSITIVE := 2
);
PORT (I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, 
	I10, I11, I12, I13, I14, I15: IN STD_LOGIC_VECTOR(N-1 downto 0);
	SEL_mux: IN STD_LOGIC_VECTOR(3 downto 0);
	O: OUT STD_LOGIC_VECTOR(N-1 downto 0)
);
END mux_16to1_nbit;

ARCHITECTURE behaviour OF  mux_16to1_nbit IS

COMPONENT mux_4to1_nbit_base IS
	GENERIC ( N : POSITIVE :=1);
	PORT( I0, I1, I2, I3: IN STD_LOGIC_VECTOR(N-1 downto 0);
		SEL  : IN STD_LOGIC_VECTOR(1 downto 0);
		O    : OUT STD_LOGIC_VECTOR(N-1 downto 0)
	);
END COMPONENT;


SIGNAL output_mux_0_0: STD_LOGIC_VECTOR(N-1 downto 0);
SIGNAL output_mux_0_1: STD_LOGIC_VECTOR(N-1 downto 0);
SIGNAL output_mux_0_2: STD_LOGIC_VECTOR(N-1 downto 0);
SIGNAL output_mux_0_3: STD_LOGIC_VECTOR(N-1 downto 0);

BEGIN


mux_0_0: mux_4to1_nbit_base GENERIC MAP(N=>N) PORT MAP(I0=>I0, I1=>I1, I2=>I2, I3=>I3, SEL=>SEL_mux(1 downto 0), O=>output_mux_0_0);
mux_0_1: mux_4to1_nbit_base GENERIC MAP(N=>N) PORT MAP(I0=>I4, I1=>I5, I2=>I6, I3=>I7, SEL=>SEL_mux(1 downto 0), O=>output_mux_0_1);
mux_0_2: mux_4to1_nbit_base GENERIC MAP(N=>N) PORT MAP(I0=>I8, I1=>I9, I2=>I10, I3=>I11, SEL=>SEL_mux(1 downto 0), O=>output_mux_0_2);
mux_0_3: mux_4to1_nbit_base GENERIC MAP(N=>N) PORT MAP(I0=>I12, I1=>I13, I2=>I14, I3=>I15, SEL=>SEL_mux(1 downto 0), O=>output_mux_0_3);
mux_1_out: mux_4to1_nbit_base GENERIC MAP(N=>N) PORT MAP(I0=>output_mux_0_0, I1=>output_mux_0_1, I2=>output_mux_0_2, I3=>output_mux_0_3, SEL=>SEL_mux(3 downto 2), O=>O);

END behaviour;
