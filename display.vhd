library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all; 
--use ieee.std_logic_signed.all;

ENTITY display IS
PORT (
	data_select : IN std_logic;
	Q_dec0 : IN std_ulogic_vector(3 downto 0);
	Q_dec1 : IN std_ulogic_vector(3 downto 0);
	Q_dec2 : IN std_ulogic_vector(3 downto 0);
	Q_dec3 : IN std_ulogic_vector(3 downto 0);
	
	Q_hex0 : IN std_ulogic_vector(3 downto 0);
	Q_hex1 : IN std_ulogic_vector(3 downto 0);
	Q_hex2 : IN std_ulogic_vector(3 downto 0);
	Q_hex3 : IN std_ulogic_vector(3 downto 0);

	y0 : OUT std_ulogic_vector(6 downto 0);
	y1 : OUT std_ulogic_vector(6 downto 0);
	y2 : OUT std_ulogic_vector(6 downto 0);
	y3 : OUT std_ulogic_vector(6 downto 0)
);
END display;

ARCHITECTURE bhw of display IS
SIGNAL sQ0,sQ1,sQ2,sQ3,sQ4,sQ5,sQ6,sQ7 : std_ulogic_vector(6 downto 0);
BEGIN
comb: PROCESS(data_select,Q_dec0,Q_dec1,Q_dec2,Q_dec3, Q_hex0,Q_hex1,Q_hex2,Q_hex3)
BEGIN
CASE Q_dec0 IS
	WHEN "0000" => sQ0<="1000000";
	WHEN "0001" => sQ0<="1111001";
	WHEN "0010" => sQ0<="0100100"; 
	WHEN "0011" => sQ0<="0110000"; 
	WHEN "0100" => sQ0<="0011001"; 
	WHEN "0101" => sQ0<="0010010"; 
	WHEN "0110" => sQ0<="0000010"; 
	WHEN "0111" => sQ0<="1111000"; 
	WHEN "1000" => sQ0<="0000000";
	WHEN "1001" => sQ0<="0010000";
	WHEN OTHERS => sQ0<="1111111";
END CASE;
CASE Q_dec1 IS
	WHEN "0000" =>sQ1<="1000000";
	WHEN "0001" =>sQ1<="1111001";
	WHEN "0010" =>sQ1<="0100100";
	WHEN "0011" =>sQ1<="0110000";
	WHEN "0100" =>sQ1<="0011001";
	WHEN "0101" =>sQ1<="0010010";
	WHEN "0110" =>sQ1<="0000010";
	WHEN "0111" =>sQ1<="1111000";
	WHEN "1000" =>sQ1<="0000000";
	WHEN "1001" =>sQ1<="0010000";
	WHEN OTHERS =>sQ1<="1111111";
END CASE;
CASE Q_dec2 IS
	WHEN "0000" => sQ2<="1000000";
	WHEN "0001" => sQ2<="1111001";
	WHEN "0010" => sQ2<="0100100";
	WHEN "0011" => sQ2<="0110000";
	WHEN "0100" => sQ2<="0011001";
	WHEN "0101" => sQ2<="0010010";
	WHEN "0110" => sQ2<="0000010";
	WHEN "0111" => sQ2<="1111000";
	WHEN "1000" => sQ2<="0000000";
	WHEN "1001" => sQ2<="0010000";
	WHEN OTHERS => sQ2<="1111111";
END CASE;
CASE Q_dec3 IS
	WHEN "0000" => sQ3<="1000000";
	WHEN "0001" => sQ3<="1111001";
	WHEN "0010" => sQ3<="0100100";
	WHEN "0011" => sQ3<="0110000";
	WHEN "0100" => sQ3<="0011001";
	WHEN "0101" => sQ3<="0010010";
	WHEN "0110" => sQ3<="0000010";
	WHEN "0111" => sQ3<="1111000";
	WHEN "1000" => sQ3<="0000000";
	WHEN "1001" => sQ3<="0010000";
	WHEN OTHERS => sQ3<="1111111";
END CASE;
CASE Q_hex0 IS
	WHEN "0000" => sQ4<="1000000";
	WHEN "0001" => sQ4<="1111001";
	WHEN "0010" => sQ4<="0100100";
	WHEN "0011" => sQ4<="0110000";
	WHEN "0100" => sQ4<="0011001";
	WHEN "0101" => sQ4<="0010010";
	WHEN "0110" => sQ4<="0000010";
	WHEN "0111" => sQ4<="1111000";
	WHEN "1000" => sQ4<="0000000";
	WHEN "1001" => sQ4<="0010000";
	WHEN "1010" => sQ4<="0001000";
	WHEN "1011" => sQ4<="0000011";
	WHEN "1100" => sQ4<="1000110"; 
	WHEN "1101" => sQ4<="0100001"; 
	WHEN "1110" => sQ4<="0000110"; 
	WHEN "1111" => sQ4<="0001110"; 
END CASE;

CASE Q_hex1 IS
	WHEN "0000" => sQ5<="1000000";
	WHEN "0001" => sQ5<="1111001";
	WHEN "0010" => sQ5<="0100100";
	WHEN "0011" => sQ5<="0110000";
	WHEN "0100" => sQ5<="0011001";
	WHEN "0101" => sQ5<="0010010";
	WHEN "0110" => sQ5<="0000010";
	WHEN "0111" => sQ5<="1111000";
	WHEN "1000" => sQ5<="0000000";
	WHEN "1001" => sQ5<="0010000";
	WHEN "1010" => sQ5<="0001000";
	WHEN "1011" => sQ5<="0000011";
	WHEN "1100" => sQ5<="1000110";
	WHEN "1101" => sQ5<="0100001";
	WHEN "1110" => sQ5<="0000110";
	WHEN "1111" => sQ5<="0001110";
END CASE;

CASE Q_hex2 IS
	WHEN "0000" => sQ6<="1000000";
	WHEN "0001" => sQ6<="1111001";
	WHEN "0010" => sQ6<="0100100";
	WHEN "0011" => sQ6<="0110000";
	WHEN "0100" => sQ6<="0011001";
	WHEN "0101" => sQ6<="0010010";
	WHEN "0110" => sQ6<="0000010";
	WHEN "0111" => sQ6<="1111000";
	WHEN "1000" => sQ6<="0000000";
	WHEN "1001" => sQ6<="0010000";
	WHEN "1010" => sQ6<="0001000";
	WHEN "1011" => sQ6<="0000011";
	WHEN "1100" => sQ6<="1000110";
	WHEN "1101" => sQ6<="0100001";
	WHEN "1110" => sQ6<="0000110";
	WHEN "1111" => sQ6<="0001110";
END CASE;

CASE Q_hex3 IS
	WHEN "0000" => sQ7<="1000000";
	WHEN "0001" => sQ7<="1111001";
	WHEN "0010" => sQ7<="0100100";
	WHEN "0011" => sQ7<="0110000";
	WHEN "0100" => sQ7<="0011001";
	WHEN "0101" => sQ7<="0010010";
	WHEN "0110" => sQ7<="0000010";
	WHEN "0111" => sQ7<="1111000";
	WHEN "1000" => sQ7<="0000000";
	WHEN "1001" => sQ7<="0010000";
	WHEN "1010" => sQ7<="0001000";
	WHEN "1011" => sQ7<="0000011";
	WHEN "1100" => sQ7<="1000110";
	WHEN "1101" => sQ7<="0100001";
	WHEN "1110" => sQ7<="0000110";
	WHEN "1111" => sQ7<="0001110";
END CASE;
if(data_select='1') THEN
	y0<=sQ4;
	y1<=sQ5;
	y2<=sQ6;
	y3<=sQ7;
ELSE
	y0<=sQ0;
	y1<=sQ1;
	y2<=sQ2;
	y3<=sQ3;
END IF;
end PROCESS comb;
END bhw;
