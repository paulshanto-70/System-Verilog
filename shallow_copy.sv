// Code your testbench here
// or browse Examples
class first;
int data=12;
endclass
class second;
int ds=3;
first f1;
function new();
f1=new();
endfunction
endclass
module shallw;
second s1;
second s2;
initial begin
    s1=new();
    s2=new s1;
  
    s1.f1.data=20;
  $display("value of s2.ds is %0d", s2.f1.data);
end
endmodule