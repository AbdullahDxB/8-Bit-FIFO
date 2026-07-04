`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

module sync_fifo #(parameter DEPTH = 8, DWIDTH = 8)
(
    input rstn,
    input clk,
    input wr_en,
    input rd_en,
    input      [DWIDTH-1:0] din,
    output reg [DWIDTH-1:0] dout,
    output reg full,
    output reg empty
);

    reg [$clog2(DEPTH):0] wptr;
    reg [$clog2(DEPTH):0] rptr;

    reg [DWIDTH-1:0] fifo [DEPTH-1:0];

    always @(posedge clk or negedge rstn) begin
        if (!rstn) begin
            wptr <= 0;
            rptr <= 0;
            full <= 0;
            empty <= 1;
        end else begin
            // Write operation
            if (wr_en && !full) begin
                fifo[wptr[$clog2(DEPTH)-1:0]] <= din;
                wptr <= wptr + 1;
                empty <= 0;
            end

            // Read operation
            if (rd_en && !empty) begin
                dout <= fifo[rptr[$clog2(DEPTH)-1:0]];
                rptr <= rptr + 1;
                full <= 0;
            end

            // Update full flag
            if ((wptr[$clog2(DEPTH)-1:0] == rptr[$clog2(DEPTH)-1:0]) && (wptr[$clog2(DEPTH)] != rptr[$clog2(DEPTH)])) begin
                full <= 1;
            end else begin
                full <= 0;
            end

            // Update empty flag
            if (wptr == rptr) begin
                empty <= 1;
            end else begin
                empty <= 0;
            end
        end
    end

endmodule