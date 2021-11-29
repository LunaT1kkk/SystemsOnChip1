library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Action_NOT is
    port (
        in1 : in std_logic;
        out1: out std_logic
    );
end Action_NOT;

architecture lab1 of Action_NOT is
begin
    out1 <= not in1;
end architecture;