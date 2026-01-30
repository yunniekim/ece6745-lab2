//========================================================================
// TIEHI-test
//========================================================================

`include "stdcells.v"

module Top;

 //----------------------------------------------------------------------
  // Instantiate design under test
  //----------------------------------------------------------------------

  logic Y;

  TIEHI dut
  (
    .Y (Y)
  );

  //----------------------------------------------------------------------
  // check
  //----------------------------------------------------------------------

  task check
  (
    input logic Y_
  );

    #1;

    $display( "%d: > %b", 8'($time), Y );

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

    $dumpfile("TIEHI-test.vcd");
    $dumpvars();
    $display("");

    //     Y
    check( 1'b1 );
    check( 1'b1 );
    check( 1'b1 );

    $display("");
  end

endmodule

