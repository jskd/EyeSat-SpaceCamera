library ieee;
use ieee.std_logic_1164.all;
use work.reverse_bit_order_vector.all;

entity lvds_out_map is

	port(
		LVDS_DATA	: in	std_logic_vector(169 downto 0);
		OUTCTR	 	: out std_logic_vector(	 9 downto 0);
		OUTCH01 	: out std_logic_vector(	 9 downto 0);
		OUTCH02 	: out std_logic_vector(	 9 downto 0);
		OUTCH03 	: out std_logic_vector(	 9 downto 0);
		OUTCH04 	: out std_logic_vector(	 9 downto 0);
		OUTCH05 	: out std_logic_vector(	 9 downto 0);
		OUTCH06 	: out std_logic_vector(	 9 downto 0);
		OUTCH07 	: out std_logic_vector(	 9 downto 0);
		OUTCH08 	: out std_logic_vector(	 9 downto 0);
		OUTCH09 	: out std_logic_vector(	 9 downto 0);
		OUTCH10 	: out std_logic_vector(	 9 downto 0);
		OUTCH11		: out std_logic_vector(	 9 downto 0);
		OUTCH12		: out std_logic_vector(	 9 downto 0);
		OUTCH13		: out std_logic_vector(	 9 downto 0);
		OUTCH14		: out std_logic_vector(	 9 downto 0);
		OUTCH15		: out std_logic_vector(	 9 downto 0);
		OUTCH16		: out std_logic_vector(	 9 downto 0)
	);

end entity lvds_out_map;

architecture lvds_out_map_a of lvds_out_map is

	begin	
		OUTCTR	<= reverse_bit_order(LVDS_DATA(	9		downto	 0));
		OUTCH01 <= reverse_bit_order(LVDS_DATA( 19 	downto	10));
		OUTCH02 <= reverse_bit_order(LVDS_DATA( 29 	downto	20));
		OUTCH03 <= reverse_bit_order(LVDS_DATA( 39 	downto	30));
		OUTCH04 <= reverse_bit_order(LVDS_DATA( 49 	downto	40));
		OUTCH05 <= reverse_bit_order(LVDS_DATA( 59 	downto	50));
		OUTCH06 <= reverse_bit_order(LVDS_DATA( 69 	downto	60));
		OUTCH07 <= reverse_bit_order(LVDS_DATA( 79 	downto	70));
		OUTCH08 <= reverse_bit_order(LVDS_DATA( 89 	downto	80));
		OUTCH09 <= reverse_bit_order(LVDS_DATA( 99 	downto	90));
		OUTCH10	<= reverse_bit_order(LVDS_DATA(109 	downto 100));
		OUTCH11	<= reverse_bit_order(LVDS_DATA(119 	downto 110));
		OUTCH12	<= reverse_bit_order(LVDS_DATA(129 	downto 120));
		OUTCH13	<= reverse_bit_order(LVDS_DATA(139 	downto 130));
		OUTCH14	<= reverse_bit_order(LVDS_DATA(149 	downto 140));
		OUTCH15	<= reverse_bit_order(LVDS_DATA(159 	downto 150));
		OUTCH16 <= reverse_bit_order(LVDS_DATA(169 	downto 160));

end architecture lvds_out_map_a;
