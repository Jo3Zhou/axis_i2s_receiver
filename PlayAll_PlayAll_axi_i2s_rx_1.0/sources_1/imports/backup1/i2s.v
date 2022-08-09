// Vendor:
// Author: Jialu
// Date: 02/08/22

module i2s(
    input bclk,
    input rstn,
    input sda,
    output lrclk,
    output valid,
    output [31:0] data
    );

    reg  [5:0]  cnt_bit = 6'd33;
    reg  [33:0] data_buffer = 34'd0;
    
    reg lrclk_int;
    reg valid_int;
    reg [31:0] data_int;

    always @(posedge bclk) begin
        if (rstn == 1'b0) begin
            data_buffer <= 32'd0;
        end
        else begin
            data_buffer <= {{data_buffer[32:0]}, {sda}};
        end
    end

    always @(negedge bclk) begin
        if (rstn == 1'b0) begin
            cnt_bit <= 6'd33;
        end
        else begin
            if  (cnt_bit == 6'd0) begin
                cnt_bit <= 6'd33;
            end
            else begin
                cnt_bit <= cnt_bit - 1;
            end
        end
    end

    always @(*) begin
        if (cnt_bit == 6'd33) begin
            valid_int = 1'b1;
            data_int = {data_buffer[32:17], data_buffer[15:0]};
        end
        else begin
            valid_int = 1'b0;
            data_int = 32'd0;
        end
    end

    always @(*) begin
        if (cnt_bit <= 16) begin
            lrclk_int = 1'b1;
        end
        else begin
            lrclk_int = 1'b0;
        end
    end

    assign lrclk = lrclk_int;
    assign valid = valid_int;
    assign data = data_int;

endmodule
