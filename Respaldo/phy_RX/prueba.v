module serial_paralelo(
	input reset,
	input clk_4f,
	input clk_32f,
	input data_in,
	output reg active,
	output reg valid_out,
	output reg [7:0] data_out
	);

	integer BC_counter;		//contador de BCs
	reg [7:0] buffer;		//guardo mensaje de interés y solo leo en caso importantes
	integer counter;		//Contador de 0 a 7 para ir sacando valores

	always @(posedge clk_32f) begin
		if (reset==0)begin			//Inicializa
			data_out [7:0]<= 8'b00000000;
			valid_out <= 0;
			active <= 0;
			BC_counter <= 0;
			counter <= 0;
			buffer <= 0;
		end
		else if (reset==1) begin
			buffer <= {buffer[6:0], data_in};
			if (BC_counter == 4 && counter == 0) begin		//Si BC counter en 4, saca los datos cuando contador llega a 0
				valid_out <= 1;
				active <= 1;
				if (buffer == 8'hBC) begin 
					BC_counter <= 0;
					valid_out <= 0;
				end
				else begin
					data_out <= buffer;
				end
			end

			else if (buffer == 8'hBC && BC_counter < 4) begin
				BC_counter <= BC_counter+1;
				valid_out <= 0;
				data_out <= 0;
			end

			if (counter == 7) begin
				counter <= 0;
			end
			else counter <= counter+1;					// va de 0-7 en un ciclo de 4f
		end
	end
endmodule