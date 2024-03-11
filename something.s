#Midterm problem 1b

.data
    out: .word 11
    min: .word 1
    newline: .asciiz "\n"

.text
    lw x2, out
    lw x3, min

    loop: #do...
        addi x2, x2, -1 #decrement from 10...
        add x11, x0, x2
        
        li x10, 1       # ...and print it...
        ecall
        
        li x10, 4
        la x11, newline #...along with a newline!
        ecall
       
        blt x3, x2, loop #...while 

    li x10, 4
    la x11, newline #...along with a newline!
    ecall
nop