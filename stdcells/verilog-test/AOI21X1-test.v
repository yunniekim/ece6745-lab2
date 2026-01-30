//========================================================================
// AOI21X1-test
//========================================================================

`include "stdcells.v"

module Top;

 //----------------------------------------------------------------------
  // Instantiate design under test
  //----------------------------------------------------------------------

  logic A;
  logic B;
  logic C;
  logic Y;

  AOI21X1 dut
  (
    .A (A),
    .B (B),
    .C (C),
    .Y (Y)
  );

  //----------------------------------------------------------------------
  // check
  //----------------------------------------------------------------------

  task check
  (
    input logic A_,
    input logic B_,
    input logic C_,
    input logic Y_
  );

    A = A_;
    B = B_;
    C = C_;

    #1;

    $display( "%d: %b %b %b > %b", 8'($time), A, B, C, Y );

    if ( Y !== Y_ ) begin
      $display( "" );
      $display( "ERROR: Value on port Y is incorrect on timestep %d", 8'($time) );
      $display( " - actual value   : %b", Y  );
      $display( " - expected value : %b", Y_ );
      $display( "" );
      $finish();
    end

  endtask

  //----------------------------------------------------------------------
  // main
  //----------------------------------------------------------------------

  initial begin

    $dumpfile("AOI21X1-test.vcd");
    $dumpvars();
    $display("");

    //''' LAB/PROJECT TASK '''''''''''''''''''''''''''''''''''''''''''''''
    // Add more checks for exhaustive testing
    //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

    //     A     B     C     Y
    check( 1'b0, 1'b0, 1'b0, 1'b1 );

    $display("");
  end

endmodule

