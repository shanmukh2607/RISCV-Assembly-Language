.global fib
fib:
    li a1, 1
    mv a2, a1
    addi a0,a0,-2
    blez a0, ini
rep:
    add a3,a2,a1
    mv a1, a2
    mv a2, a3
    addi a0,a0,-1
    bgtz a0, rep
    
ini:    
    mv a0, a2    # Return result in reg a0
    jr ra       # Return address was stored by original call
