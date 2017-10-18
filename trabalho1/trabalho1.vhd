----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:06:54 10/07/2017 
-- Design Name: 	 Cássio Miguel Entrudo - 00252847	
-- Module Name:    trabalho1 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
use IEEE.std_logic_unsigned.all;
USE IEEE.STD_LOGIC_ARITH.ALL; 

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity trabalho1 is
    Port ( button_cnt1 : in STD_LOGIC; -- botão de incremento do contador C1
			  button_cnt2 : in STD_LOGIC; -- botão de incremento do contador C2
			  up_down_c1 : in STD_LOGIC; -- dir contador C1
			  up_down_c2 : STD_LOGIC; -- dir contador C1
           mclk : in  STD_LOGIC; -- clock
           rst : in  STD_LOGIC; -- reset
			  an: out std_logic_vector(3 downto 0); -- controle de acionamento dos displays
			  led_left: out std_logic_vector(3 downto 0); -- 4 leds da esquerda da placa (Contador C1)
			  led_rigth: out std_logic_vector(3 downto 0); -- 4 leds da direita da placa (Contador C1)
			  sel: in STD_LOGIC; -- seletor do multiplexador (0 - somador, 1 - subtrator)
			  seg: out std_logic_vector(6 downto 0) -- saída para os displays
			  );
end trabalho1;

architecture Behavioral of trabalho1 is

COMPONENT caixa1_somador
  PORT (
    a : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- entrada 1 somador do Coregenerator
    b : IN STD_LOGIC_VECTOR(3 DOWNTO 0); -- entrada 2 somador do Coregenerator
    s : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) -- saída do somador do Coregenerator
  );
END COMPONENT;

--Signals
-----------------------------------------------------------------------------------------
signal reg1: std_logic_vector(7 downto 0) := "00000000"; -- resgistrador de debounce do botão de incremento do contador C1
signal reg2: std_logic_vector(7 downto 0) := "00000000"; -- resgistrador do debounce do botão de incremento do contador C2

signal cnt_c1: STD_LOGIC_VECTOR (3 downto 0); -- sinal contador C1
signal cnt_c2: STD_LOGIC_VECTOR (3 downto 0); -- sinal contador C2

signal somador: STD_LOGIC_VECTOR (3 downto 0) := "0000";-- sinal do somador
signal subtrator: STD_LOGIC_VECTOR (3 downto 0) := "0000"; -- sinal do subtrator

signal saida_sel : std_logic_vector(3 downto 0); -- sinal da saida do multiplexador
signal saida_7bits : std_logic_vector(6 downto 0); -- sinal do registrador de 7bits (convertido nibble/7seg)

begin

--Process
-----------------------------------------------------------------------------------------
process (mclk, rst)
begin
if (rst = '1') then -- Se reset
	cnt_c1 <= "0000"; -- zera contador C1
	cnt_c2 <= "0000"; -- zera contador C2
	for i in 0 to 7 loop 
			reg1(i) <= '0';
			reg2(i) <= '0';
		end loop;
elsif (RISING_EDGE(mclk)) then -- se houver borda de clock	
	-- contador C1
--	if button_cnt1 = '1' then -- utilizado apenas para gerar os sinais no testbench
 if reg1 = "11111110" then
		if (up_down_c1 = '1') then -- se SW-7 em '1', incrementa
			cnt_c1 <= cnt_c1 + 1;
		elsif (up_down_c1 = '0') then -- se SW-7 em '0' decrementa
			cnt_c1 <= cnt_c1 - 1;			
		else
			cnt_c1 <= cnt_c1;
		end if;
--	end if;
	end if;
	
	-- contador C2
--	if button_cnt2 = '1' then -- utilizado apenas para gerar os sinais no testbench
	if reg2 = "11111110" then
		if (up_down_c2 = '1') then -- se SW-6 em '1', incrementa
			cnt_c2 <= cnt_c2 + 1;
		elsif (up_down_c2 = '0') then -- se SW-6 em '0' decrementa
			cnt_c2 <= cnt_c2 - 1;			
		else
			cnt_c2 <= cnt_c2;
		end if;	
--	end if;
	end if;
	
	-- BTN3-A7 incremento do contador C1
	if button_cnt1 = '1' then
		reg1(0) <= '1';
	else
		reg1(0) <= '0';
	end if;
	
	-- BTN2-M4 incremento do contador C2
	if button_cnt2 = '1' then
		reg2(0) <= '1';
	else
		reg2(0) <= '0';
	end if;
	
	-- shift
	for i in 0 to 6 loop 
		reg1(i+1) <= reg1(i);
		reg2(i+1) <= reg2(i);
	end loop;
else
	cnt_c1 <= cnt_c1;
	cnt_c2 <= cnt_c2;	
end if;
end process;
-----------------------------------------------------------------------------------------

-- caixa2 (Subtrator)
	subtrator <= cnt_c2- cnt_c1;

--multiplexador
saida_sel <= somador when sel = '0' else
	subtrator when sel = '1';

-- atualiza os leds com os valores des contadores
led_left(3 downto 0) <= cnt_c1(3 downto 0);
led_rigth(3 downto 0) <= cnt_c2(3 downto 0);

-- Conversor nibble/7sqg
saida_7bits <= "1000000" when saida_sel = x"00" else
	    "1111001" when saida_sel = x"01" else
		 "0100100" when saida_sel = x"02" else
		 "0110000" when saida_sel = x"03" else
		 "0011001" when saida_sel = x"04" else
		 "0010010" when saida_sel = x"05" else
		 "0000010" when saida_sel = x"06" else
		 "1111000" when saida_sel = x"07" else
		 "0000000" when saida_sel = x"08" else
		 "0011000" when saida_sel = x"09" else
		 "0001000" when saida_sel = x"0A" else
		 "0000011" when saida_sel = x"0B" else
		 "1000110" when saida_sel = x"0C" else
		 "0100001" when saida_sel = x"0D" else
		 "0000110" when saida_sel = x"0E" else
		 "0001110" when saida_sel = x"0F";
 
an(0) <= '0';
an(1) <= '1';
an(2) <= '1';
an(3) <= '1'; 

seg <= saida_7bits;

-- somador gerado pelo CoreGenerator
U0 : caixa1_somador
  PORT MAP (
    a => cnt_c1,
    b => cnt_c2,
    s => somador
  );

end Behavioral;

