/*
 * Aufgabe_1_4.S
 *
 * SoSe 2024
 *
 *  Created on: <$Date>
 *      Author: <$Name>
 *
 *	Aufgabe : Maskenoperationen
 */
.text /* Specify that code goes in text segment */
.code 32 /* Select ARM instruction set */
.global main /* Specify global symbol */
main:

 /* Zahlen */
  mov r0, #0xffffffff
  mov r1, #0xffffffff
  mov r2, #10
  mov r3, #100

  /* Ergebnisregister */
  mov r4, #0
  mov r5, #0
  mov r6, #0


   /* Rechnung */
  adds r4, r0, r2

  adcs r5, r1, r3

  adccs r6, r6, #0



stop:
	nop
	bal stop

.end
