# Midterm Problem 1a
.data
    n:  .word   9
.text
main:
    lw a1, n
cubed: # This does this n * n * n
    addi sp, sp, -8
    sw s3, 4(sp)
    sw t0, 0(sp)
    mul t0, a1, a1
    mul s3, t0, a1
    add a1, s3, zero
    lw s3, 4(sp)
    lw t0, 0(sp)
    addi sp, sp, 8

    li x10, 1
    ecall
nop