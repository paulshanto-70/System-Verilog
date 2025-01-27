class parent;
  int data=2;
  virtual function display();
    $display("value of data = %0d",data);
  endfunction
  endclass
class child extends parent;
  int ds=4; 
  function add();
    $display("value of ds+4 = %0d",ds+4);
    endfunction
  function display();
    $display("value of ds = %0d",ds);
  endfunction           
endclass
module inheritance;
  initial begin
    parent p1=new();
     child ch1=new();
    p1=ch1;
    p1.display();
    ch1.display();    
 end
endmodule
