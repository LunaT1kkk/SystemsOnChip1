 library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity test is
end test;

architecture lab1 of test is
    component main_structure
        port(
            a1: in std_logic;
            b1: in std_logic;
            c1: in std_logic;
            d1: in std_logic;
            y1: out std_logic
        );
    end component;
    
    component main_behavior
        port(
            a: in std_logic;
            b: in std_logic;
            c: in std_logic;
            d: in std_logic;
            y: out std_logic
        );
    end component;

    constant clk_period : time := 10 ns;
    signal in_a: std_logic := '0';
    signal in_b: std_logic := '0';
    signal in_c: std_logic := '0';
    signal in_d: std_logic := '0';
    signal clk: std_logic := '0';
    signal out_y1: std_logic;
    signal out_y2: std_logic;
    signal vector: std_logic_vector(3 downto 0) := (others=>'0');

    begin

    process(clk)
        begin
            if rising_edge(clk)then
                vector <= vector + "0001";
            end if;
        end process;

    process
         begin
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
        end process;
    
    process(vector)
        begin
            in_a <= vector(0);
            in_b <= vector(1);
            in_c <= vector(2);
            in_d <= vector(3);
        end process;

    sign1: main_structure port map(
        a1 => in_a,
        b1 => in_b,
        c1 => in_c,
        d1 => in_d, 
        y1 => out_y1
    );

    sign2: main_behavior port map(
        a => in_a,
        b => in_b,
        c => in_c,
        d => in_d, 
        y => out_y2
    );
end;