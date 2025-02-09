------- ROM creada automaticamente por ppm2rom -----------
------- Felipe Machado -----------------------------------
------- Departamento de Tecnologia Electronica -----------
------- Universidad Rey Juan Carlos ----------------------
------- http://gtebim.es ---------------------------------
----------------------------------------------------------
--------Datos de la imagen -------------------------------
--- Fichero original    : Joyride.ppm 
--- Filas    : 32 
--- Columnas : 16 
----------------------------------------------------------
--------Codificacion de la memoria------------------------
--- Palabras de 9 bits
--- De cada palabra hay 3 bits para cada color : "RRRGGGBBB" 512 colores



------ Puertos -------------------------------------------
-- Entradas ----------------------------------------------
--    clk  :  senal de reloj
--    addr :  direccion de la memoria
-- Salidas  ----------------------------------------------
--    dout :  dato de 9 bits de la direccion addr (un ciclo despues)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;
entity ROM_RGB_9b_Joyride is
  port (
    clk  : in  std_logic;   -- reloj
    addr : in  std_logic_vector(9-1 downto 0);
    dout : out std_logic_vector(9-1 downto 0) 
  );
end ROM_RGB_9b_Joyride;


architecture BEHAVIORAL of ROM_RGB_9b_Joyride is
  signal addr_int  : natural range 0 to 2**9-1;
  type memostruct is array (natural range<>) of std_logic_vector(9-1 downto 0);
  constant filaimg : memostruct := (
     --"RRRGGGBBB"
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101101",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101101",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111110110",
       "111110110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111110110",
       "111101110",
       "111100101",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111110110",
       "100011010",
       "011010001",
       "100011010",
       "111110101",
       "111101110",
       "111101110",
       "110100101",
       "011010010",
       "111101101",
       "011001001",
       "111110110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "101100100",
       "100010001",
       "111110100",
       "110101010",
       "101011010",
       "111110110",
       "101011100",
       "010000000",
       "100011010",
       "010001000",
       "100011011",
       "111110110",
       "111101110",
       "111101110",
       "111101110",
       "111110110",
       "011001001",
       "100010001",
       "101100001",
       "111110011",
       "011010000",
       "100010010",
       "011001001",
       "100010010",
       "011010001",
       "011010001",
       "010001001",
       "111110110",
       "111101110",
       "111101110",
       "111101110",
       "100010011",
       "101011011",
       "100010001",
       "110101001",
       "110101001",
       "011010000",
       "100010010",
       "011010001",
       "010001000",
       "001000000",
       "001000000",
       "010001001",
       "111110110",
       "111101110",
       "111101110",
       "111110110",
       "100011011",
       "100011010",
       "110101011",
       "110101010",
       "110101010",
       "010000000",
       "011010001",
       "010001000",
       "010001000",
       "011010001",
       "010001001",
       "100011011",
       "111101110",
       "111101110",
       "111101110",
       "111110110",
       "011010010",
       "111110101",
       "100011010",
       "011010000",
       "101100001",
       "001000000",
       "011010001",
       "010001000",
       "001000000",
       "111111110",
       "111111111",
       "101100100",
       "111101110",
       "111101110",
       "111101110",
       "111110110",
       "011010001",
       "111110110",
       "101011011",
       "101100010",
       "110101011",
       "001000000",
       "010001000",
       "010001000",
       "010000000",
       "110101100",
       "010001001",
       "110100100",
       "111101110",
       "111101110",
       "111101110",
       "110100100",
       "101011011",
       "111110110",
       "101100100",
       "100011010",
       "001001000",
       "001000000",
       "010001001",
       "010001000",
       "001000000",
       "111110110",
       "010001001",
       "101011011",
       "111101110",
       "111101110",
       "111101110",
       "110100100",
       "101011011",
       "111101110",
       "110101101",
       "000000000",
       "111111111",
       "010001001",
       "010001000",
       "001000000",
       "100011010",
       "100011011",
       "010001001",
       "101011100",
       "111101110",
       "111101110",
       "111101110",
       "110100100",
       "110100100",
       "111101110",
       "111110111",
       "010001001",
       "110110110",
       "011010010",
       "010000000",
       "110101100",
       "100011010",
       "111110101",
       "100010010",
       "101011011",
       "111101110",
       "111101110",
       "111101110",
       "101100011",
       "100010010",
       "111110110",
       "111110110",
       "011011011",
       "100100011",
       "100011011",
       "100011010",
       "101011011",
       "110100011",
       "111111110",
       "101100011",
       "110100100",
       "111101101",
       "111101110",
       "111101110",
       "101011011",
       "100011010",
       "011010010",
       "010001001",
       "010001001",
       "110110101",
       "101100011",
       "011010010",
       "111110101",
       "100011010",
       "111111110",
       "111110101",
       "100011011",
       "110100101",
       "111101110",
       "111101110",
       "101011011",
       "100010010",
       "111110101",
       "001000000",
       "101100100",
       "100100100",
       "010010001",
       "000000000",
       "110101100",
       "011010010",
       "110101100",
       "011010010",
       "111101101",
       "111101110",
       "111101110",
       "111101110",
       "111110110",
       "010001001",
       "100011010",
       "010001000",
       "011011010",
       "100100100",
       "011011011",
       "001000000",
       "010001001",
       "001001000",
       "101100100",
       "011010010",
       "110100101",
       "111101110",
       "111101110",
       "111101110",
       "111110110",
       "010000000",
       "001000000",
       "001001000",
       "011011010",
       "101100011",
       "010001001",
       "001000000",
       "110101101",
       "010001001",
       "001000000",
       "101011011",
       "111110110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111110110",
       "111111111",
       "000000000",
       "101101100",
       "100011010",
       "010010001",
       "001000000",
       "111111110",
       "110101100",
       "100011011",
       "100010010",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111110110",
       "001001000",
       "100011010",
       "101100011",
       "010010001",
       "010001001",
       "100011011",
       "111111110",
       "111101101",
       "111101101",
       "110100100",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111110111",
       "001000000",
       "000000000",
       "110110101",
       "001001000",
       "001001000",
       "010001001",
       "101100100",
       "111110101",
       "110100100",
       "110100101",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111110110",
       "000000000",
       "000000000",
       "000000000",
       "001001001",
       "001001001",
       "001001001",
       "011010010",
       "101011011",
       "111110110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "110101101",
       "010001001",
       "010010010",
       "010010010",
       "100011100",
       "000000001",
       "010001010",
       "011001010",
       "111110111",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "110101101",
       "010001001",
       "010010010",
       "001001001",
       "111111111",
       "001000001",
       "010010011",
       "010001010",
       "111110110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "100010011",
       "010001001",
       "001001000",
       "000000000",
       "111111111",
       "001001001",
       "010001010",
       "100011100",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "100011011",
       "011010010",
       "100100011",
       "001000000",
       "110101101",
       "001001001",
       "000000000",
       "101100101",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111110111",
       "001000000",
       "000000000",
       "011010011",
       "111110110",
       "011011011",
       "000000000",
       "101011100",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111110111",
       "100011011",
       "111101110",
       "111101110",
       "111110111",
       "000000000",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "110100101",
       "111110110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110",
       "111101110"
        );

begin

  addr_int <= TO_INTEGER(unsigned(addr));

  P_ROM: process (clk)
  begin
    if clk'event and clk='1' then
      dout <= filaimg(addr_int);
    end if;
  end process;

end BEHAVIORAL;

