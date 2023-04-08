
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY mux_8to1_nbit IS
GENERIC(
	N : POSITIVE := 2
);
PORT (I0, I1, I2, I3, I4, I5, I6, I7: IN STD_LOGIC_VECTOR(N-1 downto 0);
	SEL_mux: IN STD_LOGIC_VECTOR(2 downto 0);
	O: OUT STD_LOGIC_VECTOR(N-1 downto 0)
);
END mux_8to1_nbit;

ARCHITECTURE behaviour OF  mux_8to1_nbit IS

COMPONENT mux_4to1_nbit_base IS
	GENERIC ( N : POSITIVE :=1);
	PORT( I0, I1, I2, I3: IN STD_LOGIC_VECTOR(N-1 downto 0);
		SEL  : IN STD_LOGIC_VECTOR(1 downto 0);
		O    : OUT STD_LOGIC_VECTOR(N-1 downto 0)
	);
END COMPONENT;

COMPONENT mux_2to1_nbit_base IS
	GENERIC ( N : POSITIVE :=1);
	PORT( I0, I1: IN STD_LOGIC_VECTOR(N-1 downto 0);
		SEL  : IN STD_LOGIC;
		O    : OUT STD_LOGIC_VECTOR(N-1 downto 0)
	);
END COMPONENT;


SIGNAL output_mux_0_0: STD_LOGIC_VECTOR(N-1 downto 0);
SIGNAL output_mux_0_1: STD_LOGIC_VECTOR(N-1 downto 0);

BEGIN


mux_0_0: mux_4to1_nbit_base GENERIC MAP(N=>N) PORT MAP(I0=>I0, I1=>I1, I2=>I2, I3=>I3, SEL=>SEL_mux(1 downto 0), O=>output_mux_0_0);
mux_0_1: mux_4to1_nbit_base GENERIC MAP(N=>N) PORT MAP(I0=>I4, I1=>I5, I2=>I6, I3=>I7, SEL=>SEL_mux(1 downto 0), O=>output_mux_0_1);
mux_1_out: mux_2to1_nbit_base GENERIC MAP(N=>N) PORT MAP(I0=>output_mux_0_0, I1=>output_mux_0_1, SEL=>SEL_mux(2), O=>O);

END behaviour;
