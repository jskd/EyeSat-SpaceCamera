library ieee;
use ieee.std_logic_1164.all;

package reverse_bit_order_vector is

		function reverse_bit_order (a: std_logic_vector) return std_logic_vector; 
		
end reverse_bit_order_vector;


package body reverse_bit_order_vector is

function reverse_bit_order (a: in std_logic_vector)
return std_logic_vector is
  variable result: std_logic_vector(a'RANGE);
  alias aa: std_logic_vector(a'REVERSE_RANGE) is a;
begin
  for i in aa'RANGE loop
    result(i) := aa(i);
  end loop;
  return result;
end; 

end reverse_bit_order_vector;

