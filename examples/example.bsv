package Counter;

import FIFO::*;
import Vector::*;

// Interface definition
interface Counter;
  method Action increment;
  method Action decrement;
  method Int#(32) read;
endinterface

// Module implementation
module mkCounter (Counter);
  Reg#(Int#(32)) count <- mkReg(0);

  rule display;
    $display("Count = %d", count);
  endrule

  method Action increment;
    count <= count + 1;
  endmethod

  method Action decrement;
    count <= count - 1;
  endmethod

  method Int#(32) read;
    return count;
  endmethod
endmodule

// Helper function
function Int#(32) add(Int#(32) a, Int#(32) b);
  return a + b;
endfunction

// Type definition
typedef struct {
  Int#(32) value;
  Bool valid;
} DataPacket;

endpackage
