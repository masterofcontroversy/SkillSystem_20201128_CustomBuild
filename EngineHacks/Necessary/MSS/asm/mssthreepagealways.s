.thumb
.equ Text_InitFont, 0x08003C94
.equ _ResetIconGraphics, 0x08003578

.macro blh to, reg=r3
	push	{\reg}
	ldr \reg, =\to
	mov lr, \reg
	pop	{\reg}
	.short 0xF800
.endm

@ Autohook to 0x08088690. r0 should equal the number of stat screen pages to have upon hitting the strb r0, [ r5, #0x01 ].
@ r5 = StatScreenStruct. Preserve no scratch registers!
mov r1, #0x3
NoSupportsStatScreen:
strb r1, [ r5, #0x01 ]
blh Text_InitFont, r1
blh _ResetIconGraphics, r1
blh #0x08086DF0, r1
ldr r0, =#0x080886A1
bx r0

.align
.ltorg
