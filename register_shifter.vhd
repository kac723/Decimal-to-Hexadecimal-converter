library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_signed.all;

ENTITY register_shifter IS
PORT(Q_in :in std_ulogic_vector(7 DOWNTO 0);
		clk : in std_ulogic;
		y_shift0 : out std_ulogic_vector(7 DOWNTO 0);
		y_shift1 : out std_ulogic_vector(7 DOWNTO 0);
		y_shift2 : out std_ulogic_vector(7 DOWNTO 0);
		y_shift3 : out std_ulogic_vector(7 DOWNTO 0));
END register_shifter;

ARCHITECTURE seq OF register_shifter IS
TYPE Q_arr IS ARRAY (0 TO 3) OF std_ulogic_vector(7 DOWNTO 0);
SHARED VARIABLE Q_tab : Q_arr;
BEGIN
PROCESS(clk)
BEGIN
IF (falling_edge(clk)) THEN
	IF(Q_in/="11101011") THEN
		FOR i IN 3 DOWNTO 1 LOOP
			Q_tab(i):=Q_tab(i-1);
		END LOOP;
		Q_tab(0):=Q_in;
	END IF;
END IF;
END PROCESS;
y_shift0<=(Q_tab(0));
y_shift1<=(Q_tab(1));
y_shift2<=(Q_tab(2));
y_shift3<=(Q_tab(3));
END seq;