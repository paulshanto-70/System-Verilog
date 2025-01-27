DATA TYPES
module datatypes;
string s1="hello world";
string s2={"hi"," ",s1};
bit[31:0]b=128;
string s3=b;
initial begin
    $display("string s1=%0s",s1);
     $display("string s2=%0s",s2);
     
      $display("string s3=%0s",s3);
      end
endmodule
