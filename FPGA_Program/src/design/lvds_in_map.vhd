library ieee;
use ieee.std_logic_1164.all;

entity lvds_in_map is

  port(
    LVDS_CTR  : in  std_logic;
    LVDS_CH   : in  std_logic_vector(15 downto 0);
    LVDS_DATA : out std_logic_vector(16 downto 0)
	);

end entity lvds_in_map;

architecture lvds_in_map_a of lvds_in_map is

	begin  
		LVDS_DATA <=  LVDS_CH(15 downto 0) & LVDS_CTR;

end architecture lvds_in_map_a;
