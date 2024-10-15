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
/* version 1 mit bed. sprung */
  mov r0,#255 /* Threashold */
  mov r1,#256   /* Wert */

  subs r10, r0, r1

  bcc ifbigger
  mov r10, #0

  b ifend



  ifbigger:
  mov r10, #255

  ifend:



  /* reset... */
  mov r0,#0
  mov r1,#0
  mov r10,#0


  /* version 2 mit bed. ausfuehrung */
  mov r0,#255 /* Threashold */
  mov r1,#255   /* Wert */

  subs r10, r0, r1

  mov r10,#0
  movcc r10, #255




stop:
	nop
	bal stop


.end