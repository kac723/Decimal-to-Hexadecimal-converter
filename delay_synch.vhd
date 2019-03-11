library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity delay_synch is
		port(clk_in : in std_logic;
		key : in std_logic;
		EN : IN std_logic;
		y_delay : out std_logic);
end delay_synch;
architecture seq of delay_synch is
signal count : unsigned(3 downto 0):="0000";
begin
process(clk_in,key,EN)
begin
IF(key='0') then
	y_delay<='0';
	count<="0000";
ELSIF (EN ='1') THEN
		IF (rising_edge(clk_in))then
			IF(count="1111") then
				y_delay<='1';
			else 
				count<=count+1;
			end IF;
		END IF;
END IF;
end process;
end seq;