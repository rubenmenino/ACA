LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY xor2to1 IS
	PORT (a, b: IN STD_LOGIC;
		   y:    OUT STD_LOGIC);
	
END xor2to1;

ARCHITECTURE xorgate OF xor2to1 IS
BEGIN
	y <= (a AND (NOT b)) OR (b AND (NOT a));
END xorgate;

