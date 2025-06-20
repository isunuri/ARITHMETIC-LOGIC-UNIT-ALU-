module ALU (input [7:0] A, B,input [2:0] sel,output reg [7:0] result,output zero);
    always @(*) begin
        case(sel)
            3'b000: result = A + B;          // Addition
            3'b001: result = A - B;          // Subtraction
            3'b010: result = A & B;          // AND
            3'b011: result = A | B;          // OR
            3'b100: result = A & ~B;         // AND NOT
            default: result = 8'b00000000;
        endcase
    end
    assign zero = (result == 8'b00000000);
endmodule

module ALU_tb;
    reg [7:0] A, B;
    reg [2:0] sel;
    wire [7:0] result;
    wire zero;
    ALU uut (.A(A), .B(B),.sel(sel),.result(result),.zero(zero));
    initial begin
        $display("Time | A   | B  | Sel | Result | Zero");
        $monitor("%4t | %b | %b |  %b  | %b | %b", $time, A, B, sel, result, zero);
        // Test Addition
        A = 8'b00000101; B = 8'b00000011; sel = 3'b000; #10;
        // Test Subtraction
        A = 8'b00001000; B = 8'b00000011; sel = 3'b001; #10;
        // Test AND
        A = 8'b11001100; B = 8'b10101010; sel = 3'b010; #10;
        // Test OR
        A = 8'b11001100; B = 8'b10101010; sel = 3'b011; #10;
        // Test AND NOT
        A = 8'b11110000; B = 8'b11000011; sel = 3'b100; #10;
        // Test zero flag
        A = 8'b00000000; B = 8'b00000000; sel = 3'b000; #10;
        $finish;
    end
endmodule
