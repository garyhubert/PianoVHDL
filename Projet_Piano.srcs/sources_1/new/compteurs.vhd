----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.11.2017 10:19:31
-- Design Name: 
-- Module Name: Diviseur_f - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity compteurs is
    Port ( clk : in STD_LOGIC;
           raz : in STD_LOGIC;
           cdo1 : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           cdo2 : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           cre1 : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           cre2 : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           cmi : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           cfa1 : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           cfa2 : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           csol1 : out STD_LOGIC_VECTOR(17 DOWNTO 0);
           csol2 : out STD_LOGIC_VECTOR(17 DOWNTO 0);
           cla1 : out STD_LOGIC_VECTOR(17 DOWNTO 0);
           cla2 : out STD_LOGIC_VECTOR(17 DOWNTO 0);
           csi : out STD_LOGIC_VECTOR(17 DOWNTO 0)
           );
end compteurs;

architecture Behavioral of Diviseur_f is

signal s_cdo1 : unsigned(18 downto 0);
signal s_cdo2 : unsigned(18 downto 0);
signal s_cre1 : unsigned(18 downto 0);
signal s_cre2 : unsigned(18 downto 0);
signal s_cmi : unsigned(18 downto 0);
signal s_cfa1 : unsigned(18 downto 0);
signal s_cfa2 : unsigned(18 downto 0);
signal s_csol1 : unsigned(17 downto 0);
signal s_csol2 : unsigned(17 downto 0);
signal s_cla1 : unsigned(17 downto 0);
signal s_cla2 : unsigned(17 downto 0);
signal s_csi : unsigned(17 downto 0);

begin

    Process(clk)
    begin
    if rising_edge(clk) then
        if raz = '1' then
            s_cdo1 <= "0000000000000000000";
        else
            if s_cdo1 < 382263 then
                s_cdo1 <= s_cdo1 + 1;
            else
                s_cdo1 <= "0000000000000000000";
                
    
    
end Behavioral;
