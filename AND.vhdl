library ieee;
use ieee.std_logic_1164.all; --Подключаем библиотеки. Стандартные для всех текстов на VHDL.
use ieee.numeric_std.all; 

entity Action_AND is          --Объект проекта + Имя проекта
	port (
		in1: in std_logic;   --in - входной порт. out - выходной порт
		in2: in std_logic;   -- std_logic - тип переменных 
		out1: out std_logic
	);
end Action_AND;   --Закрыть объект

architecture lab1 of Action_AND is -- Описываем архитектуру проекта
begin
	out1 <= in1 and in2; 
end lab1;