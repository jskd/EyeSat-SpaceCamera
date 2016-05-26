library ieee;
use ieee.std_logic_1164.all;

entity lvds_out_map is

  port(
    LVDS_DATA	: in  std_logic_vector(169 downto 0);
    OUTCTR   	: out std_logic_vector(9 downto 0);
    OUT1 			: out std_logic_vector(9 downto 0);
    OUT2 			: out std_logic_vector(9 downto 0);
    OUT3 			: out std_logic_vector(9 downto 0);
    OUT4 			: out std_logic_vector(9 downto 0);
    OUT5 			: out std_logic_vector(9 downto 0);
    OUT6 			: out std_logic_vector(9 downto 0);
    OUT7 			: out std_logic_vector(9 downto 0);
    OUT8 			: out std_logic_vector(9 downto 0);
    OUT9 			: out std_logic_vector(9 downto 0);
    OUT10			: out std_logic_vector(9 downto 0);
    OUT11			: out std_logic_vector(9 downto 0);
    OUT12			: out std_logic_vector(9 downto 0);
    OUT13			: out std_logic_vector(9 downto 0);
    OUT14			: out std_logic_vector(9 downto 0);
    OUT15			: out std_logic_vector(9 downto 0);
    OUT16   	: out std_logic_vector(9 downto 0)
	);

end entity lvds_out_map;

architecture lvds_out_map_a of lvds_out_map is

	begin  
    OUTCTR	<= LVDS_DATA(9 downto 0);
    OUT1 	 <= LVDS_DATA(19 downto 10);
    OUT2 	 <= LVDS_DATA(29 downto 20);
    OUT3 	 <= LVDS_DATA(39 downto 30);
    OUT4 	 <= LVDS_DATA(49 downto 40);
    OUT5 	 <= LVDS_DATA(59 downto 50);
    OUT6 	 <= LVDS_DATA(69 downto 60);
    OUT7 	 <= LVDS_DATA(79 downto 70);
    OUT8 	 <= LVDS_DATA(89 downto 80);
    OUT9 	 <= LVDS_DATA(99 downto 90);
    OUT10	 <= LVDS_DATA(109 downto 100);
    OUT11	 <= LVDS_DATA(119 downto 110);
    OUT12	 <= LVDS_DATA(129 downto 120);
    OUT13	 <= LVDS_DATA(139 downto 130);
    OUT14	 <= LVDS_DATA(149 downto 140);
    OUT15	 <= LVDS_DATA(159 downto 150);
    OUT16  <= LVDS_DATA(169 downto 160);

end architecture lvds_out_map_a;
