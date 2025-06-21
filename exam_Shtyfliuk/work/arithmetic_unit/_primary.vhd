library verilog;
use verilog.vl_types.all;
entity arithmetic_unit is
    port(
        X2              : in     vl_logic_vector(3 downto 0);
        X1              : in     vl_logic_vector(3 downto 0);
        X0              : in     vl_logic_vector(3 downto 0);
        F               : out    vl_logic_vector(3 downto 0)
    );
end arithmetic_unit;
