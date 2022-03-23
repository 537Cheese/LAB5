module Lab5_RAM(address, clock, in, write, out);
	input [7:0] address;
	input clock;
	input [63:0] in;
	input write;
	output reg [63:0] out;
	
	reg [6:0] mem[255:0];
	
	reg [63:0] Ein, addr, w;
	
	always @(posedge clock) begin 
		if(write) begin
		mem[address] <= in;
		end
		out <= mem[address];
		Ein <= in;
		addr <= address;
		w <= write;
	end
endmodule

