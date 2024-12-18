```vhdl
entity counter_saturated is
  Port ( clk : in  STD_LOGIC;
               reset : in  STD_LOGIC;
               count : out  INTEGER range 0 to 15 );
end entity;

architecture behavioral of counter_saturated is
  signal s_count : INTEGER range 0 to 15 := 0;
begin
  process (clk, reset)
  begin
    if reset = '1' then
      s_count <= 0;
    elsif rising_edge(clk) then
      if s_count = 15 then
          s_count <= 15; 
      else
          s_count <= s_count + 1;
      end if;
    end if;
  end process;
  count <= s_count;
end architecture;
```