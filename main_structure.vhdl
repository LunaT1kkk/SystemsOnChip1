library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity main_structure is
    port (
        a1 : in std_logic;
        b1 : in std_logic;
        c1 : in std_logic;
        d1 : in std_logic;
        y1 : out std_logic
    );
end main_structure;

architecture lab1 of main_structure is
    
    component Action_OR
        port (
            in1 : in std_logic;
            in2 : in std_logic;
            out1 : out std_logic
        );
    end component;

    component Action_AND
	    port (
		    in1: in std_logic;
		    in2: in std_logic;
		    out1: out std_logic
	    );
    end component;

    component Action_NOT is
        port (
            in1 : in std_logic;
            out1 : out std_logic
        );
    end component;

    signal tmp1:std_logic;
    signal tmp2:std_logic;
    signal tmp3:std_logic;
    signal tmp4:std_logic;
    
    begin
        AB: Action_AND 
        port map(
            in1 => a1,
            in2 => b1,
            out1 => tmp1
        ); 

        ABC: Action_AND
        port map(
            in1 => tmp1,
            in2 => c1,
            out1 => tmp2
        );

        notABC: Action_NOT
        port map(
            in1 => tmp2,
            out1 => tmp3
        );

        result: Action_OR
        port map(
            in1 => tmp3,
            in2 => d1,
            out1 => y1
        );
end architecture;