module probador_TX(		input [7:0] data_paralelo_serial_0,
						input [7:0] data_paralelo_serial_1,
						input [31:0] data_recirculador_inactive,
						output reg data_and_active,
						output reg valid,
						output reg reset,
						output reg [31:0] data_input,
						output reg clk_f,
						output reg clk_2f,
						output reg clk_4f,
						output reg clk_32f);

	initial begin
	$dumpfile("TX.vcd");
	$dumpvars;

	{valid, data_and_active, reset} <= 0;
	{data_input} <= 32'h00000000;

	
	@(posedge clk_2f);
	data_and_active <= 1;
	valid <= 1;
	data_input <= 32'hFFFFEEEE;

	@(posedge clk_2f);
	data_and_active <= 1;
	valid <= 1;
	data_input <= 32'hFFEEEEEE;

	@(posedge clk_2f);
	reset <= 1;
	data_and_active <= 1;
	valid <= 1;
	data_input <= 32'h3FE115E6;

	@(posedge clk_2f);
	data_and_active <= 1;
	valid <= 1;
	data_input <= 32'hCCEEEEEE;

	@(posedge clk_2f);
	data_and_active <= 1;
	valid <= 0;
	data_input <= 32'hAAAA1234;

	@(posedge clk_2f);
	data_and_active <= 1;
	valid <= 0;
	data_input <= 32'h12345678;

	@(posedge clk_2f);
	data_and_active <= 0;
	valid <= 1;
	data_input <= 32'hBBBBAAAA;

	@(posedge clk_2f);

	@(posedge clk_2f);

	@(posedge clk_2f);

	@(posedge clk_2f);

	@(posedge clk_2f);
	$finish;
	end
	
	initial clk_f <= 1;
	initial clk_2f <= 1;
	initial clk_4f <= 1;
	initial clk_32f <= 1;

	always #24 clk_f <= ~clk_f;
	always #16 clk_2f <= ~clk_2f;
	always #8 clk_4f <= ~clk_4f;
	always #1 clk_32f <= ~clk_32f;
	


endmodule
