.global fib
fib:
    li a1, 1          # Initialize a1 with 1
    mv a2, a1         # Initialize a2 with 1 too
    addi a0,a0,-2     # Subtracting 2 from index
    blez a0, ini      # If (index - 2) value is less than or equal to zero then branch to ini with a2 value as 1.
rep:
    add a3,a2,a1      # a3 = a2 + a1 similar to an = an-1 + an-2
    mv a1, a2         # move a2 to a1
    mv a2, a3         # move a3 to a2
    addi a0,a0,-1     # decrement a0 by 1
    bgtz a0, rep      # If a0 greater than zero then branch to rep, exits loop when a0 is zero
    
ini:    
    mv a0, a2         # Return result in reg a0
    jr ra             # Return address was stored by original call
