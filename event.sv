module eventtb;
event ev1;
initial begin
    fork
        begin
            #40 ;
            $display($time,"\tTriggering the event");
            ->ev1;
        end
        begin
           $display ($time,"\twaiting for the event");
            #60;
            @ev1;
            $display($time,"\tevent triggered");
        end    
          join
end
initial begin
    #100 $display($time,"\tsimulation end");
    $finish();
end
