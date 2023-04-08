LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY MAC IS
	GENERIC ( data_size : POSITIVE := 2;
			  acc_size: POSITIVE := 16	
				);
	PORT( data_in_A, data_in_B  : IN STD_LOGIC_VECTOR(data_size-1 downto 0);
		  CLK, RST_n, ENABLE 	: IN STD_LOGIC;
		  data_out    			: OUT STD_LOGIC_VECTOR(acc_size-1 downto 0)
		 );
END MAC;

ARCHITECTURE behaviour OF MAC IS

SIGNAL product: STD_LOGIC_VECTOR(acc_size-1 downto 0);
SIGNAL sum: STD_LOGIC_VECTOR(acc_size-1 downto 0);
SIGNAL reg_out: STD_LOGIC_VECTOR(acc_size-1 downto 0);

COMPONENT regnbit IS
	GENERIC ( N : POSITIVE := 2
				);
	PORT( D    : IN STD_LOGIC_VECTOR(N-1 downto 0);
		  CLK, RST_n, ENABLE : IN STD_LOGIC;
		  Q    : OUT STD_LOGIC_VECTOR(N-1 downto 0)
		 );
END component;

BEGIN
	
	product <= STD_LOGIC_VECTOR(resize(SIGNED(data_in_A)*SIGNED(data_in_B), product'length));
	
	sum <= STD_LOGIC_VECTOR(SIGNED(product)+SIGNED(reg_out));
	
	acc_reg: regnbit GENERIC MAP (N=>acc_size) PORT MAP (D=>sum, CLK=>CLK, RST_n=>RST_n, ENABLE=>ENABLE, Q=>reg_out);

	data_out <= reg_out;
	
END behaviour;
