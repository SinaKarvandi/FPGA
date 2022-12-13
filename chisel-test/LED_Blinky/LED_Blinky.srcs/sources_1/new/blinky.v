module Blinky(
  input        clock,
  input        reset,
  output [7:0] io_led
);
  reg [7:0] count; // @[LED.scala 9:22]
  wire [7:0] _count_T_1 = count + 8'h1; // @[LED.scala 12:20]
  assign io_led = count; // @[LED.scala 15:10]
  always @(posedge clock) begin
    if (reset) begin // @[LED.scala 9:22]
      count <= 8'h0; // @[LED.scala 9:22]
    end else if (count <= 8'ha) begin // @[LED.scala 11:22]
      count <= _count_T_1; // @[LED.scala 12:11]
    end
  end
endmodule
