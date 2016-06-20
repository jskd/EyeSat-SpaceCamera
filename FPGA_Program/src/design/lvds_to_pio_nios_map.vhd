library ieee;
use ieee.std_logic_1164.all;
use work.reverse_bit_order_vector.all;

entity lvds_to_pio_nios_map is

  port(
		LVDS_OUTCLK :  in  STD_LOGIC;
		OUTCTR	 	: in std_logic_vector(	 9 downto 0);
		OUTCH01 	: in std_logic_vector(	 9 downto 0);
		OUTCH09 	: in std_logic_vector(	 9 downto 0);
		NIOS_PIO_INPUT :  out std_logic_vector(	 31 downto 0)
	);

end entity lvds_to_pio_nios_map;

architecture lvds_to_pio_nios_map_a of lvds_to_pio_nios_map is

	begin  
		NIOS_PIO_INPUT <=  '1' & OUTCH09 & OUTCH01 & OUTCTR & LVDS_OUTCLK;
		
end architecture lvds_to_pio_nios_map_a;
