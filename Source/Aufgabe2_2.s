/*
 * Aufgabe_2_2.S
 *
 * SoSe 2024
 *
 *  Created on: <13.11.2024>
 *      Author: <Rudi Peusquens>
 *
 *	Aufgabe : Multiplikation
 */
.text /* Specify that code goes in text segment */
.code 32 /* Select ARM instruction set */
.global main /* Specify global symbol */
main:

//Eingabe
//mov r0, #~0
mov r0, #10
 
//Faktor
mov r1, #2
//Ergebniss
mov r2, #0
//Ueberlauf
mov r9, #0 


//while:

//movs r1,r1
//beq whileEnd
//adds r3,r0
//adccs r9,r9,#0
//sub r1, #1
//b while


cmp r0,#0
beq stop
cmp r1,#0
beq stop

//do while: precheck for 0
//bne = while
do_while:
adds r2, r0
adccs r9,r9,#0
subs r1,#1
bne do_while


stop:
	nop
	bal stop

.end
