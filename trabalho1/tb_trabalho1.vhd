--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:19:24 10/08/2017
-- Design Name:   
-- Module Name:   C:/cassio/VHDL/trabalho1/tb_trabalho1.vhd
-- Project Name:  trabalho1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: trabalho1
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_trabalho1 IS
END tb_trabalho1;
 
ARCHITECTURE behavior OF tb_trabalho1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT trabalho1
    PORT(
         button_cnt1 : IN  std_logic;
         button_cnt2 : IN  std_logic;
         up_down_c1 : IN  std_logic;
         up_down_c2 : IN  std_logic;
         mclk : IN  std_logic;
         rst : IN  std_logic;
         an : OUT  std_logic_vector(3 downto 0);
         led_left : OUT  std_logic_vector(3 downto 0);
         led_rigth : OUT  std_logic_vector(3 downto 0);
         sel : IN  std_logic;
         seg : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal button_cnt1 : std_logic := '0';
   signal button_cnt2 : std_logic := '0';
   signal up_down_c1 : std_logic := '0';
   signal up_down_c2 : std_logic := '0';
   signal mclk : std_logic := '0';
   signal rst : std_logic := '0';
   signal sel : std_logic := '0';

 	--Outputs
   signal an : std_logic_vector(3 downto 0);
   signal led_left : std_logic_vector(3 downto 0);
   signal led_rigth : std_logic_vector(3 downto 0);
   signal seg : std_logic_vector(6 downto 0);

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: trabalho1 PORT MAP (
          button_cnt1 => button_cnt1,
          button_cnt2 => button_cnt2,
          up_down_c1 => up_down_c1,
          up_down_c2 => up_down_c2,
          mclk => mclk,
          rst => rst,
          an => an,
          led_left => led_left,
          led_rigth => led_rigth,
          sel => sel,
          seg => seg
        );

mclk <= not mclk after 10ns;

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		
      -- insert stimulus here
		
		rst <= '1';
		wait for 10 ns;
		rst <= '0';
		wait for 10 ns;
		
		up_down_c1 <= '1';	-- C1 incrementa
		wait for 10 ns;
		
		up_down_c2 <= '1';	-- C2 incrementa
		wait for 10 ns;
		
		--sel <= '0'; -- saida_sel = somador				
	
--		button_cnt1 <= '1';
--		wait for 101 ns;
--		button_cnt1 <= '0';
	
	
--	for i in 0 to 15 loop 
--		for i in 0 to 15 loop 
--			button_cnt1 <= '1';
--			wait for 20ns;
--			button_cnt1 <= '0';
--		end loop;
--			wait for 20ns;
--			button_cnt2 <= '1';
--			wait for 20ns;
--			button_cnt2 <= '0';
--
--	end loop;
	
	
	sel <= '1'; -- saida_sel = somador	
	
	for i in 0 to 15 loop 
		for i in 0 to 15 loop 
			button_cnt1 <= '1';
			wait for 20ns;
			button_cnt1 <= '0';
		end loop;
			--wait for 20ns;
			button_cnt2 <= '1';
			wait for 20ns;
			button_cnt2 <= '0';
	end loop;
	
      wait;
   end process;

END;
