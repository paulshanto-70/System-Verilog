class parent;
  int data=2;
   function display();
    $display("value of data = %0d",data);
  endfunction
  endclass
class child extends parent;
  int ds=4; 
  function add();
    $display("value of ds+4 = %0d",ds+4);
    endfunction
  function display();
    super.display();
    $display("value of ds = %0d",ds);
  endfunction           
endclass
module inheritance;
  initial begin
    child ch1=new();
    ch1.display();    
 end
endmodule
