library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity converter is
		port (enable : in std_logic;
				value_in0 : in std_logic_vector(3 downto 0);
				value_in1 : in std_logic_vector(3 downto 0);
				value_in2 : in std_logic_vector(3 downto 0);
				value_in3 : in std_logic_vector(3 downto 0);
				value_out0 : out std_logic_vector(3 downto 0);
				value_out1 : out std_logic_vector(3 downto 0);
				value_out2 : out std_logic_vector(3 downto 0);
				value_out3 : out std_logic_vector(3 downto 0));
end converter;
architecture bhw of converter is
signal value_int : integer;
signal value_out : std_logic_vector(30 downto 0);
begin
process(value_in0,value_in1,value_in2,value_in3,enable)
begin
	value_int<=0;
	if(enable='1') then
		value_int<=(to_integer(unsigned(value_in3))*1000+to_integer(unsigned(value_in2))*100)+(to_integer(unsigned(value_in1))*10)+(to_integer(unsigned(value_in0)));
	end if;
		value_out<=std_logic_vector(to_unsigned(value_int,31));
		value_out0<=value_out(3 downto 0);
		value_out1<=value_out(7 downto 4);
		value_out2<=value_out(11 downto 8);
		value_out3<=value_out(15 downto 12);
end process ;

end bhw;