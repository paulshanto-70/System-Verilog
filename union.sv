module union_tb;
typedef union packed {integer salary; integer age;} employee;
initial begin
    employee emp;
    emp.salary=233;
    $display("The age of the employee is %0d",emp);
    emp.age=23;
    $display("Salary of the employee is %0d",emp);
end
endmodule
