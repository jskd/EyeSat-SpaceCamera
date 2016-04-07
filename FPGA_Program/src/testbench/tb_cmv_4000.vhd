library ieee;
use ieee.std_logic_1164.all;
use std.textio.all;
use work.txt_util.all;
														
														
entity tb_cmv_4000 is
	port
	(
		--Tana:				out	std_logic;
		SYS_RES_N:	in	std_logic := '1';
		CLK_IN: 		in 	std_logic;
		FRAME_REQ:	in	std_logic;
		--T_EXP2:			in	std_logic;
		--T_EXP1: 		in	std_logic;
		SPI_EN: 		in	std_logic;
		SPI_CLK:		in	std_logic;
		SPI_IN:			in	std_logic;
		SPI_OUT:		out	std_logic;
		--TDIG2:			out	std_logic;
		--TDIG1:			out	std_logic;
		--LVDS_CLK:		in	std_logic;
		OUTCLK:			out	std_logic;
		LVDS_OUTCTR:			out	std_logic;
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

	file f_data: text; 

	signal clk : std_logic := '0';
	signal clk_gen_lvds : std_logic := '0';
	signal	clk_lvds: std_logic := '0';
	
	signal next_lvds_digit : integer range 0 to 10 := 0;
	
	signal current_lvds_digit: integer range 0 to 10 := 0;
	

	type state_t is (waiting_req, init, px_burst, burst_oh, row_oh);
	signal curent_s: state_t := init;
	
	type YOUR_ARRAY_TYPE is array (0 to 15) of std_logic_vector(9 downto 0);
	signal buf_LVDS_OUTDATA : YOUR_ARRAY_TYPE;
	
	signal buf_LVDS_OUTCTR : std_logic_vector(9 downto 0);
	signal buf_curent_s : std_logic_vector(3 downto 0);
	
	signal buf : std_logic_vector(173 downto 0);
begin

  clk_gen(clk_gen_lvds, 50.000E6);
	clk_lvds <= SYS_RES_N and clk_gen_lvds;
	OUTCLK <= clk_lvds;

	process(clk_lvds)
	
		variable f_line: line;		
		variable f_str: string(1 to 174);
		
		begin
		
			current_lvds_digit <= next_lvds_digit;
		
			-- update outdata
			for i in 0 to 15 loop
				LVDS_OUTDATA(i) <= buf_LVDS_OUTDATA(i)(next_lvds_digit);
			end loop;
			
			-- update ctr
			LVDS_OUTCTR <= buf_LVDS_OUTCTR(next_lvds_digit);
				
			-- update state
			case buf_curent_s is
				when "0000" => curent_s <= px_burst;
				when "0001" => curent_s <= burst_oh;
				when "0010" => curent_s <= row_oh;
				when others => curent_s <= init;
			end case;

			-- read file
			if (next_lvds_digit = 7) and (curent_s = init) then	
				file_open(f_data, "..\src\testbench\pixel_ouput.data", read_mode);
			end if;

			-- read line of file
			if (next_lvds_digit = 8) and (curent_s /= waiting_req) then
				readline(f_data, f_line);
				read(f_line, f_str);
				buf <= to_std_logic_vector(f_str);
			end if;

			-- update ouput buffer
			if (next_lvds_digit = 9) and (curent_s /= waiting_req) then
				buf_curent_s <= buf(buf'LEFT  downto buf'LEFT - 3);
				buf_LVDS_OUTCTR <= buf(buf'LEFT - 4 downto buf'LEFT - 13);
				for i in 0 to 15 loop
					buf_LVDS_OUTDATA(i) <= buf(buf'LEFT - 14 - i*10 downto buf'LEFT - 23 - i*10);
				end loop;
			end if;

			-- update conter
			if next_lvds_digit = 9 then
				next_lvds_digit <= 0;
			else
				next_lvds_digit <= next_lvds_digit+1;
			end if;

	end process;

end architecture;