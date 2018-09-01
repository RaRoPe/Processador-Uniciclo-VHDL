library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.mips_pkg.all;

entity breg_ula is
	port (
	  d_in			: in std_logic_vector(31 downto 0);
	  we, clk		: in std_logic;
	  rs, rt, rd	: in std_logic_vector(4 downto 0);
	  func			: in std_logic_vector(5 downto 0);
	  opUla			: in std_logic_vector(1 downto 0);

	  zero			: out std_logic;
	  d_out			: out std_logic_vector(31 downto 0)
	);

end breg_ula;

architecture rtl of breg_ula is

signal r1, r2		: std_logic_vector(31 downto 0);
signal ctrula		: std_logic_vector(3 downto 0);

begin
--Colocar os sinais internos

ula: entity work.ula port map (
	  ulop 		=> ctrula,
	  A 			=> r1,
	  B			=> r2,
	  aluout		=> d_out,
	  zero		=> zero
	);
	
breg: entity work.breg port map(
	  clk			=> clk,
	  we			=> we,
	  rs			=> rs,
	  rt			=> rt,
	  rd			=> rd,
	  d_in		=> d_in,
	  regA		=> r1,
	  regB		=> r2
	);
	
c_ula: entity work.c_ula port map(
	  func		=> func,
	  opUla		=> opUla,
	  ctrula		=> ctrula
	  );
end rtl;
