`include "../recirculador/recirculador.v"
//`include "../lib/cmos_cell.v"
`include "../demux_striping/demux_striping.v"
`include "../demux_32_8/demux_32_8.v"
`include "../paralelo_serial/paralelo_serial.v"

module phy_TX(input [31:0] data_input,
			input valid,
			input data_and_active,
			input reset,
			input clk_2f,
			input clk_f,
			input clk_4f,
			input clk_32f,
			output [31:0] data_recirculador_inactive,
			output data_paralelo_serial_0,
			output data_paralelo_serial_1);

	wire [31:0] data_recirculador_active, data_demux_strp_0, data_demux_strp_1;
	wire [7:0] data_demux_32_8_0, data_demux_32_8_1;
	wire clk_2f, clk_f, clk_4f, valid, data_and_active, reset, valid_demux_strp_0, valid_demux_strp_1, valid_demux_32_8_0, valid_demux_32_8_1;
	wire valid_recirculador;

	recirculador recirculador_inicial(
		/*AUTOINST*/
					  // Outputs
					  .data_recirculador_active(data_recirculador_active[31:0]),
					  .data_recirculador_inactive(data_recirculador_inactive[31:0]),
					  .valid_recirculador	(valid_recirculador),
					  // Inputs
					  .clk_2f		(clk_2f),
					  .data_input		(data_input[31:0]),
					  .valid		(valid),
					  .data_and_active	(data_and_active),
					  .reset		(reset));

	demux_striping u_demux_striping(
		/*AUTOINST*/
					// Outputs
					.data_demux_strp_0(data_demux_strp_0[31:0]),
					.data_demux_strp_1(data_demux_strp_1[31:0]),
					.valid_demux_strp_0(valid_demux_strp_0),
					.valid_demux_strp_1(valid_demux_strp_1),
					// Inputs
					.clk_2f		(clk_2f),
					.data_recirculador_active(data_recirculador_active[31:0]),
					.valid_recirculador(valid_recirculador),
					.reset		(reset));

	demux_32_8 demux_lane_0(
		/*AUTOINST*/
				// Outputs
				.data_demux_32_8(data_demux_32_8_0[7:0]),
				.valid_demux_32_8(valid_demux_32_8_0),
				// Inputs
				.clk_4f		(clk_4f),
				.data_demux_strp(data_demux_strp_0[31:0]),
				.valid_demux_strp(valid_demux_strp_0),
				.reset		(reset));

	paralelo_serial paralelo_serial0(
		/*AUTOINST*/
					 // Outputs
					 .data_paralelo_serial	(data_paralelo_serial_0),
					 // Inputs
					 .clk_4f		(clk_4f),
					 .clk_32f		(clk_32f),
					 .data_demux_32_8	(data_demux_32_8_0[7:0]),
					 .valid_demux_32_8		(valid_demux_32_8_0),
					 .reset			(reset));
	
	demux_32_8 demux_lane_1(
		/*AUTOINST*/
				// Outputs
				.data_demux_32_8(data_demux_32_8_1[7:0]),
				.valid_demux_32_8(valid_demux_32_8_1),
				// Inputs
				.clk_4f		(clk_4f),
				.data_demux_strp(data_demux_strp_1[31:0]),
				.valid_demux_strp(valid_demux_strp_1),
				.reset		(reset));

	paralelo_serial paralelo_serial1(
		/*AUTOINST*/
					 // Outputs
					 .data_paralelo_serial	(data_paralelo_serial_1),
					 // Inputs
					 .clk_4f		(clk_4f),
					 .clk_32f		(clk_32f),
					 .data_demux_32_8	(data_demux_32_8_1[7:0]),
					 .valid_demux_32_8		(valid_demux_32_8_1),
					 .reset			(reset));



endmodule
