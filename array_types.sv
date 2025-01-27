module array_types(); 
    int arry[4] = {20,40,34,55}; 
    string arr1[3] = {"Hello","World","!"}; 
    string arr2[]; 
    int arr3[string]; 
     
    initial begin 
        arr2 = new[5]; 
        arr2 = {"Hello","vlsi","world"}; 
        arr3["RED"] = 128; 
        arr3["GREEN"] = 230; 
        arr3["BLUE"] = 10; 
        arr3["orange"]= 23;
        $display("/**** Simple Integer Array ****/"); 
        foreach(arry[i]) begin  
            $display("arry[%0d]: %0d",i, arry[i]); 
        end 
        $display("/**** Simple String Array ****/"); 
        foreach(arr1[i]) begin  
            $display("arr1[%0d]: %0s",i, arr1[i]); 
        end 
        $display("/**** Dynamic Array ****/"); 
        foreach(arr2[i]) begin  
            $display("arr2[%0d]: %0s",i, arr2[i]); 
        end 
        $display("/**** Associative Array ****/"); 
        $display("arr3[RED]: %0d", arr3["RED"]); 
        $display("arr3[GREEN]: %0d", arr3["GREEN"]); 
        $display("arr3[BLUE]: %0d", arr3["BLUE"]); 
        $display("arr3[orange]: %0d", arr3["orange"]);
    end 
endmodule
