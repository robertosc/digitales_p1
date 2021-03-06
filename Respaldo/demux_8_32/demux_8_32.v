module demux_8_32(input clk_4f,
				input clk_f,
				input [7:0] data_in,
				input valid,
				input reset,
				output reg [31:0] data_out,
				output reg valid_out); //tiene que ser reg para poder ser l-value

	integer contador;			
	reg delay_valid;			//Retrasa el valid
	reg [31:0] buffer;			//Acá se va pegando por partes
	reg [31:0] buffer_out;		//Acá se guarda el mensaje completo
	reg ready;

	always @(posedge clk_4f) begin
		if(reset == 0) begin
			contador  <= 0;
			valid_out <= 0;
			buffer <= 0;
			data_out <= 0;
			delay_valid <= 0;
			ready <= 0;
		end
		else begin
			delay_valid <= valid;					//Retraso de valid un ciclo y se trabaja respecto a este
			buffer <= {buffer[23:0], data_in};		//Desplazamiento
			if(delay_valid) begin
				if (contador == 3) begin
					data_out <= buffer;
					valid_out <= 1;
					ready <= 1;
				end
				contador <= contador + 1;
				if(contador >= 3) begin 
					contador <= 0;
				end
			end
		end
	end

	always @(posedge clk_f) begin
		if(ready == 1) begin
			valid_out <= delay_valid;
			ready <= 0;
		end
	end

endmodule