-- from: http://stackoverflow.com/questions/17904514/vhdl-how-should-i-create-a-clock-in-a-testbench 

library ieee;
use ieee.std_logic_1164.all;

entity tb_clk_gen is
	PORT
	(
		LVDS_CLK: OUT STD_LOGIC
	);
end entity;

architecture tb_clk_gen_arch of tb_clk_gen is

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

  -- Clock frequency and signal
  signal clk_50 : std_logic;

begin

  -- Clock generation with concurrent procedure call
  clk_gen(clk_50, 50.000E6);  -- 50.000 MHz clock

	LVDS_CLK <= clk_50;
	
  -- Time resolution show
  assert FALSE report "Time resolution: " & time'image(time'succ(0 fs)) severity NOTE;

end architecture;