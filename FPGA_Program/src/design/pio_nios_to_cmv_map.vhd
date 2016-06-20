library ieee;
use ieee.std_logic_1164.all;
use work.reverse_bit_order_vector.all;

entity pio_nios_to_cmv_map is

	port(
		NIOS_PIO_OUTPUT	: in	std_logic_vector(7 downto 0);
		CMV_RES_N : out std_logic;
		CMV_FRAME_REQ : out std_logic;
		DEBUG_PIN : out std_logic_vector(5 downto 0)
	);

end entity pio_nios_to_cmv_map;

architecture pio_nios_to_cmv_map_a of pio_nios_to_cmv_map is

	begin	
		DEBUG_PIN <= NIOS_PIO_OUTPUT(7 downto 2);
		CMV_FRAME_REQ <= NIOS_PIO_OUTPUT(1);
		CMV_RES_N	<= NIOS_PIO_OUTPUT(0);

end architecture pio_nios_to_cmv_map_a;