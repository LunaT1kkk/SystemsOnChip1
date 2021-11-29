library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Action_OR is
    port (
        in1 : in std_logic;
        in2 : in std_logic;
        out1 : out std_logic
    );
end Action_OR;

architecture lab1 of Action_OR is
begin
	out1 <= in1 or in2; 
end architecture;