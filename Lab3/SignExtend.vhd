----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:48:59 10/26/2014 
-- Design Name: 
-- Module Name:    SignExtend - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SignExtend is
    Port ( signExtendInput : in  STD_LOGIC_VECTOR (15 downto 0);
           signExtendOutput : out  STD_LOGIC_VECTOR (31 downto 0);
           Enable : in  STD_LOGIC);
end SignExtend;

architecture Behavioral of SignExtend is

begin

process (Enable, signExtendInput)
begin

if (Enable = 1) then
	--For MSB
	signExtendOutput(31 downto 15) = (others => signExtendInput(15))
	--For Inputs
	signExtendOutput (15 downto 0) = signExtendInput (15 downto 0)

else
	--return 0s if not enabled
	signExtendOutput(31 downto 0) = (others => '0')
	
end if


end Behavioral;

