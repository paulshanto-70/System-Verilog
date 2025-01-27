// Code your testbench here
// or browse Examples
class first;
  int data=23;
  function display();
    $display("value of data = %0d",data);
  endfunction
  endclass
class second extends first;
  int ds=4; 
  function add();
    $display("value of ds+4 = %0d",ds+4);
    endfunction
endclass
module inheritance;
  initial begin
  second s1=new();
    $display("value of data in parent class=%0d",s1.data);
  s1.display();
    $display("value of data in child class=%0d",s1.ds);
  s1.add();
  end
endmodule
    