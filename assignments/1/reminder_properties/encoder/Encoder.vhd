LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY Encoder IS
	PORT (aIn :   IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		   arOut : OUT STD_LOGIC_VECTOR(23 DOWNTO 0));
END Encoder	;	

ARCHITECTURE BEHAVIORAL OF Encoder IS
	
-- SIGNAL 

	-- otimizado --
	SIGNAL Out15_11, Out14_2, Out13_1, Out12_0, Out10_9, Out8_7, Out6_4, Out5_3:      		STD_LOGIC;

	SIGNAL Out15_11_12_0, Out14_2_6_4, Out13_1_5_3, Out10_9_8_7: 									STD_LOGIC;


	-- (7) --
	SIGNAL Out14_2_6_4_10_9_8_7:																				STD_LOGIC;
	
	-- (6) --
	SIGNAL Out13_1_5_3_10_9_8_7:																				STD_LOGIC;
	
	-- (5) --
	SIGNAL Out12_0_8_7, Out12_0_8_7_6_4, Out12_0_8_7_6_4_9, Out12_0_8_7_6_4_9_5:				STD_LOGIC;
	
	-- (4) --
	SIGNAL Out14_2_10_9, Out14_2_10_9_5_3:																	STD_LOGIC;
	
	-- (3) --
	SIGNAL Out9_8, Out9_8_4, Out9_8_4_2, Out9_8_4_2_0:													STD_LOGIC;
	
	-- (2) --	
	SIGNAL Out3_1, Out10_9_3_1, Out10_9_3_1_15_11_12_0:												STD_LOGIC;

	-- (1) --
	SIGNAL Out15_7, Out15_7_0, Out6_4_0_15_7:																STD_LOGIC;
	
	-- (0) --
	SIGNAL Out15_11_12_0_10_9_8_7: STD_LOGIC;
	

	COMPONENT xor2to1
		PORT (a, b:   IN STD_LOGIC;
		      y:      OUT STD_LOGIC); 
	END COMPONENT;



BEGIN
-- JUNTAR XOR DE FORMA A OTIMIZAR

	
	arOut(23) <= aIn(15);
	arOut(22) <= aIn(14);
	arOut(21) <= aIn(13);
	arOut(20) <= aIn(12);
	arOut(19) <= aIn(11);
	arOut(18) <= aIn(10);
	arOut(17) <= aIn(9);
	arOut(16) <= aIn(8);
	arOut(15) <= aIn(7);
	arOut(14) <= aIn(6);
	arOut(13) <= aIn(5);
	arOut(12) <= aIn(4);
	arOut(11) <= aIn(3);
	arOut(10) <= aIn(2);
	arOut(9) <= aIn(1);
	arOut(8) <= aIn(0);
	
	
	xor15_11: xor2to1 PORT MAP (aIn(15), aIn(11), Out15_11);
	xor14_2:  xor2to1 PORT MAP (aIn(14), aIn(2),  Out14_2);
	xor13_1:  xor2to1 PORT MAP (aIn(13), aIn(1),  Out13_1);
	xor12_0:  xor2to1 PORT MAP (aIn(12), aIn(0), Out12_0);
	xor10_9:  xor2to1 PORT MAP (aIn(10), aIn(9),  Out10_9);
	xor8_7:   xor2to1 PORT MAP (aIn(8),  aIn(7),   Out8_7);
	xor6_4:   xor2to1 PORT MAP (aIn(6),  aIn(4),   Out6_4);
	xor5_3:   xor2to1 PORT MAP (aIn(5),  aIn(3),   Out5_3);
	
-- JUNTAR XOR COM XOR PARA MAIOR OTIMIZAÇÃO

	xor15_11_12_0 : xor2to1 PORT MAP (Out15_11, Out12_0, Out15_11_12_0);
	xor14_2_6_4:	 xor2to1 PORT MAP (Out14_2,  Out6_4,  Out14_2_6_4);
	xor13_1_5_3:	 xor2to1 PORT MAP (Out13_1,  Out5_3,  Out13_1_5_3);
	xor10_9_8_7:	 xor2to1 PORT MAP (Out10_9,  Out8_7,  Out10_9_8_7);
	

-- SAIDA RESTO arOut

	-- arOut(7) --
	--xor14_2_6_4:							xor2to1 PORT MAP (Out14_2, Out6_4, Out14_2_6_4);
	--xor10_9_8_7:							xor2to1 PORT MAP (Out10_9, Out8_7, Out10_9_8_7);
	xor14_2_6_4_10_9_8_7:				xor2to1 PORT MAP (Out14_2_6_4, Out10_9_8_7, Out14_2_6_4_10_9_8_7);
	xor14_11_10_9_8_7_6_4_2:      	xor2to1 PORT MAP (Out14_2_6_4_10_9_8_7, aIn(11), arOut(7));
	
	-- arOut(6) --
	--xor13_1_5_3:							xor2to1 PORT MAP (Out13_1, Out5_3, Out13_1_5_3);
	--xor10_9_8_7:							xor2to1 PORT MAP (Out10_9, Out8_7, Out10_9_8_7);
	xor13_1_5_3_10_9_8_7:				xor2to1 PORT MAP (Out13_1_5_3, Out10_9_8_7, Out13_1_5_3_10_9_8_7);
	xor13_10_9_8_7_6_5_3_1:       	xor2to1 PORT MAP (Out13_1_5_3_10_9_8_7, aIn(6), arOut(6));
	
	-- arOut(5) --
	xor12_0_8_7:							xor2to1 PORT MAP (Out12_0, Out8_7, Out12_0_8_7);
	xor12_0_8_7_6_4:						xor2to1 PORT MAP (Out12_0_8_7, Out6_4, Out12_0_8_7_6_4);
	xor12_0_8_7_6_4_9:					xor2to1 PORT MAP (Out12_0_8_7_6_4, aIn(9), Out12_0_8_7_6_4_9);
	xor12_0_8_7_6_4_9_5:					xor2to1 PORT MAP (Out12_0_8_7_6_4_9, aIn(5), Out12_0_8_7_6_4_9_5);
	xor12_9_8_7_6_5_4_2_0:        	xor2to1 PORT MAP (Out12_0_8_7_6_4_9_5, aIn(2), arOut(5));
	
	-- arOut(4) --
	xor14_2_10_9:							xor2to1 PORT MAP (Out14_2, Out10_9, Out14_2_10_9);
	xor14_2_10_9_5_3:						xor2to1 PORT MAP (Out14_2_10_9, Out5_3, Out14_2_10_9_5_3);
	xor14_10_9_5_3_2_1:		      	xor2to1 PORT MAP (Out14_2_10_9_5_3, aIn(1), arOut(4));
	
	-- arOut(3) --
	xor9_8:									xor2to1 PORT MAP (aIn(9), aIn(8), Out9_8);
	xor9_8_4:								xor2to1 PORT MAP (Out9_8, aIn(4), Out9_8_4);
	xor9_8_4_2:								xor2to1 PORT MAP (Out9_8_4, aIn(2), Out9_8_4_2);
	xor9_8_4_2_0:							xor2to1 PORT MAP (Out9_8_4_2, aIn(0), Out9_8_4_2_0);
	xor13_9_8_4_2_1_0:  		     	 	xor2to1 PORT MAP (Out9_8_4_2_0, Out13_1, arOut(3));
	
	-- arOut(2) --
	
	xor3_1:									xor2to1 PORT MAP (aIn(3), aIn(1), Out3_1);
	xor10_9_3_1:							xor2to1 PORT MAP (Out10_9, Out3_1, Out10_9_3_1);
	xor10_9_3_1_15_11_12_0:				xor2to1 PORT MAP (Out10_9_3_1, Out15_11_12_0, Out10_9_3_1_15_11_12_0);
	xor15_14_12_11_10_9_6_4_3_2_1_0:	xor2to1 PORT MAP (Out10_9_3_1_15_11_12_0, Out14_2_6_4, arOut(2));
	
	
	-- arOut(1) --
	xor15_7:									xor2to1 PORT MAP (aIn(15), aIn(7), Out15_7);
	XOR15_7_0:								XOR2TO1 PORT MAP (Out15_7, aIn(0), Out15_7_0);
	xor6_4_0_15_7:							xor2to1 PORT MAP (Out15_7_0, Out6_4, Out6_4_0_15_7);
	xor15_13_7_6_5_4_3_1_0: 			xor2to1 PORT MAP (Out6_4_0_15_7, Out13_1_5_3, arOut(1));
	
	-- arOut(0) --
	--xor12_0:								xor2to1 PORT MAP (aIn(12), aIn(0), Out12_0);
	xor15_11_12_0_10_9_8_7:				xor2to1 PORT MAP (Out15_11_12_0, Out10_9_8_7, Out15_11_12_0_10_9_8_7);
	xor15_12_11_10_9_8_7_5_3_0:		xor2to1 PORT MAP (Out15_11_12_0_10_9_8_7, Out5_3, arOut(0));
	
END BEHAVIORAL;
	