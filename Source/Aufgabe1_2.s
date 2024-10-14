/*
 * Aufgabe_1_2.S
 *
 * SoSe 2024
 *
 *  Created on: <$Date>
 *      Author: <$Name>
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
   mov r0,#0xffffffff
   mov r1,#1
   add r11,r0,r1

   mov r0,#~0
   mov r1,#1
   add r11,r0,r1


   /* c */
   mov r0,#2147483648
   mov r1,#2147483648
   add r11,r0,r1

   mov r0,#0x80000000
   mov r1,#0x80000000
   add r11,r0,r1


stop:
	nop
	bal stop

.end
