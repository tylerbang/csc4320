.data
     string: .asciiz "Area of Parallelogram is: "
     newline: .asciiz "\n"
.text
     

     lw x5, base #base
     lw x6, altitude #altitude

     fcvt.s.w f0, x5 #convert signed int to float
     fcvt.s.w f1, x6

     fmul.s f2, f1, f0 #area = base * alt.

     fcvt.w.s x7, f2 #convert float to int

     add x11, x0, x7

     li x10, 4
     la x11, string
     ecall

     li x10, 1
     ecall

     li x10, 4
     la x11, newline
     ecall

     li x10, 10
     ecall

nop