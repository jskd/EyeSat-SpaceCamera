library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;


package hex_to_std_logic_vector is

    function hexchar_to_std_logic_vector(c: character) return std_logic_vector; 
		
    function hexstring_to_std_logic_vector(s: string) return std_logic_vector;  
		
end hex_to_std_logic_vector;


package body hex_to_std_logic_vector is

	function hexchar_to_std_logic_vector(c: character) return std_logic_vector is 
		variable sl: std_logic_vector(3 downto 0);
	begin
		case c is
			when '0' 		=> sl := "0000"; 
			when '1' 		=> sl := "0001";
			when '2' 		=> sl := "0010";
			when '3' 		=> sl := "0011";
			when '4' 		=> sl := "0100";
			when '5' 		=> sl := "0101";
			when '6' 		=> sl := "0110";
			when '7' 		=> sl := "0111";
			when '8' 		=> sl := "1000";
			when '9' 		=> sl := "1001";
			when 'A' 		=> sl := "1010";
			when 'B' 		=> sl := "1011";
			when 'C' 		=> sl := "1100";
			when 'D' 		=> sl := "1101";
			when 'E' 		=> sl := "1110";
			when 'F' 		=> sl := "1111";
			when others => sl := "XXXX";
		end case;
		return sl;
	end hexchar_to_std_logic_vector;

	function hexstring_to_std_logic_vector(s: string) return std_logic_vector is 
		variable slv: std_logic_vector( (s'high-s'low+1)*4-1 downto 0);
		variable k: integer;
	begin
		k := (s'high-s'low+1)*4-1;
		for i in s'range loop
			slv(k downto k-3)	:= hexchar_to_std_logic_vector(s(i));
			k := k-4;
		end loop;
		return slv;
	end hexstring_to_std_logic_vector;   

end hex_to_std_logic_vector;