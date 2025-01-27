class generator;
  rand bit[3:0]a,b;
  constraint val_a{a>5;}
  constraint val_b{b inside {[5:12]};}
  
endclass
module tb;
  generator g;
  initial begin
    int i;
    g=new();
    g.val_a.constraint_mode(0);
   
    for(i=0;i<10;i=i+1) begin
       g.randomize();
      
      $display("a=%0d and b=%0d",g.a,g.b);
      #10;
    end
  end
endmodule
