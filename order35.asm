        addi  r1, r0, 0
        addi  r2, r0, 1
        addi  r3, r0, 20 
labe25: add   r1, r1, r3
        bgt0_sub        r2, r3, labe25
end:    j end