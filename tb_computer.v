module tb_computer;
  
  reg clk, rstd;

  initial begin
    rstd = 1'b1;
    #10 rstd = 1'b0;
    #10 rstd = 1'b1;
  end

  initial begin
    $dumpfile("cpu.vcd");
    $dumpvars;
    clk = 0;
    // forever #50 clk = ~clk;
    #10000 $finish;
  end

  always begin
    #50 clk = ~clk;
  end

  computer computer_0 (clk, rstd);

endmodule