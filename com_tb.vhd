---
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY com_tb IS
END com_tb;
 
ARCHITECTURE behavior OF com_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT com
    PORT(
         a : IN  std_logic_vector(3 downto 0);
         b : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal b : std_logic_vector(3 downto 0);
constant clk_period: time:=100 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: com PORT MAP (
          a => a,
          b => b
        );

   stim_proc: process
   begin		
      	
		a(0)<='0';
		a(1)<='1';
		a(2)<='0';
		a(3)<='0';
		 wait for clk_period*2 ;	
		end process;

END;
