library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

entity keyboard_decoder2 is
port (Q_decod0: in std_logic_vector(7 downto 0);
		Q_decod1: in std_logic_vector(7 downto 0);
		Q_decod2: in std_logic_vector(7 downto 0);
		Q_decod3: in std_logic_vector(7 downto 0);
		y_decod0: out std_logic_vector(3 downto 0);
		y_decod1: out std_logic_vector(3 downto 0);
		y_decod2: out std_logic_vector(3 downto 0);
		y_decod3: out std_logic_vector(3 downto 0));
end keyboard_decoder2;
architecture data_flow of keyboard_decoder2 is
begin
decoder: process(Q_decod0,Q_decod1,Q_decod2,Q_decod3)
begin
y_decod0<="0000";
y_decod1<="0000";
y_decod2<="0000";
y_decod3<="0000";
IF (Q_decod0="01111110") THEN
	y_decod0<="0001"; --1
	ELSE IF (Q_decod0="01111101") THEN 
		y_decod0<="0100"; --4
		ELSE IF (Q_decod0="01111011") THEN
			y_decod0<="0111"; --7
			ELSE IF (Q_decod0="10111110") THEN 
				y_decod0<="0010"; --2
				ELSE IF(Q_decod0="10111101") THEN
					y_decod0<="0101"; --5
					ELSE IF(Q_decod0="10111011") THEN
						y_decod0<="1000"; --8
						ELSE IF(Q_decod0="10110111") THEN
							y_decod0<="0000"; --0
							ELSE IF(Q_decod0="11011110") THEN
								y_decod0<="0011"; --3
								ELSE IF(Q_decod0="11011101") THEN
									y_decod0<="0110"; --6
									ELSE IF(Q_decod0="11011011") THEN
										y_decod0<="1001"; --9
									END IF;
								END IF;
							END IF;
						END IF;
					END IF;
				END IF;
			END IF;
		END IF;
	END IF;
END IF;
---------------------------------------------------
IF (Q_decod1="01111110") THEN
	y_decod1<="0001"; --1
	ELSE IF (Q_decod1="01111101") THEN 
		y_decod1<="0100"; --4
		ELSE IF (Q_decod1="01111011") THEN
			y_decod1<="0111"; --7
			ELSE IF (Q_decod1="10111110") THEN 
				y_decod1<="0010"; --2
				ELSE IF(Q_decod1="10111101") THEN
					y_decod1<="0101"; --5
					ELSE IF(Q_decod1="10111011") THEN
						y_decod1<="1000"; --8
						ELSE IF(Q_decod1="10110111") THEN
							y_decod1<="0000"; --0
							ELSE IF(Q_decod1="11011110") THEN
								y_decod1<="0011"; --3
								ELSE IF(Q_decod1="11011101") THEN
									y_decod1<="0110"; --6
									ELSE IF(Q_decod1="11011011") THEN
										y_decod1<="1001"; --9
									END IF;
								END IF;
							END IF;
						END IF;
					END IF;
				END IF;
			END IF;
		END IF;
	END IF;
END IF;
---------------------------------------------------
IF (Q_decod2="01111110") THEN
	y_decod2<="0001"; --1
	ELSE IF (Q_decod2="01111101") THEN 
		y_decod2<="0100"; --4
		ELSE IF (Q_decod2="01111011") THEN
			y_decod2<="0111"; --7
			ELSE IF (Q_decod2="10111110") THEN 
				y_decod2<="0010"; --2
				ELSE IF(Q_decod2="10111101") THEN
					y_decod2<="0101"; --5
					ELSE IF(Q_decod2="10111011") THEN
						y_decod2<="1000"; --8
						ELSE IF(Q_decod2="10110111") THEN
							y_decod2<="0000"; --0
							ELSE IF(Q_decod2="11011110") THEN
								y_decod2<="0011"; --3
								ELSE IF(Q_decod2="11011101") THEN
									y_decod2<="0110"; --6
									ELSE IF(Q_decod1="11011011") THEN
										y_decod2<="1001"; --9
									END IF;
								END IF;
							END IF;
						END IF;
					END IF;
				END IF;
			END IF;
		END IF;
	END IF;
END IF;
---------------------------------------------------
IF (Q_decod3="01111110") THEN
	y_decod3<="0001"; --1
	ELSE IF (Q_decod3="01111101") THEN 
		y_decod3<="0100"; --4
		ELSE IF (Q_decod3="01111011") THEN
			y_decod3<="0111"; --7
			ELSE IF (Q_decod3="10111110") THEN 
				y_decod3<="0010"; --2
				ELSE IF(Q_decod3="10111101") THEN
					y_decod3<="0101"; --5
					ELSE IF(Q_decod3="10111011") THEN
						y_decod3<="1000"; --8
						ELSE IF(Q_decod3="10110111") THEN
							y_decod3<="0000"; --0
							ELSE IF(Q_decod3="11011110") THEN
								y_decod3<="0011"; --3
								ELSE IF(Q_decod3="11011101") THEN
									y_decod3<="0110"; --6
									ELSE IF(Q_decod1="11011011") THEN
										y_decod3<="1001"; --9
									END IF;
								END IF;
							END IF;
						END IF;
					END IF;
				END IF;
			END IF;
		END IF;
	END IF;
END IF;
end process decoder;
end data_flow;