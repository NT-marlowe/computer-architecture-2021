module tb_computer;
  
  reg clk, rstd;

  initial begin
    $dumpfile("cpu_35.vcd");
    $dumpvars;
    rstd = 1'b1;
    #10 rstd = 1'b0;
    #10 rstd = 1'b1;
    #10000 $finish;
  end

  initial begin
    clk = 0;
    forever #50 clk = ~clk;
  end

  // always begin
  //   #50 clk = ~clk;
  // end

  computer computer_0 (clk, rstd);

endmodule