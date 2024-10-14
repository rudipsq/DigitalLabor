/*
 * Aufgabe_1_3.S
 *
 * SoSe 2024
 *
 *  Created on: <$Date>
 *      Author: <$Name>
 *
 *	Aufgabe : Flags und bedingte Ausführung
 */
.text /* Specify that code goes in text segment */
.code 32 /* Select ARM instruction set */
.global main /* Specify global symbol */
main:
  mov r0,#255 /* Threashold */
  mov r1,#256   /* Wert */

  subs r10, r0, r1

  bcc ifbigger
  mov r10, #0

  b ifend



  ifbigger:
  mov r10, #255

  ifend:




stop:
	nop
	bal stop


.end