.section .isr_vector
.word _estack
.word Rest_Handler

.section .text
.global Reset_Handler

Reset_Handler:
    ldr sp, =_estack
    bl SystemInit
    bl main
    b .