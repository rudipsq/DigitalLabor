/*
 * Aufgabe_2_3.S
 *
 * SoSe 2024
 *
 *  Created on: <13.11.2024>
 *      Author: <Rudi Peusquens>
 *
 *	Aufgabe : Werte Binarisieren
 */
.text /* Specify that code goes in text segment */
.code 32 /* Select ARM instruction set */
.global main /* Specify global symbol */


numbers:
    .word 0
    .word 1
    .word 10
    .word 100
    .word 2
    .word 4
    .word 8
    .word 16

main:


mov r0, #0 // OUtput
mov r1, #8 // values
ldr r2,=numbers // pointer

while:
    // shift left 4 bit
    mov r0, r0, lsl#4
    
    // load value, increment pointer
    ldr r3, [r2], #4

    // value < 10
    cmp r3, #10
    movlt r3, #0
    movge r3, #15

   
    orr r0, r0, r3



    // while values > 0
    subs r1, r1, #1
    bne while





stop:
	nop
	bal stop

.end
