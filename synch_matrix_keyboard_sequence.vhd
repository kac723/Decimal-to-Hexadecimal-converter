library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

ENTITY synch_matrix_keyboard_sequence IS
PORT (
	clk : IN std_ulogic;
	CE : IN std_ulogic;
	EN : IN std_ulogic;
	y_seq : buffer std_ulogic_vector(3 downto 0) := "0111"
);
END synch_matrix_keyboard_sequence;

ARCHITECTURE bhw of synch_matrix_keyboard_sequence IS
BEGIN
process(clk)
begin
	if clk'event and clk = '1' then
		if (EN='1') THEN
			if CE = '1' then
				case y_seq is
					when "0111" => y_seq <= "1011";
					when "1011" => y_seq <= "1101";
					when "1101" => y_seq <= "1110";
					when "1110" => y_seq <= "0111";
					when others => y_seq <= "0111";
				end case;
			end if;
		END IF;
	end if;
end process;
END bhw;
