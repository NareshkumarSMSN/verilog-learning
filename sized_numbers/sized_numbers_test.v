module sized_numbers_check;
    reg [63:0] a,b,c,e,f,g;
    reg [5:0] d;
    initial begin
        a[31:0] = 'Habc1;
        b[60:0] = 'hef;
        c = 16'h45;
        d = -6'b11011;
        $display("a = %0h , b = %0h , c = %0h , d = %b",a,b,c,d);
        e[31:0] = 'Haxbc1;
        f[60:0] = 'hzef;
        g = 16'b1;
        $display("e = %0h , f = %0h , g = %0h",e,f,g);
    end
endmodule