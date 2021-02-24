LIBRARY ieee;
USE ieee.std_logic_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY or8to1 IS
	PORT (a:	IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			b:	OUT STD_LOGIC);
END or8to1;

ARCHITECTURE gateOr OF or8to1 IS

BEGIN
	b <= (((a(0) OR a(1)) OR (a(2) OR a(3))) OR ((a(4) OR a(5)) OR (a(6) OR a(7))));
END gateOr;