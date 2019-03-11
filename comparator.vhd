library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

ENTITY comparator IS
PORT(Q_comp :in std_ulogic_vector(7 DOWNTO 0);
		converter_enable: out std_logic);
END comparator;

ARCHITECTURE beh OF comparator IS
BEGIN
PROCESS(Q_comp)
BEGIN
IF (Q_comp="01111110" OR Q_comp="01111101" OR Q_comp="01111011" OR Q_comp="10111110" OR Q_comp="10111101" OR Q_comp="10111011" OR Q_comp="10110111" OR Q_comp="11011110" OR Q_comp="11011101" OR Q_comp="11011011") THEN
	converter_enable<='0';
	ELSE IF(Q_comp="11101011") THEN
				converter_enable<='1';
			ELSE
				converter_enable<='-';
			END IF;
	END IF;	
END PROCESS;
END beh;


--library IEEE;
--use ieee.std_logic_1164.all;
--use ieee.numeric_std.all;
--use ieee.std_logic_signed.all;
--
--ENTITY comparator IS
--PORT(Q_comp :in std_ulogic_vector(7 DOWNTO 0);
--		converter_enable: out std_logic);
--END comparator;
--
--ARCHITECTURE beh OF comparator IS
--BEGIN
--PROCESS(Q_comp)
--BEGIN
--IF (Q_comp="01111110") THEN
--	converter_enable<='0'; --1
--	ELSE IF (Q_comp="01111101") THEN 
--		converter_enable<='0'; --1
--		ELSE IF (Q_comp="01111011") THEN
--			converter_enable<='0'; --1
--			ELSE IF (Q_comp="10111110") THEN 
--				converter_enable<='0'; --1
--				ELSE IF(Q_comp="10111101") THEN
--					converter_enable<='0'; --1
--					ELSE IF(Q_comp="10111011") THEN
--						converter_enable<='0'; --1
--						ELSE IF(Q_comp="10110111") THEN
--							converter_enable<='0'; --1
--							ELSE IF(Q_comp="11011110") THEN
--								converter_enable<='0'; --1
--								ELSE IF(Q_comp="11011101") THEN
--									converter_enable<='0'; --1
--									ELSE IF(Q_comp="11011011") THEN
--										converter_enable<='0'; --1
--										ELSE IF(Q_comp="11101011") THEN
--											converter_enable<='1';
--											ELSE
--												converter_enable<='-';
--										END IF;
--									END IF;
--								END IF;
--							END IF;
--						END IF;
--					END IF;
--				END IF;
--			END IF;
--		END IF;
--	END IF;
--END IF;	
--END PROCESS;
--END beh;