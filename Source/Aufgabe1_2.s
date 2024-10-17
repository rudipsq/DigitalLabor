/*
 * Aufgabe_1_2.S
 *
 * SoSe 2024
 *
 *  Created on: 17.10.2024
 *      Author: Rudi Peusquens
 *
 *	Aufgabe : Addition von Zahlen
 */
.text /* Specify that code goes in text segment */
.code 32 /* Select ARM instruction set */
.global main /* Specify global symbol */
main:
  /* a */
  mov r0,#4294967295
  mov r1,#1
  add r10,r0,r1


  /* b */
   mov r0,#-1
   mov r1,#1
   add r11,r0,r1

   mov r0,#~0
   mov r1,#1
   add r11,r0,r1


   /* c */
   mov r0,#(1<<31)
   add r11,r0,r0

   mov r0,#0x80000000
   add r11,r0,r0


stop:
	nop
	bal stop

.end
