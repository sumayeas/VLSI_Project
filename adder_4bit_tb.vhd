--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:11:37 09/27/2026
-- Design Name:   
-- Module Name:   /home/ise/Desktop/Full_Adder/adder_4bit_tb.vhd
-- Project Name:  Full_Adder
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: adder_4bit
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
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY adder_4bit_tb IS
END adder_4bit_tb;
 
ARCHITECTURE behavior OF adder_4bit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT adder_4bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         CIN : IN  std_logic;
         SUM : OUT  std_logic_vector(3 downto 0);
         COUT : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal CIN : std_logic := '0';

 	--Outputs
   signal SUM : std_logic_vector(3 downto 0);
   signal COUT : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: adder_4bit PORT MAP (
          A => A,
          B => B,
          CIN => CIN,
          SUM => SUM,
          COUT => COUT
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
