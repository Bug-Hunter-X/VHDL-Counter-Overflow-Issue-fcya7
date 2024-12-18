# VHDL Counter with Potential Overflow

This repository demonstrates a simple VHDL counter and highlights a potential overflow issue. The counter is designed to increment from 0 to 15, but it will wrap around upon reaching 15. This might cause unexpected behavior if not handled appropriately.

## Bug Description
The `counter` entity uses an `INTEGER` data type with a range of 0 to 15. When the counter reaches 15, the next increment will result in an overflow, causing it to wrap around back to 0. While this behavior may be acceptable in some contexts, it's often unintended and can lead to errors.

## Solution
The provided solution addresses the overflow issue using a saturated counter. This prevents the counter from exceeding the maximum value. Additional solutions could include handling overflow with flags or different data structures.