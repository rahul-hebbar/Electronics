library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity HDL_Sys_Gen is
	port(m,c : in std_logic_vector(2 downto 0):="000";
		y : out std_logic_vector(6 downto 0):="0000000"; 
		m_clk : in std_logic:='0'
	);
end HDL_Sys_Gen;

architecture Exa of HDL_Sys_Gen is
begin
	process(m,c,m_clk)
		variable x: std_logic_vector(3 downto 0):="0000";
	begin
		if rising_edge(m_clk) then
			x:=x+1;
			y <=(m*x)+ c;
		end if;
	end process;
end Exa;