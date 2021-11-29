library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity main_behavior is
    port (
        a : in std_logic;
        b : in std_logic;
        c : in std_logic;
        d : in std_logic;
        y : out std_logic
    );
end main_behavior;

architecture lab1 of main_behavior is
    begin
        y <= (not ((a and b) and c)) or d;
    end lab1;
-- end architecture;