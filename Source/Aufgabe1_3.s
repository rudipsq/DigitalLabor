/*
 * Aufgabe_1_3.S
 *
 * SoSe 2024
 *
 *  Created on: 17.10.2024
 *      Author: Rudi Peusquens
 *
 *	Aufgabe : Flags und bedingte Ausführung
 */
.text /* Specify that code goes in text segment */
.code 32 /* Select ARM instruction set */
.global main /* Specify global symbol */
main:
/* 1 */
/* bed. sprung */
  mov r0,#255 /* Threashold */
  mov r1,#256   /* Wert */

  subs r10, r0, r1

  bcc ifbigger
  mov r10, #0

  b ifend

  ifbigger:
  mov r10, #255

  ifend:




  /* - - - - - - - - - - - - - - - - - - - - - - - -  */
  /* reset... */
  mov r0,#255 /* Threashold */
  mov r1,#254   /* Wert */
  mov r10,#10

  /* bed. ausfuehrung */
  subs r10, r0, r1
  mov r10,#0
  movcc r10, #255



   /* reset... */
  mov r0,#255 /* Threashold */
  mov r1,#255   /* Wert */
  mov r10,#10

  /* bed. ausfuehrung */
  subs r10, r0, r1
  mov r10,#0
  movcc r10, #255



  /* reset... */
  mov r0,#255 /* Threashold */
  mov r1,#256   /* Wert */
  mov r10,#10

  /* bed. ausfuehrung */
  subs r10, r0, r1
  mov r10,#0
  movcc r10, #255



  /* reset... */
  mov r0,#255 /* Threashold */
  mov r1,#0   /* Wert */
  mov r10,#10

  /* bed. ausfuehrung */
  subs r10, r0, r1
  mov r10,#0
  movcc r10, #255



  /* reset... */
  mov r0,#255 /* Threashold */
  mov r1,#0xffffffff   /* Wert */
  mov r10,#10

  /* bed. ausfuehrung */
  subs r10, r0, r1
  mov r10,#0
  movcc r10, #255



stop:
	nop
	bal stop


.end