library ieee;
use ieee.std_logic_1164.all;

entity lvds_in_serialize is

  port(
    LVDS_CLK : in std_logic;
    LVDS_CTR : in std_logic;
    LVDS_CH1 : in std_logic;
    LVDS_CH9 : in std_logic;
    LVDS_DATA: out std_logic_vector(3 downto 0)
	);

end entity lvds_in_serialize;

architecture lvds_in_serialize_a of lvds_in_serialize is

	begin  
		LVDS_DATA <= LVDS_CTR & LVDS_CLK & LVDS_CH1 & LVDS_CH9;

end architecture lvds_in_serialize_a;
