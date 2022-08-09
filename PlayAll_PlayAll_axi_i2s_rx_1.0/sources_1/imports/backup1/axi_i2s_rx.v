// Vendor:
// Author: Jialu
// Date: 02/08/22

module axi_i2s_rx(

    input mclk,
    input mclk_rstn,

    input m_axis_aclk,
    input m_axis_arstn,

    input  m_axis_tready,
    output m_axis_tvalid,
    output [31:0] m_axis_tdata,
    output m_axis_tlast,

    output bclk,
    input sda,
    output lrclk
    );

    //internal signal for i2s entity
    reg  [2:0]  cnt_int = 3'd0;
    wire        bclk_int;
    wire        i2s_valid;
    wire [31:0] i2s_data;
    //signals for axi-stream
    reg         m_axis_tready_int;         
    reg         m_axis_tvalid_int;         
    reg  [31:0] m_axis_tdata_int;   
    reg         m_axis_tlast_int;
    //fsm part
    parameter   idle = 2'd0;
    parameter   valid = 2'd1;
    parameter   invalid = 2'd2;
    
    reg  [1:0]  state, next_state;
    
    always @(posedge mclk) begin
      if (mclk_rstn == 1'b0) begin
        cnt_int <= 3'd0;
      end
      else begin
        cnt_int <= cnt_int + 1;
      end
    end

    assign bclk_int = cnt_int[2];
    assign bclk = bclk_int;
    
    //instance i2s entity
    i2s joe_i2s(
    .bclk   (bclk_int),
    .rstn   (mclk_rstn),
    .lrclk  (lrclk),
    .sda    (sda),
    .valid  (i2s_valid),
    .data   (i2s_data)
    );
    
    always @(posedge m_axis_aclk) begin
        if (m_axis_arstn == 1'b0) begin
            state <= idle;
        end
        else begin
            state <= next_state;
        end
     end
            
    always @(*) begin
        case (state)
            idle: begin
                if (i2s_valid == 1'b1) begin
                   next_state = valid;
                end
                else begin
                   next_state = state;
                end
            end
            valid: begin           
                    next_state = invalid;
            end
            invalid: begin
                if (i2s_valid == 1'b0) begin
                    next_state = idle;
                end
                else begin
                    next_state = state;
                end
            end
        endcase
    end
     
    always @(*) begin
        case (state)
            idle: begin
                m_axis_tvalid_int = 1'b0;
                m_axis_tlast_int = 1'b0;
                m_axis_tdata_int = 32'd0;
            end
            valid: begin
                m_axis_tvalid_int = 1'b1;
                m_axis_tlast_int = 1'b1;
                m_axis_tdata_int = i2s_data;
            end
            invalid: begin
                m_axis_tvalid_int = 1'b0;
                m_axis_tlast_int = 1'b0; 
                m_axis_tdata_int = 32'd0;
            end
        endcase
    end

    assign m_axis_tvalid = m_axis_tvalid_int; 
    assign m_axis_tlast  = m_axis_tlast_int;
    assign m_axis_tdata  = m_axis_tdata_int;

endmodule
