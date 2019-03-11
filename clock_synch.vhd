library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity clock_synch is
		port(clk_in : in std_logic;
		clk_out_400 : out std_logic);
end clock_synch;
architecture clock_synch_beh of clock_synch is
signal prescaler : unsigned(15 downto 0);
signal clk400 : std_logic := '0';
begin
process(clk_in)
begin
	if (rising_edge(clk_in)) then
		clk400<='0';
		if (prescaler = X"F424") then 
			prescaler <="0000000000000000";
			clk400<='1';
		else 
			prescaler<=prescaler+1;
		end if;
	end if;
end process;
clk_out_400<=clk400;
end clock_synch_beh;