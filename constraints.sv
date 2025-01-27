class generator;
  randc bit[3:0]a,b;
  bit c;
endclass
module tb;
  generator g;
  initial begin
    int i;
    g=new();
    g.b.rand_mode(0);
   
    for(i=0;i<10;i=i+1) begin
       g.randomize();
      $display("a=%0d and b=%0d",g.a,g.b);
      #10;
    end
  end
endmodule
