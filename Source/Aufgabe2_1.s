/*
 * Aufgabe_2_1.S
 *
 * SoSe 2024
 *
 *  Created on: <10.11.2024>
 *      Author: <Rudi Peusquens>
 *
 *	Aufgabe : 64 Bit Addition
 */
.text /* Specify that code goes in text segment */
.code 32 /* Select ARM instruction set */
.global main /* Specify global symbol */
main:


/* individual items */
.equ BREAD_bm,      (1 << 0)
.equ BUTTER_bm,     (1 << 1)
.equ JAM_bm,        (1 << 2)

.equ WATER_bm,      (1 << 8)
.equ MILK_bm,       (1 << 9)
.equ RUM_bm,        (1 << 10)
.equ VINE_bm,       (1 << 11)
.equ TEA_bm,        (1 << 12)

.equ APPLE_bm,      (1 << 16)
.equ MANGO_bm,      (1 << 17)
.equ LEMON_bm,      (1 << 18)

.equ ALMOND_bm,     (1 << 24)
.equ PEANUT_bm,     (1 << 25)
.equ CHESTNUTS_bm,  (1 << 26)

/* category masks */
.equ BREAKFAST_ITEMS_bm, (BREAD_bm | BUTTER_bm | JAM_bm)
.equ DRINKS_bm,          (WATER_bm | MILK_bm | RUM_bm | VINE_bm | TEA_bm)
.equ FRUITS_bm,          (APPLE_bm | MANGO_bm | LEMON_bm)
.equ NUTS_bm,            (ALMOND_bm | PEANUT_bm | CHESTNUTS_bm)

/* breakfast mask */
.equ BREAKFAST_bm, (BREAD_bm | BUTTER_bm | JAM_bm | MILK_bm | PEANUT_bm | LEMON_bm)



    ldr r0, =BREAKFAST_bm

    
    ldr r1, =BREAKFAST_bm
    orr r1, r1, #NUTS_bm

    
    ldr r2, =BREAKFAST_bm
    bic r2, r2, #MILK_bm
    orr r2, r2, #VINE_bm

    
    ldr r3, =FRUITS_bm
    orr r3, r3, #MILK_bm
    orr r3, r3, #(MILK_bm << 16)

    
    ldr r4, =BREAKFAST_bm
    // bic r4, r4, #(BUTTER_bm | MILK_bm)
    bic r4, r4, #BUTTER_bm 
    bic r4, r4, #MILK_bm
    orr r4, r4, #TEA_bm


stop:
	nop
	bal stop

.end
