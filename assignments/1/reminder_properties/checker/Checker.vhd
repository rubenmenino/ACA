LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
LIBRARY or8to1;
USE or8to1.all;
LIBRARY xor2to1;
USE xor2to1.all;

ENTITY Checker IS
	PORT (arIn :     IN STD_LOGIC_VECTOR(23 DOWNTO 0);
		   checkError : OUT STD_LOGIC;
			errorOut0, errorOut1, errorOut2, errorOut3, errorOut4, errorOut5, errorOut6, errorOut7: OUT STD_LOGIC);
			
END Checker;

ARCHITECTURE BEHAVIORAL OF Checker IS


--SIGNAL

	-- otimizado --
	SIGNAL Out15_11, Out14_2, Out13_1, Out12_0, Out10_9, Out8_7, Out6_4, Out5_3:      	STD_LOGIC;

	SIGNAL Out15_11_12_0, Out14_2_6_4, Out13_1_5_3, Out10_9_8_7: 								STD_LOGIC;

	
	-- (7) --
	SIGNAL Out14_2_6_4_10_9_8_7, Out14_2_6_4_10_9_8_7_erro7:																				STD_LOGIC;
	
	
	-- (6) --
	SIGNAL Out13_1_5_3_10_9_8_7, Out13_1_5_3_10_9_8_7_erro6:																				STD_LOGIC;
	
	
	-- (5) --
	SIGNAL Out12_0_8_7, Out12_0_8_7_erro5, Out12_0_8_7_6_4_erro5, Out12_0_8_7_6_4_9_erro5, Out12_0_8_7_6_4_9_5_erro5:	STD_LOGIC;

	
	-- (4) --
	SIGNAL Out14_2_10_9, Out14_2_10_9_erro4, Out14_2_10_9_5_3_erro4:							STD_LOGIC;

	
	-- (3) --
	SIGNAL Out9_8, Out9_8_4, Out9_8_4_2, Out9_8_4_2_0, Out9_8_4_2_0_erro3:					STD_LOGIC;

	
	-- (2) --	
	SIGNAL Out3_1, Out10_9_3_1, Out10_9_3_1_erro2, Out10_9_3_1_15_11_12_0_erro2:			STD_LOGIC;

	
	-- (1) --
	SIGNAL Out15_7, Out15_7_0, Out15_7_0_erro1, Out6_4_0_15_7_erro1:							STD_LOGIC;

	
	-- (0) --
	SIGNAL Out15_12_11_0_10_9_8_7, Out15_12_11_0_10_9_8_7_erro0:								STD_LOGIC;


	SIGNAL a: STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL r: STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL y: STD_LOGIC_VECTOR(7 DOWNTO 0);
  
  
	COMPONENT xor2to1
		PORT (a, b:   IN STD_LOGIC;
		      y:      OUT STD_LOGIC); 
	END COMPONENT;
	
	COMPONENT or8to1
		PORT (a:	IN STD_LOGIC_VECTOR(7 DOWNTO 0);
				b:	OUT STD_LOGIC); 
	END COMPONENT;
	
BEGIN
	
	
	-- a + r  ->
	-- a 		(16 bit word)
	-- r 		(8 bit word)
	-- error (1 bit word)
	
	a <= arIn(23 DOWNTO 8);
	r <= arIn(7 DOWNTO 0);
	
	
-- JUNTAR XOR DE FORMA A OTIMIZAR
	
	xor15_11: xor2to1 PORT MAP (a(15), a(11), Out15_11);
	xor14_2:  xor2to1 PORT MAP (a(14), a(2),  Out14_2);
	xor13_1:  xor2to1 PORT MAP (a(13), a(1),  Out13_1);
	xor12_0:  xor2to1 PORT MAP (a(12), a(0), Out12_0);
	xor10_9:  xor2to1 PORT MAP (a(10), a(9),  Out10_9);
	xor8_7:   xor2to1 PORT MAP (a(8),  a(7),   Out8_7);
	xor6_4:   xor2to1 PORT MAP (a(6),  a(4),   Out6_4);
	xor5_3:   xor2to1 PORT MAP (a(5),  a(3),   Out5_3);
	
-- JUNTAR XOR COM XOR PARA MAIOR OTIMIZAÇÃO

	xor15_11_12_0 : xor2to1 PORT MAP (Out15_11, Out12_0, Out15_11_12_0);
	xor14_2_6_4:	 xor2to1 PORT MAP (Out14_2,  Out6_4,  Out14_2_6_4);
	xor13_1_5_3:	 xor2to1 PORT MAP (Out13_1,  Out5_3,  Out13_1_5_3);
	xor10_9_8_7:	 xor2to1 PORT MAP (Out10_9,  Out8_7,  Out10_9_8_7);
	

	
	-- SAIDA RESTO arOut

	-- arOut(7) --
	--xor14_2_6_4:						xor2to1 PORT MAP (Out14_2, Out6_4, Out14_2_6_4);
	--xor10_9_8_7:						xor2to1 PORT MAP (Out10_9, Out8_7, Out10_9_8_7);
	xor14_2_6_4_10_9_8_7:					xor2to1 PORT MAP (Out14_2_6_4, Out10_9_8_7, Out14_2_6_4_10_9_8_7);
	xor14_2_6_4_10_9_8_7_erro7:			xor2to1 PORT MAP (Out14_2_6_4_10_9_8_7, r(7), Out14_2_6_4_10_9_8_7_erro7);
	xor14_11_10_9_8_7_6_4_2_erro7:      xor2to1 PORT MAP (Out14_2_6_4_10_9_8_7_erro7, a(11), y(7));
	
	
	-- arOut(6) --
	--xor13_1_5_3:								xor2to1 PORT MAP (Out13_1, Out5_3, Out13_1_5_3);
	--xor10_9_8_7:								xor2to1 PORT MAP (Out10_9, Out8_7, Out10_9_8_7);
	xor13_1_5_3_10_9_8_7:					xor2to1 PORT MAP (Out13_1_5_3, Out10_9_8_7, Out13_1_5_3_10_9_8_7);
	xor13_1_5_3_10_9_8_7_erro6:			xor2to1 PORT MAP (Out13_1_5_3_10_9_8_7, r(6), Out13_1_5_3_10_9_8_7_erro6);
	xor13_10_9_8_7_6_5_3_1_erro6:       xor2to1 PORT MAP (Out13_1_5_3_10_9_8_7_erro6, a(6), y(6));
	
	-- arOut(5) --
	xor12_0_8_7:								xor2to1 PORT MAP (Out12_0, Out8_7, Out12_0_8_7);
	xor12_0_8_7_erro5:						xor2to1 PORT MAP (Out12_0_8_7, r(5), Out12_0_8_7_erro5);
	xor12_0_8_7_6_4_erro5:					xor2to1 PORT MAP (Out12_0_8_7_erro5, Out6_4, Out12_0_8_7_6_4_erro5);
	xor12_0_8_7_6_4_9_erro5:				xor2to1 PORT MAP (Out12_0_8_7_6_4_erro5, a(9), Out12_0_8_7_6_4_9_erro5);
	xor12_0_8_7_6_4_9_5_erro5:				xor2to1 PORT MAP (Out12_0_8_7_6_4_9_erro5, a(5), Out12_0_8_7_6_4_9_5_erro5);
	xor12_9_8_7_6_5_4_2_0_erro5:        xor2to1 PORT MAP (Out12_0_8_7_6_4_9_5_erro5, a(2), y(5));
	
	-- arOut(4) --
	xor14_2_10_9:								xor2to1 PORT MAP (Out14_2, Out10_9, Out14_2_10_9);
	xor14_2_10_9_erro4:						xor2to1 PORT MAP (Out14_2_10_9, r(4), Out14_2_10_9_erro4);
	xor14_2_10_9_5_3_erro4:					xor2to1 PORT MAP (Out14_2_10_9_erro4, Out5_3, Out14_2_10_9_5_3_erro4);
	xor14_10_9_5_3_2_1_erro4:		      xor2to1 PORT MAP (Out14_2_10_9_5_3_erro4, a(1), y(4));
	
	-- arOut(3) --
	xor9_8:										xor2to1 PORT MAP (a(9), a(8), Out9_8);
	xor9_8_4:									xor2to1 PORT MAP (Out9_8, a(4), Out9_8_4);
	xor9_8_4_2:									xor2to1 PORT MAP (Out9_8_4, a(2), Out9_8_4_2);
	xor9_8_4_2_0:								xor2to1 PORT MAP (Out9_8_4_2, a(0), Out9_8_4_2_0);
	xor9_8_4_2_0_erro3:						xor2to1 PORT MAP (Out9_8_4_2_0, r(3), Out9_8_4_2_0_erro3);
	xor13_9_8_4_2_1_0_erro3:  		      xor2to1 PORT MAP (Out9_8_4_2_0_erro3, Out13_1, y(3));
	
	-- arOut(2) --
	xor3_1:										xor2to1 PORT MAP (a(3), a(1), Out3_1);
	xor10_9_3_1:								xor2to1 PORT MAP (Out10_9, Out3_1, Out10_9_3_1);
	xor10_9_3_1_erro2:						xor2to1 PORT MAP (Out10_9_3_1, r(2), Out10_9_3_1_erro2);
	xor10_9_3_1_15_11_12_0_erro2:			xor2to1 PORT MAP (Out10_9_3_1_erro2, Out15_11_12_0, Out10_9_3_1_15_11_12_0_erro2);
	xor15_14_11_10_9_6_4_3_2_1_0_erro2: xor2to1 PORT MAP (Out10_9_3_1_15_11_12_0_erro2, Out14_2_6_4, y(2));
	
	-- arOut(1) --
	xor15_7:										xor2to1 PORT MAP (a(15), a(7), Out15_7);
	xor15_7_0:									xor2to1 PORT MAP (Out15_7, a(0), Out15_7_0);
	xor15_7_0_erro1:							xor2to1 PORT MAP (Out15_7_0, r(1), Out15_7_0_erro1);
	xor6_4_0_15_7_erro1:						xor2to1 PORT MAP (Out15_7_0_erro1, Out6_4, Out6_4_0_15_7_erro1);
	xor15_13_7_6_5_4_3_1_0_erro1: 		xor2to1 PORT MAP (Out6_4_0_15_7_erro1, Out13_1_5_3, y(1));
	
	-- arOut(0) --
	--xor12_0:										xor2to1 PORT MAP (aIn(12), aIn(0), Out12_0);
	xor15_12_11_0_10_9_8_7:						xor2to1 PORT MAP (Out15_11_12_0, Out10_9_8_7, Out15_12_11_0_10_9_8_7);
	xor15_12_11_0_10_9_8_7_erro0:				xor2to1 PORT MAP (Out15_12_11_0_10_9_8_7, r(0), Out15_12_11_0_10_9_8_7_erro0);
	xor15_12_11_10_9_8_7_5_3_0_erro0:		xor2to1 PORT MAP (Out15_12_11_0_10_9_8_7_erro0, Out5_3, y(0));
	
	
	errorOut7 <= y(7);
	errorOut6 <= y(6);
	errorOut5 <= y(5);
	errorOut4 <= y(4);
	errorOut3 <= y(3);
	errorOut2 <= y(2);
	errorOut1 <= y(1);
	errorOut0 <= y(0);
	

	or8to1_y: or8to1 PORT MAP (y,checkError);
	
 
 END BEHAVIORAL;
	
	
	
	
	
	