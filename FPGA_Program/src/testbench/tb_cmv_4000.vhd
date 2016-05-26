library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;
use work.hex_to_std_logic_vector.all;
		
												
entity tb_cmv_4000 is
	port
	(
		--Tana:				out	std_logic;
		SYS_RES_N:	in	std_logic := '1';
		--CLK_IN: 		in 	std_logic;
		FRAME_REQ:	in	std_logic := '1';
		--T_EXP2:			in	std_logic;
		--T_EXP1: 		in	std_logic;
		--SPI_EN: 		in	std_logic;
		--SPI_CLK:		in	std_logic;
		--SPI_IN:			in	std_logic;
		--SPI_OUT:		out	std_logic;
		--TDIG2:			out	std_logic;
		--TDIG1:			out	std_logic;
		--LVDS_CLK:		in	std_logic;
		OUTCLK:					out	std_logic;
		LVDS_OUTCTR:		out	std_logic;
		LVDS_OUTDATA:		out	std_logic_vector(15 downto 0)
	);
end entity;


architecture tb_cmv_4000_arch of tb_cmv_4000 is
  -- Procedure for clock generation
  procedure clk_gen(signal clk : out std_logic; constant FREQ : real) is
    constant PERIOD    : time := 1 sec / FREQ;        -- Full period
    constant HIGH_TIME : time := PERIOD / 2;          -- High time
    constant LOW_TIME  : time := PERIOD - HIGH_TIME;  -- Low time; always >= HIGH_TIME
	
  begin
    -- Check the arguments
    assert (HIGH_TIME /= 0 fs) report "clk_plain: High time is zero; time resolution to large for frequency" severity FAILURE;
    -- Generate a clock cycle
    loop
      clk <= '1';
      wait for HIGH_TIME;
      clk <= '0';
      wait for LOW_TIME;
    end loop;
  end procedure;

	
	
	
	file f_data: text open read_mode is "../../src/testbench/pixel_ouput.data"; 

	
	signal lvds_digit : integer range 0 to 10 := 0;
	
	

	type state_t is (waiting_req, init, px_burst, burst_oh, row_oh);
	signal curent_state: state_t := waiting_req;
	signal next_state: state_t := waiting_req;
	
	
	subtype  one_channel_data_output_buf_t is std_logic_vector(11 downto 0);
	type all_channel_data_output_buf_t is array (0 to 15) of one_channel_data_output_buf_t;
	signal current_channel_data_v	: all_channel_data_output_buf_t;
	signal next_channel_data_v		: all_channel_data_output_buf_t;
	
	signal current_channel_ctr_v	: one_channel_data_output_buf_t;
	signal next_channel_ctr_v			: one_channel_data_output_buf_t;
	

		
	signal clk_gen_lvds : std_logic := '0';
	signal clk : std_logic := '0';
			
begin

  clk_gen(clk_gen_lvds, 50.000E6);
	
	clk <= SYS_RES_N and clk_gen_lvds;
	OUTCLK <= clk;
	
	LVDS_OUTCTR <= current_channel_ctr_v(lvds_digit);
	data: for i in 0 to 15 generate
		LVDS_OUTDATA(i) <= current_channel_data_v(i)(lvds_digit);
	end generate data;

	update_state: process(clk) 
		begin
		if lvds_digit = 9 then		
			curent_state <= next_state;
			current_channel_ctr_v <= next_channel_ctr_v;
			for i in 0 to 15 loop
				current_channel_data_v(i) <= next_channel_data_v(i);
			end loop;
		end if;
	end process update_state;
	
	reader_file: process(clk)
	
		variable f_line		: line;		
		variable f_str		: string(1 to  52);
		variable line_hex : std_logic_vector( 207 downto 0);
		
		begin
		
		if lvds_digit = 0 then	
		
			if curent_state = waiting_req or endfile(f_data) then	
			
				if FRAME_REQ = '1' then 
					next_state <= init;
				else
					next_state <= waiting_req;
				end if;
				
				next_channel_ctr_v <= "001000000000";
				for i in 0 to 15 loop
					next_channel_data_v(i) <= (others => '0');
				end loop;
				
			else 
				
					readline(f_data, f_line);
					read(f_line, f_str);
					line_hex := hexstring_to_std_logic_vector(f_str);
					
					case line_hex(line_hex'LEFT downto line_hex'LEFT - 3) is
						when "0001" => next_state <= px_burst;
						when "0010" => next_state <= burst_oh;
						when "0011" => next_state <= row_oh;
						when others => next_state <= curent_state;
					end case;
					
					next_channel_ctr_v <= line_hex( line_hex'LEFT - 4  downto line_hex'LEFT - 4 - 12 + 1);

					for i in 0 to 15 loop
						next_channel_data_v(i) <= line_hex(line_hex'LEFT - 4 - (i+1)*12 downto line_hex'LEFT - 4 - 12 + 1 - (i+1)*12  );
					end loop;

			end if;
			
		end if;

	end process reader_file;
		
	digit_increment: process(clk)		
		begin	
		if lvds_digit = 9 then
			lvds_digit <= 0;
		else
			lvds_digit <= lvds_digit+1;
		end if;
	end process digit_increment;

end architecture;