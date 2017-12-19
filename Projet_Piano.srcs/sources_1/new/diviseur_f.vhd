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
           clk_do1 : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           clk_do2 : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           clk_re1 : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           clk_re2 : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           clk_mi : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           clk_fa1 : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           clk_fa2 : out STD_LOGIC_VECTOR(18 DOWNTO 0);
           clk_sol1 : out STD_LOGIC_VECTOR(17 DOWNTO 0);
           clk_sol2 : out STD_LOGIC_VECTOR(17 DOWNTO 0);
           clk_la1 : out STD_LOGIC_VECTOR(17 DOWNTO 0);
           clk_la2 : out STD_LOGIC_VECTOR(17 DOWNTO 0);
           clk_si : out STD_LOGIC_VECTOR(17 DOWNTO 0)
           );
end compteurs;

architecture Behavioral of Diviseur_f is

signal cdo1 : unsigned(18 downto 0);
signal cdo2 : unsigned(18 downto 0);
signal cre1 : unsigned(18 downto 0);
signal cre2 : unsigned(18 downto 0);
signal cmi : unsigned(18 downto 0);
signal cfa1 : unsigned(18 downto 0);
signal cfa2 : unsigned(18 downto 0);
signal csol1 : unsigned(17 downto 0);
signal csol2 : unsigned(17 downto 0);
signal cla1 : unsigned(17 downto 0);
signal cla2 : unsigned(17 downto 0);
signal csi : unsigned(17 downto 0);

signal s_clk_do1 : std_logic;
signal s_clk_do2 : std_logic;
signal s_ckl_re1 : std_logic;
signal s_clk_re2 : std_logic;
signal s_clk_mi : std_logic;
signal s_clk_fa1 : std_logic;
signal s_clk_fa2 : std_logic;
signal s_clk_sol1 : std_logic;
signal s_clk_sol2 : std_logic;
signal s_clk_la1 : std_logic;
signal s_clk_la2 : std_logic;
signal s_clk_si : std_logic;

begin

    Process(clk)
    begin
    if rising_edge(clk) then
        if raz = '1' then
            cdo1 <= "0000000000000000000";
        else
            if cdo1 < 382263 then
                cdo1 <= cdo1 + 1;
            else
                cdo1 <= "0000000000000000000";
                s_clk_do1 <= '1';
            end if;    
        end if;   
    end if;
    end process;
    
    Process(clk)
    begin
    if rising_edge(clk) then
        if raz = '1' then
            cdo1 <= "0000000000000000000";
        else
            if cdo2 < 360750 then
                cdo2 <= cdo2 + 1;
            else
                cdo2 <= "0000000000000000000";
                s_clk_do2 <= '1';
            end if;
        end if;           
    end if;
    end process;
        
    Process(clk)
    begin
    if rising_edge(clk) then
        if raz = '1' then
            cre1 <= "0000000000000000000";
        else
            if cdo1 < 340483 then
                cre1 <= cre1 + 1;
            else
                cre1 <= "0000000000000000000";
                s_clk_re1 <= '1';
            end if;   
        end if;
    end if;    
    end process; 
            
        
    Process(clk)
    begin
    if rising_edge(clk) then
        if raz = '1' then
            cre2 <= "0000000000000000000";
        else
            if cre2 < 321440 then
                cre2 <= cre2 + 1;
            else
                cdo1 <= "0000000000000000000";
                s_clk_re2 <= '1';
            end if;   
        end if;
    end if;   
    end process;        
            
    Process(clk)
    begin
    if rising_edge(clk) then 
        if raz = '1' then
            cmi <= "0000000000000000000";
        else
            if cmi < 303398 then
                cmi <= cmi + 1;
            else
                cmi <= "0000000000000000000";
                s_clk_mi <= '1';
            end if;    
        end if;   
    end if;
    end process;               
    end Behavioral;

    Process(clk)
    begin
    if rising_edge(clk) then
        if raz = '1' then 
            cfa1 <= "0000000000000000000"
        else
            if cfa1 < 286369 then
                cfa1 <= cfa1 + 1;
            else
                cfa1 <= "0000000000000000000"
                s_clk_fa1 <= '1';
            end if;
        end if;
    end if;
    end process;     


    Process(clk)
    begin
    if rising_edge(clk) then
        if raz = '1' then
            cfa2 <= "0000000000000000000"
        else
            if cfa2 < 270270 then
                cfa2 <= "0000000000000000000"
                s_clk_fa2 <= '1';
            end if;
        end if;
    end if;
    end process;