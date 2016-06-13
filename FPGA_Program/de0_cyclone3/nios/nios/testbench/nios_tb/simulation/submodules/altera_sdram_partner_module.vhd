--Legal Notice: (C)2016 Altera Corporation. All rights reserved.  Your
--use of Altera Corporation's design tools, logic functions and other
--software and tools, and its AMPP partner logic functions, and any
--output files any of the foregoing (including device programming or
--simulation files), and any associated documentation or information are
--expressly subject to the terms and conditions of the Altera Program
--License Subscription Agreement or other applicable license agreement,
--including, without limitation, that your use is for the sole purpose
--of programming logic devices manufactured by Altera and sold by Altera
--or its authorized distributors.  Please refer to the applicable
--agreement for further details.


-- turn off superfluous VHDL processor warnings 
-- altera message_level Level1 
-- altera message_off 10034 10035 10036 10037 10230 10240 10030 

library altera;
use altera.altera_europa_support_lib.all;

library altera_mf;
use altera_mf.altera_mf_components.all;

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

library std;
use std.textio.all;

entity altera_sdram_partner_module is 
        generic (
                 INIT_FILE : STRING := "altera_sdram_partner_module.dat"
                 );
        port (
              -- inputs:
                 signal clk : IN STD_LOGIC;
                 signal zs_addr : IN STD_LOGIC_VECTOR (11 DOWNTO 0);
                 signal zs_ba : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
                 signal zs_cas_n : IN STD_LOGIC;
                 signal zs_cke : IN STD_LOGIC;
                 signal zs_cs_n : IN STD_LOGIC;
                 signal zs_dqm : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
                 signal zs_ras_n : IN STD_LOGIC;
                 signal zs_we_n : IN STD_LOGIC;

              -- outputs:
                 signal zs_dq : INOUT STD_LOGIC_VECTOR (15 DOWNTO 0)
              );
end entity altera_sdram_partner_module;


architecture europa of altera_sdram_partner_module is
                signal CODE :  STD_LOGIC_VECTOR (23 DOWNTO 0);
                signal a :  STD_LOGIC_VECTOR (11 DOWNTO 0);
                signal addr_col :  STD_LOGIC_VECTOR (7 DOWNTO 0);
                signal addr_crb :  STD_LOGIC_VECTOR (13 DOWNTO 0);
                signal ba :  STD_LOGIC_VECTOR (1 DOWNTO 0);
                signal cas_n :  STD_LOGIC;
                signal cke :  STD_LOGIC;
                signal cmd_code :  STD_LOGIC_VECTOR (2 DOWNTO 0);
                signal cs_n :  STD_LOGIC;
                signal dqm :  STD_LOGIC_VECTOR (1 DOWNTO 0);
                signal index :  STD_LOGIC_VECTOR (2 DOWNTO 0);
                signal latency :  STD_LOGIC_VECTOR (2 DOWNTO 0);
                signal mask :  STD_LOGIC_VECTOR (1 DOWNTO 0);
                TYPE mem_type is ARRAY( 4194303 DOWNTO 0) of STD_LOGIC_VECTOR(15 DOWNTO 0);
              signal mem_array : mem_type;
                signal mem_bytes :  STD_LOGIC_VECTOR (15 DOWNTO 0);
                signal ras_n :  STD_LOGIC;
                signal rd_addr_pipe_0 :  STD_LOGIC_VECTOR (21 DOWNTO 0);
                signal rd_addr_pipe_1 :  STD_LOGIC_VECTOR (21 DOWNTO 0);
                signal rd_addr_pipe_2 :  STD_LOGIC_VECTOR (21 DOWNTO 0);
                signal rd_mask_pipe_0 :  STD_LOGIC_VECTOR (1 DOWNTO 0);
                signal rd_mask_pipe_1 :  STD_LOGIC_VECTOR (1 DOWNTO 0);
                signal rd_mask_pipe_2 :  STD_LOGIC_VECTOR (1 DOWNTO 0);
                signal rd_valid_pipe :  STD_LOGIC_VECTOR (2 DOWNTO 0);
                signal rdaddress :  STD_LOGIC_VECTOR (21 DOWNTO 0);
                signal read_addr :  STD_LOGIC_VECTOR (21 DOWNTO 0);
                signal read_address :  STD_LOGIC_VECTOR (21 DOWNTO 0);
                signal read_data :  STD_LOGIC_VECTOR (15 DOWNTO 0);
                signal read_mask :  STD_LOGIC_VECTOR (1 DOWNTO 0);
                signal read_temp :  STD_LOGIC_VECTOR (15 DOWNTO 0);
                signal read_valid :  STD_LOGIC;
                signal rmw_temp :  STD_LOGIC_VECTOR (15 DOWNTO 0);
                signal test_addr :  STD_LOGIC_VECTOR (21 DOWNTO 0);
                signal txt_code :  STD_LOGIC_VECTOR (23 DOWNTO 0);
                signal we_n :  STD_LOGIC;
                signal wren :  STD_LOGIC;
  
-- this should convert a hexadecimal string to an integer
FUNCTION convert_string_to_number(string_to_convert : STRING;
      final_char_index : NATURAL := 0)
RETURN NATURAL IS
   VARIABLE result: NATURAL := 0;
   VARIABLE current_index : NATURAL := 1;
   VARIABLE the_char : CHARACTER;

   BEGIN
      IF final_char_index = 0 THEN
         result := 0;
	 ELSE
         WHILE current_index <= final_char_index LOOP
            the_char := string_to_convert(current_index);
            IF    '0' <= the_char AND the_char <= '9' THEN
               result := result * 16 + character'pos(the_char) - character'pos('0');
            ELSIF 'A' <= the_char AND the_char <= 'F' THEN
               result := result * 16 + character'pos(the_char) - character'pos('A') + 10;
            ELSIF 'a' <= the_char AND the_char <= 'f' THEN
               result := result * 16 + character'pos(the_char) - character'pos('a') + 10;
            ELSE
               report "Ack, a formatting error!";
            END IF;
            current_index := current_index + 1;
         END LOOP;
      END IF; 
   RETURN result;
END convert_string_to_number;


begin

  process
VARIABLE write_line : line;
VARIABLE write_line1 : line;
VARIABLE write_line2 : line;
VARIABLE write_line3 : line;
VARIABLE write_line4 : line;

    begin
      write(write_line, string'("************************************************************"));
      write(output, write_line.all & CR);
      deallocate (write_line);
      write(write_line1, string'("This testbench includes an SOPC Builder Generated Altera model:"));
      write(output, write_line1.all & CR);
      deallocate (write_line1);
      write(write_line2, string'("'altera_sdram_partner_module.vhd', to simulate accesses to SDRAM."));
      write(output, write_line2.all & CR);
      deallocate (write_line2);
      write(write_line3, string'("Initial contents are loaded from the file: 'altera_sdram_partner_module.dat'."));
      write(output, write_line3.all & CR);
      deallocate (write_line3);
      write(write_line4, string'("************************************************************"));
      write(output, write_line4.all & CR);
      deallocate (write_line4);
    wait;
  end process;
  process (rdaddress)
  begin
      read_address <= rdaddress;

  end process;

  process
VARIABLE data_line : LINE;
VARIABLE the_character_from_data_line : CHARACTER;
VARIABLE b_munging_address : BOOLEAN := FALSE;
VARIABLE converted_number : NATURAL := 0;
VARIABLE found_string_array : STRING(1 TO 128);
VARIABLE string_index : NATURAL := 0;
VARIABLE line_length : NATURAL := 0;
VARIABLE b_convert : BOOLEAN := FALSE;
VARIABLE b_found_new_val : BOOLEAN := FALSE;
VARIABLE load_address : NATURAL := 0;
VARIABLE mem_index : NATURAL := 0;
VARIABLE mem_init : BOOLEAN := FALSE;
FILE memory_contents_file : TEXT OPEN read_mode IS INIT_FILE;

    begin

   -- need an initialization process
   -- this process initializes the whole memory array from a named file by copying the
   -- contents of the *.dat file to the memory array.

   -- find the @<address> thingy to load the memory from this point 
IF(NOT mem_init) THEN
   WHILE NOT(endfile(memory_contents_file)) LOOP

      readline(memory_contents_file, data_line);
      line_length := data_line'LENGTH;


      WHILE line_length > 0 LOOP
         read(data_line, the_character_from_data_line);

	       -- check for the @ character indicating a new address wad
 	       -- if not found, we're either still reading the new address _or_loading data
         IF '@' = the_character_from_data_line AND NOT b_munging_address THEN
  	    b_munging_address := TRUE;
            b_found_new_val := TRUE; 
	    -- get the rest of characters before white space and then convert them
	    -- to a number
	 ELSE 

            IF (' ' = the_character_from_data_line AND b_found_new_val) 
		OR (line_length = 1) THEN
               b_convert := TRUE;
	    END IF;

            IF NOT(' ' = the_character_from_data_line) THEN
               string_index := string_index + 1;
               found_string_array(string_index) := the_character_from_data_line;
	       b_found_new_val := TRUE;
            END IF;
	 END IF;

     IF b_convert THEN
       converted_number := convert_string_to_number(found_string_array, string_index);
       b_convert := FALSE;
       b_found_new_val := FALSE;
       string_index := 0;

       IF b_munging_address THEN
          load_address := converted_number;
          mem_index := load_address / 2;
          b_munging_address := FALSE;
       ELSE
	  IF (mem_index < 4194304) THEN
	    mem_array(mem_index) <= conv_std_logic_vector(converted_number, mem_array(mem_index)'LENGTH);
            mem_index := mem_index + 1;
          END IF;
       END IF; 
    END IF;
    line_length := line_length - 1; 
    END LOOP;

END LOOP;
-- get the first _real_ block of data, sized to our memory width
-- and keep on loading.
  mem_init := TRUE;
END IF;
-- END OF READMEM
    wait;
  end process;
  process (clk)
  begin
    if clk'event and clk = '1' then
      -- Write data
      if std_logic'(wren) = '1' then 
        mem_array(CONV_INTEGER(UNSIGNED((test_addr)))) <= rmw_temp;
      end if;
    end if;

  end process;

  read_data <= mem_array(CONV_INTEGER(UNSIGNED((read_address))));
  rdaddress <= A_WE_StdLogicVector(((CODE = std_logic_vector'("001000000101011101010010"))), test_addr, read_addr);
  wren <= to_std_logic((CODE = std_logic_vector'("001000000101011101010010")));
  cke <= zs_cke;
  cs_n <= zs_cs_n;
  ras_n <= zs_ras_n;
  cas_n <= zs_cas_n;
  we_n <= zs_we_n;
  dqm <= zs_dqm;
  ba <= zs_ba;
  a <= zs_addr;
  cmd_code <= Std_Logic_Vector'(A_ToStdLogicVector(ras_n) & A_ToStdLogicVector(cas_n) & A_ToStdLogicVector(we_n));
  CODE <= A_WE_StdLogicVector((std_logic'((cs_n)) = '1'), std_logic_vector'("010010010100111001001000"), txt_code);
  addr_col <= a(7 DOWNTO 0);
  test_addr <= addr_crb & addr_col;
  mem_bytes <= read_data;
  rmw_temp(7 DOWNTO 0) <= A_WE_StdLogicVector((std_logic'(dqm(0)) = '1'), mem_bytes(7 DOWNTO 0), zs_dq(7 DOWNTO 0));
  rmw_temp(15 DOWNTO 8) <= A_WE_StdLogicVector((std_logic'(dqm(1)) = '1'), mem_bytes(15 DOWNTO 8), zs_dq(15 DOWNTO 8));
  -- Handle Input.
  process (clk)
  begin
    if clk'event and clk = '1' then
      -- No Activity of Clock Disabled
      if std_logic'(cke) = '1' then 
        -- LMR: Get CAS_Latency.
        if CODE = std_logic_vector'("010011000100110101010010") then 
          latency <= a(6 DOWNTO 4);
        end if;
        -- ACT: Get Row/Bank Address.
        if CODE = std_logic_vector'("010000010100001101010100") then 
          addr_crb <= Std_Logic_Vector'(A_ToStdLogicVector(ba(1)) & a & A_ToStdLogicVector(ba(0)));
        end if;
        rd_valid_pipe(2) <= rd_valid_pipe(1);
        rd_valid_pipe(1) <= rd_valid_pipe(0);
        rd_valid_pipe(0) <= to_std_logic((CODE = std_logic_vector'("001000000101001001000100")));
        rd_addr_pipe_2 <= rd_addr_pipe_1;
        rd_addr_pipe_1 <= rd_addr_pipe_0;
        rd_addr_pipe_0 <= test_addr;
        rd_mask_pipe_2 <= rd_mask_pipe_1;
        rd_mask_pipe_1 <= rd_mask_pipe_0;
        rd_mask_pipe_0 <= dqm;
      end if;
    end if;

  end process;

  read_temp(7 DOWNTO 0) <= A_WE_StdLogicVector((std_logic'(mask(0)) = '1'), std_logic_vector'("ZZZZZZZZ"), read_data(7 DOWNTO 0));
  read_temp(15 DOWNTO 8) <= A_WE_StdLogicVector((std_logic'(mask(1)) = '1'), std_logic_vector'("ZZZZZZZZ"), read_data(15 DOWNTO 8));
  --use index to select which pipeline stage drives addr
  read_addr <= A_WE_StdLogicVector((((std_logic_vector'("00000000000000000000000000000") & (index)) = std_logic_vector'("00000000000000000000000000000000"))), rd_addr_pipe_0, A_WE_StdLogicVector((((std_logic_vector'("00000000000000000000000000000") & (index)) = std_logic_vector'("00000000000000000000000000000001"))), rd_addr_pipe_1, rd_addr_pipe_2));
  --use index to select which pipeline stage drives mask
  read_mask <= A_WE_StdLogicVector((((std_logic_vector'("00000000000000000000000000000") & (index)) = std_logic_vector'("00000000000000000000000000000000"))), rd_mask_pipe_0, A_WE_StdLogicVector((((std_logic_vector'("00000000000000000000000000000") & (index)) = std_logic_vector'("00000000000000000000000000000001"))), rd_mask_pipe_1, rd_mask_pipe_2));
  --use index to select which pipeline stage drives valid
  read_valid <= A_WE_StdLogic((((std_logic_vector'("00000000000000000000000000000") & (index)) = std_logic_vector'("00000000000000000000000000000000"))), rd_valid_pipe(0), A_WE_StdLogic((((std_logic_vector'("00000000000000000000000000000") & (index)) = std_logic_vector'("00000000000000000000000000000001"))), rd_valid_pipe(1), rd_valid_pipe(2)));
  index <= A_EXT (((std_logic_vector'("0") & (latency)) - (std_logic_vector'("000") & (A_TOSTDLOGICVECTOR(std_logic'('1'))))), 3);
  mask <= read_mask;
  zs_dq <= A_WE_StdLogicVector((std_logic'(read_valid) = '1'), read_temp, A_REP(std_logic'('Z'), 16));
--synthesis translate_off
    txt_code <= A_WE_StdLogicVector(((cmd_code = std_logic_vector'("000"))), std_logic_vector'("010011000100110101010010"), A_WE_StdLogicVector(((cmd_code = std_logic_vector'("001"))), std_logic_vector'("010000010101001001000110"), A_WE_StdLogicVector(((cmd_code = std_logic_vector'("010"))), std_logic_vector'("010100000101001001000101"), A_WE_StdLogicVector(((cmd_code = std_logic_vector'("011"))), std_logic_vector'("010000010100001101010100"), A_WE_StdLogicVector(((cmd_code = std_logic_vector'("100"))), std_logic_vector'("001000000101011101010010"), A_WE_StdLogicVector(((cmd_code = std_logic_vector'("101"))), std_logic_vector'("001000000101001001000100"), A_WE_StdLogicVector(((cmd_code = std_logic_vector'("110"))), std_logic_vector'("010000100101001101010100"), A_WE_StdLogicVector(((cmd_code = std_logic_vector'("111"))), std_logic_vector'("010011100100111101010000"), std_logic_vector'("010000100100000101000100")))))))));
--synthesis translate_on

end europa;

