module struct_tb;
typedef struct packed {integer salary; integer age;} employee;

initial begin
    employee emp;
    emp.salary=233;
    emp.age=23;
    $display("The age of the employee is %0d and salary of the employee is %0d", emp.age,emp.salary);
end
endmodule
