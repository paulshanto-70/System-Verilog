module mux_tb;
logic s,i1,i2;
logic y;
mux2to1 dut(y,s,i1,i2);
initial begin
    $dumpfile("test.vcd");
    $dumpvars(0,mux_tb);
    s=0;i1=0;i2=1;
    $monitor("s=%0d   y=%d",s,y);
    #5 s=1;
end
endmodule
