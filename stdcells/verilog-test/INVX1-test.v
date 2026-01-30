//========================================================================
// INVX1-test
//========================================================================

`include "stdcells.v"

module Top;

 //----------------------------------------------------------------------
  // Instantiate design under test
  //----------------------------------------------------------------------

  logic A;
  logic Y;

  INVX1 dut
  (
    .A (A),
    .Y (Y)
  );

  //----------------------------------------------------------------------
  // check
  //----------------------------------------------------------------------

  task check
  (
    input logic A_,
    input logic Y_
  );

    A = A_;

    #1;

    $display( "%d: %b > %b", 8'($time), A, Y );

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

    $dumpfile("INVX1-test.vcd");
    $dumpvars();
    $display("");

    //''' LAB/PROJECT TASK '''''''''''''''''''''''''''''''''''''''''''''''
    // Add more checks for exhaustive testing
    //''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''

    //     A     Y
    check( 1'b0, 1'b1 );

    $display("");
  end

endmodule

