`timescale 1ns / 1ps

module reg_8bit_dff_v_tb;

    reg D0, D1, D2, D3, D4, D5, D6, D7;
    reg clk;

    wire Q0, Q1, Q2, Q3, Q4, Q5, Q6, Q7;

   reg_8bit_dff_v uut (
        .D0(D0), .D1(D1), .D2(D2), .D3(D3),
        .D4(D4), .D5(D5), .D6(D6), .D7(D7),
        .clk(clk),
        .Q0(Q0), .Q1(Q1), .Q2(Q2), .Q3(Q3),
        .Q4(Q4), .Q5(Q5), .Q6(Q6), .Q7(Q7)
    );
	 
	 initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        D0=0; D1=0; D2=0; D3=0; D4=0; D5=0; D6=0; D7=0;
        #10;
		  
		  
	     D0=0; D1=1; D2=0; D3=1; D4=0; D5=1; D6=0; D7=1;
        #10;

        D0=1; D1=0; D2=1; D3=0; D4=1; D5=0; D6=1; D7=0;
        #10;

        D0=1; D1=1; D2=1; D3=1; D4=1; D5=1; D6=1; D7=1;
        #10;

        $finish;
		  
		 end

endmodule
