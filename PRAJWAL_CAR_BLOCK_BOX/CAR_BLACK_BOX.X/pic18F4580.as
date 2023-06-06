subtitle "Microchip MPLAB XC8 C Compiler v2.41 (Free license) build 20230208172133 Og9 "

pagewidth 120

	opt flic

	processor	18F4580
include "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\18f4580.cgen.inc"
getbyte	macro	val,pos
	(((val) >> (8 * pos)) and 0xff)
endm
byte0	macro	val
	(getbyte(val,0))
endm
byte1	macro	val
	(getbyte(val,1))
endm
byte2	macro	val
	(getbyte(val,2))
endm
byte3	macro	val
	(getbyte(val,3))
endm
byte4	macro	val
	(getbyte(val,4))
endm
byte5	macro	val
	(getbyte(val,5))
endm
byte6	macro	val
	(getbyte(val,6))
endm
byte7	macro	val
	(getbyte(val,7))
endm
getword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffff)
endm
word0	macro	val
	(getword(val,0))
endm
word1	macro	val
	(getword(val,2))
endm
word2	macro	val
	(getword(val,4))
endm
word3	macro	val
	(getword(val,6))
endm
gettword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffff)
endm
tword0	macro	val
	(gettword(val,0))
endm
tword1	macro	val
	(gettword(val,3))
endm
tword2	macro	val
	(gettword(val,6))
endm
getdword	macro	val,pos
	(((val) >> (8 * pos)) and 0xffffffff)
endm
dword0	macro	val
	(getdword(val,0))
endm
dword1	macro	val
	(getdword(val,4))
endm
clrc   macro
	bcf	status,0
endm
setc   macro
	bsf	status,0
endm
clrz   macro
	bcf	status,2
endm
setz   macro
	bsf	status,2
endm
skipnz macro
	btfsc	status,2
endm
skipz  macro
	btfss	status,2
endm
skipnc macro
	btfsc	status,0
endm
skipc  macro
	btfss	status,0
endm
pushw macro
	movwf postinc1
endm
pushf macro arg1
	movff arg1, postinc1
endm
popw macro
	movf postdec1,f
	movf indf1,w
endm
popf macro arg1
	movf postdec1,f
	movff indf1,arg1
endm
popfc macro arg1
	movff plusw1,arg1
	decfsz fsr1,f
endm
	global	__ramtop
	global	__accesstop
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
# 54 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDH equ 0D60h ;# 
# 166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6SIDL equ 0D61h ;# 
# 267 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDH equ 0D62h ;# 
# 379 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF6EIDL equ 0D63h ;# 
# 491 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDH equ 0D64h ;# 
# 603 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7SIDL equ 0D65h ;# 
# 704 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDH equ 0D66h ;# 
# 816 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF7EIDL equ 0D67h ;# 
# 928 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDH equ 0D68h ;# 
# 1040 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8SIDL equ 0D69h ;# 
# 1141 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDH equ 0D6Ah ;# 
# 1253 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF8EIDL equ 0D6Bh ;# 
# 1365 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDH equ 0D70h ;# 
# 1477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9SIDL equ 0D71h ;# 
# 1578 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDH equ 0D72h ;# 
# 1690 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF9EIDL equ 0D73h ;# 
# 1802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDH equ 0D74h ;# 
# 1914 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10SIDL equ 0D75h ;# 
# 2015 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDH equ 0D76h ;# 
# 2127 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF10EIDL equ 0D77h ;# 
# 2239 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDH equ 0D78h ;# 
# 2351 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11SIDL equ 0D79h ;# 
# 2452 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDH equ 0D7Ah ;# 
# 2564 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF11EIDL equ 0D7Bh ;# 
# 2676 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDH equ 0D80h ;# 
# 2788 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12SIDL equ 0D81h ;# 
# 2889 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDH equ 0D82h ;# 
# 3001 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF12EIDL equ 0D83h ;# 
# 3113 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDH equ 0D84h ;# 
# 3225 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13SIDL equ 0D85h ;# 
# 3326 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDH equ 0D86h ;# 
# 3438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF13EIDL equ 0D87h ;# 
# 3550 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDH equ 0D88h ;# 
# 3662 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14SIDL equ 0D89h ;# 
# 3763 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDH equ 0D8Ah ;# 
# 3875 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF14EIDL equ 0D8Bh ;# 
# 3987 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDH equ 0D90h ;# 
# 4099 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15SIDL equ 0D91h ;# 
# 4200 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDH equ 0D92h ;# 
# 4312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF15EIDL equ 0D93h ;# 
# 4424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON0 equ 0DD4h ;# 
# 4486 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFCON1 equ 0DD5h ;# 
# 4548 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SDFLC equ 0DD8h ;# 
# 4624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON0 equ 0DE0h ;# 
# 4694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON1 equ 0DE1h ;# 
# 4764 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON2 equ 0DE2h ;# 
# 4834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON3 equ 0DE3h ;# 
# 4904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON4 equ 0DE4h ;# 
# 4974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON5 equ 0DE5h ;# 
# 5044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON6 equ 0DE6h ;# 
# 5114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXFBCON7 equ 0DE7h ;# 
# 5184 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL0 equ 0DF0h ;# 
# 5246 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL1 equ 0DF1h ;# 
# 5308 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL2 equ 0DF2h ;# 
# 5370 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MSEL3 equ 0DF3h ;# 
# 5432 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSEL0 equ 0DF8h ;# 
# 5483 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BIE0 equ 0DFAh ;# 
# 5559 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXBIE equ 0DFCh ;# 
# 5613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0CON equ 0E20h ;# 
# 5884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDH equ 0E21h ;# 
# 5996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0SIDL equ 0E22h ;# 
# 6107 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDH equ 0E23h ;# 
# 6219 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0EIDL equ 0E24h ;# 
# 6331 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0DLC equ 0E25h ;# 
# 6461 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D0 equ 0E26h ;# 
# 6523 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D1 equ 0E27h ;# 
# 6585 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D2 equ 0E28h ;# 
# 6647 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D3 equ 0E29h ;# 
# 6709 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D4 equ 0E2Ah ;# 
# 6771 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D5 equ 0E2Bh ;# 
# 6833 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D6 equ 0E2Ch ;# 
# 6895 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B0D7 equ 0E2Dh ;# 
# 6957 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO9 equ 0E2Eh ;# 
# 7051 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO9 equ 0E2Fh ;# 
# 7134 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1CON equ 0E30h ;# 
# 7405 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDH equ 0E31h ;# 
# 7517 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1SIDL equ 0E32h ;# 
# 7628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDH equ 0E33h ;# 
# 7740 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1EIDL equ 0E34h ;# 
# 7852 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1DLC equ 0E35h ;# 
# 7982 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D0 equ 0E36h ;# 
# 8044 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D1 equ 0E37h ;# 
# 8106 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D2 equ 0E38h ;# 
# 8168 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D3 equ 0E39h ;# 
# 8230 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D4 equ 0E3Ah ;# 
# 8292 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D5 equ 0E3Bh ;# 
# 8354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D6 equ 0E3Ch ;# 
# 8416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B1D7 equ 0E3Dh ;# 
# 8478 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO8 equ 0E3Eh ;# 
# 8572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO8 equ 0E3Fh ;# 
# 8655 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2CON equ 0E40h ;# 
# 8926 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDH equ 0E41h ;# 
# 9038 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2SIDL equ 0E42h ;# 
# 9158 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDH equ 0E43h ;# 
# 9270 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2EIDL equ 0E44h ;# 
# 9382 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2DLC equ 0E45h ;# 
# 9512 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D0 equ 0E46h ;# 
# 9574 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D1 equ 0E47h ;# 
# 9636 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D2 equ 0E48h ;# 
# 9698 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D3 equ 0E49h ;# 
# 9760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D4 equ 0E4Ah ;# 
# 9822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D5 equ 0E4Bh ;# 
# 9884 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D6 equ 0E4Ch ;# 
# 9946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B2D7 equ 0E4Dh ;# 
# 10008 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO7 equ 0E4Eh ;# 
# 10102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO7 equ 0E4Fh ;# 
# 10185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3CON equ 0E50h ;# 
# 10456 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDH equ 0E51h ;# 
# 10568 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3SIDL equ 0E52h ;# 
# 10688 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDH equ 0E53h ;# 
# 10800 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3EIDL equ 0E54h ;# 
# 10912 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3DLC equ 0E55h ;# 
# 11042 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D0 equ 0E56h ;# 
# 11104 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D1 equ 0E57h ;# 
# 11166 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D2 equ 0E58h ;# 
# 11228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D3 equ 0E59h ;# 
# 11290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D4 equ 0E5Ah ;# 
# 11352 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D5 equ 0E5Bh ;# 
# 11414 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D6 equ 0E5Ch ;# 
# 11476 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B3D7 equ 0E5Dh ;# 
# 11538 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO6 equ 0E5Eh ;# 
# 11632 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO6 equ 0E5Fh ;# 
# 11715 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4CON equ 0E60h ;# 
# 11986 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDH equ 0E61h ;# 
# 12098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4SIDL equ 0E62h ;# 
# 12218 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDH equ 0E63h ;# 
# 12330 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4EIDL equ 0E64h ;# 
# 12442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4DLC equ 0E65h ;# 
# 12572 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D0 equ 0E66h ;# 
# 12634 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D1 equ 0E67h ;# 
# 12696 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D2 equ 0E68h ;# 
# 12758 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D3 equ 0E69h ;# 
# 12820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D4 equ 0E6Ah ;# 
# 12882 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D5 equ 0E6Bh ;# 
# 12944 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D6 equ 0E6Ch ;# 
# 13006 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B4D7 equ 0E6Dh ;# 
# 13077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO5 equ 0E6Eh ;# 
# 13171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO5 equ 0E6Fh ;# 
# 13254 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5CON equ 0E70h ;# 
# 13525 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDH equ 0E71h ;# 
# 13637 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5SIDL equ 0E72h ;# 
# 13766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDH equ 0E73h ;# 
# 13878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5EIDL equ 0E74h ;# 
# 13990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5DLC equ 0E75h ;# 
# 14114 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D0 equ 0E76h ;# 
# 14185 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D1 equ 0E77h ;# 
# 14247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D2 equ 0E78h ;# 
# 14318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D3 equ 0E79h ;# 
# 14380 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D4 equ 0E7Ah ;# 
# 14442 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D5 equ 0E7Bh ;# 
# 14504 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D6 equ 0E7Ch ;# 
# 14566 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
B5D7 equ 0E7Dh ;# 
# 14628 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO4 equ 0E7Eh ;# 
# 14722 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO4 equ 0E7Fh ;# 
# 14805 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDH equ 0F00h ;# 
# 14917 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0SIDL equ 0F01h ;# 
# 15018 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDH equ 0F02h ;# 
# 15130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF0EIDL equ 0F03h ;# 
# 15242 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDH equ 0F04h ;# 
# 15354 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1SIDL equ 0F05h ;# 
# 15455 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDH equ 0F06h ;# 
# 15567 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF1EIDL equ 0F07h ;# 
# 15679 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDH equ 0F08h ;# 
# 15791 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2SIDL equ 0F09h ;# 
# 15892 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDH equ 0F0Ah ;# 
# 16004 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF2EIDL equ 0F0Bh ;# 
# 16116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDH equ 0F0Ch ;# 
# 16228 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3SIDL equ 0F0Dh ;# 
# 16329 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDH equ 0F0Eh ;# 
# 16441 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF3EIDL equ 0F0Fh ;# 
# 16553 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDH equ 0F10h ;# 
# 16665 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4SIDL equ 0F11h ;# 
# 16766 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDH equ 0F12h ;# 
# 16878 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF4EIDL equ 0F13h ;# 
# 16990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDH equ 0F14h ;# 
# 17102 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5SIDL equ 0F15h ;# 
# 17203 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDH equ 0F16h ;# 
# 17315 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXF5EIDL equ 0F17h ;# 
# 17427 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDH equ 0F18h ;# 
# 17539 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0SIDL equ 0F19h ;# 
# 17631 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDH equ 0F1Ah ;# 
# 17743 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM0EIDL equ 0F1Bh ;# 
# 17855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDH equ 0F1Ch ;# 
# 17967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1SIDL equ 0F1Dh ;# 
# 18059 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDH equ 0F1Eh ;# 
# 18171 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXM1EIDL equ 0F1Fh ;# 
# 18283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2CON equ 0F20h ;# 
# 18394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDH equ 0F21h ;# 
# 18506 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2SIDL equ 0F22h ;# 
# 18598 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDH equ 0F23h ;# 
# 18710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2EIDL equ 0F24h ;# 
# 18822 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2DLC equ 0F25h ;# 
# 18900 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D0 equ 0F26h ;# 
# 18962 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D1 equ 0F27h ;# 
# 19024 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D2 equ 0F28h ;# 
# 19086 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D3 equ 0F29h ;# 
# 19148 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D4 equ 0F2Ah ;# 
# 19210 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D5 equ 0F2Bh ;# 
# 19272 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D6 equ 0F2Ch ;# 
# 19334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB2D7 equ 0F2Dh ;# 
# 19396 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO3 equ 0F2Eh ;# 
# 19490 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO3 equ 0F2Fh ;# 
# 19573 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1CON equ 0F30h ;# 
# 19684 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDH equ 0F31h ;# 
# 19796 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1SIDL equ 0F32h ;# 
# 19888 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDH equ 0F33h ;# 
# 20000 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1EIDL equ 0F34h ;# 
# 20112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1DLC equ 0F35h ;# 
# 20190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D0 equ 0F36h ;# 
# 20252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D1 equ 0F37h ;# 
# 20314 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D2 equ 0F38h ;# 
# 20376 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D3 equ 0F39h ;# 
# 20438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D4 equ 0F3Ah ;# 
# 20500 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D5 equ 0F3Bh ;# 
# 20562 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D6 equ 0F3Ch ;# 
# 20624 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB1D7 equ 0F3Dh ;# 
# 20686 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO2 equ 0F3Eh ;# 
# 20780 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO2 equ 0F3Fh ;# 
# 20863 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0CON equ 0F40h ;# 
# 20965 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDH equ 0F41h ;# 
# 21077 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0SIDL equ 0F42h ;# 
# 21169 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDH equ 0F43h ;# 
# 21281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0EIDL equ 0F44h ;# 
# 21393 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0DLC equ 0F45h ;# 
# 21471 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D0 equ 0F46h ;# 
# 21533 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D1 equ 0F47h ;# 
# 21595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D2 equ 0F48h ;# 
# 21657 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D3 equ 0F49h ;# 
# 21719 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D4 equ 0F4Ah ;# 
# 21781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D5 equ 0F4Bh ;# 
# 21843 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D6 equ 0F4Ch ;# 
# 21905 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXB0D7 equ 0F4Dh ;# 
# 21967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO1 equ 0F4Eh ;# 
# 22061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO1 equ 0F4Fh ;# 
# 22144 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1CON equ 0F50h ;# 
# 22304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDH equ 0F51h ;# 
# 22416 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1SIDL equ 0F52h ;# 
# 22518 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDH equ 0F53h ;# 
# 22630 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1EIDL equ 0F54h ;# 
# 22742 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1DLC equ 0F55h ;# 
# 22857 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D0 equ 0F56h ;# 
# 22919 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D1 equ 0F57h ;# 
# 22981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D2 equ 0F58h ;# 
# 23043 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D3 equ 0F59h ;# 
# 23105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D4 equ 0F5Ah ;# 
# 23167 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D5 equ 0F5Bh ;# 
# 23229 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D6 equ 0F5Ch ;# 
# 23291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB1D7 equ 0F5Dh ;# 
# 23353 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT_RO0 equ 0F5Eh ;# 
# 23447 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON_RO0 equ 0F5Fh ;# 
# 23530 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0CON equ 0F60h ;# 
# 23723 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDH equ 0F61h ;# 
# 23835 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0SIDL equ 0F62h ;# 
# 23937 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDH equ 0F63h ;# 
# 24049 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0EIDL equ 0F64h ;# 
# 24161 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0DLC equ 0F65h ;# 
# 24276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D0 equ 0F66h ;# 
# 24338 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D1 equ 0F67h ;# 
# 24400 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D2 equ 0F68h ;# 
# 24462 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D3 equ 0F69h ;# 
# 24524 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D4 equ 0F6Ah ;# 
# 24586 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D5 equ 0F6Bh ;# 
# 24648 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D6 equ 0F6Ch ;# 
# 24710 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXB0D7 equ 0F6Dh ;# 
# 24772 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANSTAT equ 0F6Eh ;# 
# 24881 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CANCON equ 0F6Fh ;# 
# 24985 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON1 equ 0F70h ;# 
# 25047 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON2 equ 0F71h ;# 
# 25118 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BRGCON3 equ 0F72h ;# 
# 25163 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CIOCON equ 0F73h ;# 
# 25190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
COMSTAT equ 0F74h ;# 
# 25312 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RXERRCNT equ 0F75h ;# 
# 25374 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXERRCNT equ 0F76h ;# 
# 25436 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECANCON equ 0F77h ;# 
# 25507 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTA equ 0F80h ;# 
# 25716 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTB equ 0F81h ;# 
# 25890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTC equ 0F82h ;# 
# 26060 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTD equ 0F83h ;# 
# 26240 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PORTE equ 0F84h ;# 
# 26339 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATA equ 0F89h ;# 
# 26451 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATB equ 0F8Ah ;# 
# 26563 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATC equ 0F8Bh ;# 
# 26675 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATD equ 0F8Ch ;# 
# 26787 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LATE equ 0F8Dh ;# 
# 26839 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISA equ 0F92h ;# 
# 26844 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRA equ 0F92h ;# 
# 27061 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISB equ 0F93h ;# 
# 27066 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRB equ 0F93h ;# 
# 27283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISC equ 0F94h ;# 
# 27288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRC equ 0F94h ;# 
# 27505 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISD equ 0F95h ;# 
# 27510 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRD equ 0F95h ;# 
# 27727 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TRISE equ 0F96h ;# 
# 27732 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
DDRE equ 0F96h ;# 
# 27879 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCTUNE equ 0F9Bh ;# 
# 27951 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE1 equ 0F9Dh ;# 
# 28028 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR1 equ 0F9Eh ;# 
# 28105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR1 equ 0F9Fh ;# 
# 28191 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE2 equ 0FA0h ;# 
# 28257 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR2 equ 0FA1h ;# 
# 28323 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR2 equ 0FA2h ;# 
# 28389 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIE3 equ 0FA3h ;# 
# 28496 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PIR3 equ 0FA4h ;# 
# 28595 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
IPR3 equ 0FA5h ;# 
# 28694 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON1 equ 0FA6h ;# 
# 28760 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EECON2 equ 0FA7h ;# 
# 28767 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEDATA equ 0FA8h ;# 
# 28774 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
EEADR equ 0FA9h ;# 
# 28781 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA equ 0FABh ;# 
# 28786 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCSTA1 equ 0FABh ;# 
# 28991 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA equ 0FACh ;# 
# 28996 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXSTA1 equ 0FACh ;# 
# 29247 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG equ 0FADh ;# 
# 29252 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TXREG1 equ 0FADh ;# 
# 29259 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG equ 0FAEh ;# 
# 29264 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCREG1 equ 0FAEh ;# 
# 29271 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG equ 0FAFh ;# 
# 29276 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRG1 equ 0FAFh ;# 
# 29283 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SPBRGH equ 0FB0h ;# 
# 29290 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T3CON equ 0FB1h ;# 
# 29417 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3 equ 0FB2h ;# 
# 29424 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3L equ 0FB2h ;# 
# 29431 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR3H equ 0FB3h ;# 
# 29438 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CMCON equ 0FB4h ;# 
# 29528 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CVRCON equ 0FB5h ;# 
# 29613 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1AS equ 0FB6h ;# 
# 29695 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1DEL equ 0FB7h ;# 
# 29765 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCON equ 0FB8h ;# 
# 29770 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BAUDCTL equ 0FB8h ;# 
# 29931 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCP1CON equ 0FBAh ;# 
# 30013 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1 equ 0FBBh ;# 
# 30020 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1L equ 0FBBh ;# 
# 30027 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ECCPR1H equ 0FBCh ;# 
# 30034 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCP1CON equ 0FBDh ;# 
# 30098 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1 equ 0FBEh ;# 
# 30105 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1L equ 0FBEh ;# 
# 30112 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
CCPR1H equ 0FBFh ;# 
# 30119 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON2 equ 0FC0h ;# 
# 30190 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON1 equ 0FC1h ;# 
# 30275 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADCON0 equ 0FC2h ;# 
# 30394 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRES equ 0FC3h ;# 
# 30401 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESL equ 0FC3h ;# 
# 30408 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
ADRESH equ 0FC4h ;# 
# 30415 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON2 equ 0FC5h ;# 
# 30477 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPCON1 equ 0FC6h ;# 
# 30547 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPSTAT equ 0FC7h ;# 
# 30795 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPADD equ 0FC8h ;# 
# 30802 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
SSPBUF equ 0FC9h ;# 
# 30809 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T2CON equ 0FCAh ;# 
# 30880 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PR2 equ 0FCBh ;# 
# 30885 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
MEMCON equ 0FCBh ;# 
# 30990 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR2 equ 0FCCh ;# 
# 30997 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T1CON equ 0FCDh ;# 
# 31109 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1 equ 0FCEh ;# 
# 31116 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1L equ 0FCEh ;# 
# 31123 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR1H equ 0FCFh ;# 
# 31130 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
RCON equ 0FD0h ;# 
# 31263 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WDTCON equ 0FD1h ;# 
# 31291 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
HLVDCON equ 0FD2h ;# 
# 31296 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
LVDCON equ 0FD2h ;# 
# 31561 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
OSCCON equ 0FD3h ;# 
# 31638 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
T0CON equ 0FD5h ;# 
# 31714 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0 equ 0FD6h ;# 
# 31721 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0L equ 0FD6h ;# 
# 31728 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TMR0H equ 0FD7h ;# 
# 31735 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STATUS equ 0FD8h ;# 
# 31806 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2 equ 0FD9h ;# 
# 31813 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2L equ 0FD9h ;# 
# 31820 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR2H equ 0FDAh ;# 
# 31827 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW2 equ 0FDBh ;# 
# 31834 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC2 equ 0FDCh ;# 
# 31841 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC2 equ 0FDDh ;# 
# 31848 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC2 equ 0FDEh ;# 
# 31855 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF2 equ 0FDFh ;# 
# 31862 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
BSR equ 0FE0h ;# 
# 31869 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1 equ 0FE1h ;# 
# 31876 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1L equ 0FE1h ;# 
# 31883 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR1H equ 0FE2h ;# 
# 31890 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW1 equ 0FE3h ;# 
# 31897 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC1 equ 0FE4h ;# 
# 31904 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC1 equ 0FE5h ;# 
# 31911 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC1 equ 0FE6h ;# 
# 31918 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF1 equ 0FE7h ;# 
# 31925 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
WREG equ 0FE8h ;# 
# 31932 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0 equ 0FE9h ;# 
# 31939 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0L equ 0FE9h ;# 
# 31946 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
FSR0H equ 0FEAh ;# 
# 31953 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PLUSW0 equ 0FEBh ;# 
# 31960 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PREINC0 equ 0FECh ;# 
# 31967 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTDEC0 equ 0FEDh ;# 
# 31974 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
POSTINC0 equ 0FEEh ;# 
# 31981 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INDF0 equ 0FEFh ;# 
# 31988 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON3 equ 0FF0h ;# 
# 32080 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON2 equ 0FF1h ;# 
# 32157 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
INTCON equ 0FF2h ;# 
# 32274 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PROD equ 0FF3h ;# 
# 32281 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODL equ 0FF3h ;# 
# 32288 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PRODH equ 0FF4h ;# 
# 32295 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TABLAT equ 0FF5h ;# 
# 32304 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTR equ 0FF6h ;# 
# 32311 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRL equ 0FF6h ;# 
# 32318 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRH equ 0FF7h ;# 
# 32325 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TBLPTRU equ 0FF8h ;# 
# 32334 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLAT equ 0FF9h ;# 
# 32341 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PC equ 0FF9h ;# 
# 32348 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCL equ 0FF9h ;# 
# 32355 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATH equ 0FFAh ;# 
# 32362 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
PCLATU equ 0FFBh ;# 
# 32369 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
STKPTR equ 0FFCh ;# 
# 32443 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOS equ 0FFDh ;# 
# 32450 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSL equ 0FFDh ;# 
# 32457 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSH equ 0FFEh ;# 
# 32464 "C:\Program Files\Microchip\xc8\v2.41\pic\include\proc\pic18f4580.h"
TOSU equ 0FFFh ;# 
	debug_source C
	FNCALL	_main,_Enter_menu
	FNCALL	_main,_Enter_password
	FNCALL	_main,_change_event
	FNCALL	_main,_display_event
	FNCALL	_main,_display_time
	FNCALL	_main,_get_time
	FNCALL	_main,_init_config
	FNCALL	_main,_read_switches
	FNCALL	_main,_view_menu
	FNCALL	_view_menu,___wmul
	FNCALL	_view_menu,_clcd_print
	FNCALL	_view_menu,_clcd_putch
	FNCALL	_view_menu,_clcd_write
	FNCALL	_view_menu,_read_switches
	FNCALL	_init_config,_clcd_print
	FNCALL	_init_config,_clcd_write
	FNCALL	_init_config,_init_adc
	FNCALL	_init_config,_init_clcd
	FNCALL	_init_config,_init_ds1307
	FNCALL	_init_config,_init_i2c
	FNCALL	_init_config,_init_matrix_keypad
	FNCALL	_init_config,_init_uart
	FNCALL	_init_ds1307,_read_ds1307
	FNCALL	_init_ds1307,_write_ds1307
	FNCALL	_init_clcd,_clcd_write
	FNCALL	_get_time,_read_ds1307
	FNCALL	_read_ds1307,_i2c_read
	FNCALL	_read_ds1307,_i2c_rep_start
	FNCALL	_read_ds1307,_i2c_start
	FNCALL	_read_ds1307,_i2c_stop
	FNCALL	_read_ds1307,_i2c_write
	FNCALL	_display_time,___ftdiv
	FNCALL	_display_time,___fttol
	FNCALL	_display_time,___lwdiv
	FNCALL	_display_time,___lwmod
	FNCALL	_display_time,___lwtoft
	FNCALL	_display_time,_clcd_print
	FNCALL	_display_time,_clcd_putch
	FNCALL	_display_time,_read_adc
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_display_event,_clcd_print
	FNCALL	_change_event,_read_switches
	FNCALL	_change_event,_store_event
	FNCALL	_store_event,___lwdiv
	FNCALL	_store_event,___lwmod
	FNCALL	_store_event,_store_external_eeprom
	FNCALL	_store_external_eeprom,_write_external_eeprom
	FNCALL	_Enter_password,_clcd_print
	FNCALL	_Enter_password,_clcd_putch
	FNCALL	_Enter_password,_clcd_write
	FNCALL	_Enter_password,_read_external_eeprom
	FNCALL	_Enter_password,_read_switches
	FNCALL	_Enter_menu,_Download_log
	FNCALL	_Enter_menu,_change_password
	FNCALL	_Enter_menu,_clear_log
	FNCALL	_Enter_menu,_set_time
	FNCALL	_Enter_menu,_view_log
	FNCALL	_view_log,_clcd_print
	FNCALL	_view_log,_clcd_putch
	FNCALL	_view_log,_clcd_write
	FNCALL	_view_log,_read_external_eeprom
	FNCALL	_view_log,_read_switches
	FNCALL	_set_time,___lbmod
	FNCALL	_set_time,_clcd_print
	FNCALL	_set_time,_read_switches
	FNCALL	_set_time,_write_ds1307
	FNCALL	_write_ds1307,_i2c_start
	FNCALL	_write_ds1307,_i2c_stop
	FNCALL	_write_ds1307,_i2c_write
	FNCALL	_clear_log,_clcd_print
	FNCALL	_clear_log,_clcd_write
	FNCALL	_clear_log,_read_switches
	FNCALL	_change_password,_clcd_print
	FNCALL	_change_password,_clcd_putch
	FNCALL	_change_password,_clcd_write
	FNCALL	_change_password,_read_switches
	FNCALL	_change_password,_write_external_eeprom
	FNCALL	_write_external_eeprom,_i2c_start
	FNCALL	_write_external_eeprom,_i2c_stop
	FNCALL	_write_external_eeprom,_i2c_write
	FNCALL	_read_switches,_scan_key
	FNCALL	_clcd_putch,_clcd_write
	FNCALL	_Download_log,_clcd_print
	FNCALL	_Download_log,_puts
	FNCALL	_Download_log,_read_external_eeprom
	FNCALL	_read_external_eeprom,_i2c_read
	FNCALL	_read_external_eeprom,_i2c_rep_start
	FNCALL	_read_external_eeprom,_i2c_start
	FNCALL	_read_external_eeprom,_i2c_stop
	FNCALL	_read_external_eeprom,_i2c_write
	FNCALL	_i2c_write,_i2c_idle
	FNCALL	_i2c_stop,_i2c_idle
	FNCALL	_i2c_start,_i2c_idle
	FNCALL	_i2c_rep_start,_i2c_idle
	FNCALL	_i2c_read,_i2c_no_ack
	FNCALL	_i2c_read,_i2c_rx_mode
	FNCALL	_i2c_rx_mode,_i2c_idle
	FNCALL	_puts,_putch
	FNCALL	_clcd_print,_clcd_write
	FNROOT	_main
	FNCALL	intlevel2,_isr
	global	intlevel2
	FNROOT	intlevel2
	global	read_switches@once
	global	_d
	global	_Event1
	global	view_menu@view_array
psect	idataCOMRAM,class=CODE,space=0,delta=1,noexec
global __pidataCOMRAM
__pidataCOMRAM:
	file	"matrix_keypad.c"
	line	90

;initializer for read_switches@once
	db	low(01h)
	file	"main.c"
	line	25

;initializer for _d
	db	low(04h)
psect	idataBANK0,class=CODE,space=0,delta=1,noexec
global __pidataBANK0
__pidataBANK0:
	line	22

;initializer for _Event1
	db	low(04Fh)
	db	low(04Eh)
	db	low(0)
	db	low(047h)
	db	low(04Eh)
	db	low(0)
	db	low(047h)
	db	low(052h)
	db	low(0)
	db	low(047h)
	db	low(031h)
	db	low(0)
	db	low(047h)
	db	low(032h)
	db	low(0)
	db	low(047h)
	db	low(033h)
	db	low(0)
	db	low(047h)
	db	low(034h)
	db	low(0)
	db	low(047h)
	db	low(035h)
	db	low(0)
	db	low(043h)
	db	low(04Ch)
	db	low(0)
psect	idataBANK1,class=CODE,space=0,delta=1,noexec
global __pidataBANK1
__pidataBANK1:
	line	115

;initializer for view_menu@view_array
	db	low(056h)
	db	low(069h)
	db	low(065h)
	db	low(077h)
	db	low(020h)
	db	low(04Ch)
	db	low(06Fh)
	db	low(067h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(0)
	db	low(043h)
	db	low(06Ch)
	db	low(065h)
	db	low(061h)
	db	low(072h)
	db	low(020h)
	db	low(04Ch)
	db	low(06Fh)
	db	low(067h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(0)
	db   0
	db   0
	db	low(044h)
	db	low(06Fh)
	db	low(077h)
	db	low(06Eh)
	db	low(06Ch)
	db	low(06Fh)
	db	low(061h)
	db	low(064h)
	db	low(020h)
	db	low(04Ch)
	db	low(06Fh)
	db	low(067h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(0)
	db   0
	db	low(053h)
	db	low(065h)
	db	low(074h)
	db	low(020h)
	db	low(054h)
	db	low(069h)
	db	low(06Dh)
	db	low(065h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(0)
	db   0
	db	low(043h)
	db	low(068h)
	db	low(061h)
	db	low(06Eh)
	db	low(067h)
	db	low(065h)
	db	low(020h)
	db	low(050h)
	db	low(061h)
	db	low(073h)
	db	low(073h)
	db	low(077h)
	db	low(06Fh)
	db	low(072h)
	db	low(064h)
	db	low(0)
	db   0
	db	low(03Ch)
	db	low(03Ch)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(045h)
	db	low(058h)
	db	low(049h)
	db	low(054h)
	db	low(020h)
	db	low(020h)
	db	low(020h)
	db	low(03Eh)
	db	low(03Eh)
	db	low(020h)
	db	low(0)
	db   0
	global	_clock_reg
	global	isr@count
	global	_blink
	global	change_password@psswd
	global	change_password@i
	global	change_password@choice
	global	change_password@re_pass
	global	set_time@car
	global	set_time@cal
	global	view_log@menu
	global	view_log@value2
	global	view_log@value1
	global	view_menu@delay2
	global	view_menu@delay1
	global	view_menu@menu
	global	_password
	global	_speed
	global	read_switches@key
	global	set_time@val
	global	Download_log@b
	global	Download_log@i
	global	Enter_password@input
	global	Enter_password@attempt
	global	_select_flag
	global	_choose_flag
	global	_clear_flag
	global	_count
	global	_event
	global	_store_data
	global	_time
	global	_RCREG
_RCREG	set	0xFAE
	global	_TXREG
_TXREG	set	0xFAD
	global	_SPBRG
_SPBRG	set	0xFAF
	global	_SSPADD
_SSPADD	set	0xFC8
	global	_SSPCON1
_SSPCON1	set	0xFC6
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ABDOVF
_ABDOVF	set	0x7DC7
	global	_ACKSTAT
_ACKSTAT	set	0x7E2E
	global	_CKE
_CKE	set	0x7E3E
	global	_VCFG1
_VCFG1	set	0x7E0D
	global	_GODONE
_GODONE	set	0x7E11
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_PORTBbits
_PORTBbits	set	0xF81
	global	_ADCON1
_ADCON1	set	0xFC1
	global	_ADCON0
_ADCON0	set	0xFC2
	global	_RD7
_RD7	set	0x7C1F
	global	_RC0
_RC0	set	0x7C10
	global	_RC2
_RC2	set	0x7C12
	global	_RCIF
_RCIF	set	0x7CF5
	global	_RCIE
_RCIE	set	0x7CED
	global	_TXIF
_TXIF	set	0x7CF4
	global	_ABDEN
_ABDEN	set	0x7DC0
	global	_WUE
_WUE	set	0x7DC1
	global	_BRG16
_BRG16	set	0x7DC3
	global	_SCKP
_SCKP	set	0x7DC4
	global	_RCIDL
_RCIDL	set	0x7DC6
	global	_RX9D
_RX9D	set	0x7D58
	global	_OERR
_OERR	set	0x7D59
	global	_FERR
_FERR	set	0x7D5A
	global	_ADDEN
_ADDEN	set	0x7D5B
	global	_CREN
_CREN	set	0x7D5C
	global	_SREN
_SREN	set	0x7D5D
	global	_RX9
_RX9	set	0x7D5E
	global	_TX9D
_TX9D	set	0x7D60
	global	_TRMT
_TRMT	set	0x7D61
	global	_BRGH
_BRGH	set	0x7D62
	global	_SENDB
_SENDB	set	0x7D63
	global	_SYNC
_SYNC	set	0x7D64
	global	_TXEN
_TXEN	set	0x7D65
	global	_TX9
_TX9	set	0x7D66
	global	_TRISC6
_TRISC6	set	0x7CA6
	global	_TRISC7
_TRISC7	set	0x7CA7
	global	_TMR2IF
_TMR2IF	set	0x7CF1
	global	_ACKEN
_ACKEN	set	0x7E2C
	global	_ACKDT
_ACKDT	set	0x7E2D
	global	_RCEN
_RCEN	set	0x7E2B
	global	_RSEN
_RSEN	set	0x7E29
	global	_PEN
_PEN	set	0x7E2A
	global	_SEN
_SEN	set	0x7E28
	global	_SMP
_SMP	set	0x7E3F
	global	_TRISC4
_TRISC4	set	0x7CA4
	global	_GO
_GO	set	0x7E11
	global	_ADON
_ADON	set	0x7E10
	global	_VCFG0
_VCFG0	set	0x7E0C
	global	_ADCS2
_ADCS2	set	0x7E02
	global	_ADCS1
_ADCS1	set	0x7E01
	global	_ADCS0
_ADCS0	set	0x7E00
	global	_ACQT0
_ACQT0	set	0x7E03
	global	_ACQT1
_ACQT1	set	0x7E04
	global	_ACQT2
_ACQT2	set	0x7E05
	global	_PORTB
_PORTB	set	0xF81
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC3
_TRISC3	set	0x7CA3
	global	_ADFM
_ADFM	set	0x7E07
	global	_TRISD7
_TRISD7	set	0x7CAF
	global	_TXIE
_TXIE	set	0x7CEC
	global	_SSPIF
_SSPIF	set	0x7CF3
	global	_PR2
_PR2	set	0xFCB
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_TMR2ON
_TMR2ON	set	0x7E52
	global	_RBPU
_RBPU	set	0x7F8F
	global	_BCLIF
_BCLIF	set	0x7D0B
	global	_SPEN
_SPEN	set	0x7D5F
	global	_CSRC
_CSRC	set	0x7D67
	global	_PORTD
_PORTD	set	0xF83
	global	_RC1
_RC1	set	0x7C11
psect	mediumconst,class=MEDIUMCONST,space=0,reloc=2,noexec
global __pmediumconst
__pmediumconst:
	db	0
	
STR_11:
	db	68	;'D'
	db	111	;'o'
	db	119	;'w'
	db	110	;'n'
	db	108	;'l'
	db	111	;'o'
	db	97	;'a'
	db	100	;'d'
	db	32
	db	99	;'c'
	db	111	;'o'
	db	109	;'m'
	db	112	;'p'
	db	108	;'l'
	db	101	;'e'
	db	116	;'t'
	db	101	;'e'
	db	100	;'d'
	db	0
	
STR_15:
	db	82	;'R'
	db	101	;'e'
	db	101	;'e'
	db	32
	db	69	;'E'
	db	110	;'n'
	db	116	;'t'
	db	101	;'e'
	db	114	;'r'
	db	32
	db	112	;'p'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	0
	
STR_13:
	db	83	;'S'
	db	97	;'a'
	db	118	;'v'
	db	101	;'e'
	db	100	;'d'
	db	32
	db	84	;'T'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	32
	db	105	;'i'
	db	110	;'n'
	db	32
	db	82	;'R'
	db	84	;'T'
	db	67	;'C'
	db	0
	
STR_4:
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_2:
	db	32
	db	32
	db	32
	db	84	;'T'
	db	114	;'r'
	db	121	;'y'
	db	95	;'_'
	db	65	;'A'
	db	103	;'g'
	db	97	;'a'
	db	105	;'i'
	db	110	;'n'
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_12:
	db	84	;'T'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	32
	db	40
	db	72	;'H'
	db	72	;'H'
	db	58	;':'
	db	77	;'M'
	db	77	;'M'
	db	58	;':'
	db	83	;'S'
	db	83	;'S'
	db	41
	db	32
	db	0
	
STR_5:
	db	95	;'_'
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	95	;'_'
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	32
	db	0
	
STR_19:
	db	32
	db	32
	db	84	;'T'
	db	73	;'I'
	db	77	;'M'
	db	69	;'E'
	db	32
	db	32
	db	32
	db	32
	db	69	;'E'
	db	86	;'V'
	db	32
	db	32
	db	83	;'S'
	db	80	;'P'
	db	0
	
STR_16:
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	32
	db	99	;'c'
	db	104	;'h'
	db	97	;'a'
	db	110	;'n'
	db	103	;'g'
	db	101	;'e'
	db	100	;'d'
	db	0
	
STR_3:
	db	32
	db	32
	db	84	;'T'
	db	105	;'i'
	db	109	;'m'
	db	101	;'e'
	db	32
	db	108	;'l'
	db	101	;'e'
	db	102	;'f'
	db	116	;'t'
	db	32
	db	32
	db	32
	db	32
	db	0
	
STR_1:
	db	69	;'E'
	db	78	;'N'
	db	84	;'T'
	db	69	;'E'
	db	82	;'R'
	db	32
	db	80	;'P'
	db	65	;'A'
	db	83	;'S'
	db	83	;'S'
	db	87	;'W'
	db	79	;'O'
	db	82	;'R'
	db	68	;'D'
	db	0
	
STR_18:
	db	87	;'W'
	db	114	;'r'
	db	111	;'o'
	db	110	;'n'
	db	103	;'g'
	db	32
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	0
	
STR_14:
	db	69	;'E'
	db	110	;'n'
	db	116	;'t'
	db	101	;'e'
	db	114	;'r'
	db	32
	db	80	;'P'
	db	97	;'a'
	db	115	;'s'
	db	115	;'s'
	db	119	;'w'
	db	111	;'o'
	db	114	;'r'
	db	100	;'d'
	db	0
	
STR_7:
	db	78	;'N'
	db	111	;'o'
	db	32
	db	108	;'l'
	db	111	;'o'
	db	103	;'g'
	db	32
	db	102	;'f'
	db	111	;'o'
	db	117	;'u'
	db	110	;'n'
	db	100	;'d'
	db	32
	db	0
	
STR_17:
	db	83	;'S'
	db	117	;'u'
	db	99	;'c'
	db	99	;'c'
	db	101	;'e'
	db	115	;'s'
	db	115	;'s'
	db	102	;'f'
	db	117	;'u'
	db	108	;'l'
	db	108	;'l'
	db	121	;'y'
	db	32
	db	0
	
STR_9:
	db	83	;'S'
	db	85	;'U'
	db	67	;'C'
	db	67	;'C'
	db	69	;'E'
	db	83	;'S'
	db	83	;'S'
	db	70	;'F'
	db	85	;'U'
	db	76	;'L'
	db	76	;'L'
	db	89	;'Y'
	db	0
	
STR_8:
	db	67	;'C'
	db	108	;'l'
	db	101	;'e'
	db	97	;'a'
	db	114	;'r'
	db	101	;'e'
	db	100	;'d'
	db	32
	db	76	;'L'
	db	111	;'o'
	db	103	;'g'
	db	0
	
STR_6:
	db	108	;'l'
	db	111	;'o'
	db	103	;'g'
	db	115	;'s'
	db	0
	
STR_10:
	db	10
	db	13
	db	0
STR_20	equ	STR_19+0
; #config settings
	config pad_punits      = on
	config apply_mask      = off
	config ignore_cmsgs    = off
	config default_configs = off
	config default_idlocs  = off
	file	"pic18F4580.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pbssCOMRAM
__pbssCOMRAM:
	global	_clock_reg
_clock_reg:
       ds      3
isr@count:
       ds      2
	global	_blink
_blink:
       ds      2
change_password@psswd:
       ds      2
change_password@j:
       ds      2
change_password@i:
       ds      2
change_password@choice:
       ds      2
change_password@re_pass:
       ds      2
set_time@car:
       ds      2
set_time@cal:
       ds      2
view_log@menu:
       ds      2
view_log@value2:
       ds      2
view_log@value1:
       ds      2
view_menu@delay2:
       ds      2
view_menu@delay1:
       ds      2
view_menu@menu:
       ds      2
_password:
       ds      2
	global	_speed
_speed:
       ds      2
read_switches@key:
       ds      1
set_time@val:
       ds      1
Download_log@b:
       ds      1
Download_log@i:
       ds      1
Enter_password@input:
       ds      1
Enter_password@attempt:
       ds      1
_select_flag:
       ds      1
_select_2:
       ds      1
_select_1:
       ds      1
_choose_flag:
       ds      1
	global	_clear_flag
_clear_flag:
       ds      1
	global	_flag
	global	_flag
_flag:
       ds      1
	global	_count
_count:
       ds      1
	global	_event
_event:
       ds      1
psect	dataCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pdataCOMRAM
__pdataCOMRAM:
	file	"matrix_keypad.c"
	line	90
read_switches@once:
       ds      1
psect	dataCOMRAM
	file	"main.c"
	line	25
_d:
       ds      1
psect	bssBANK0,class=BANK0,space=1,noexec,lowdata
global __pbssBANK0
__pbssBANK0:
Download_log@F10428:
       ds      15
	global	_store_data
_store_data:
       ds      14
isr@for_minute:
       ds      2
	global	_time
_time:
       ds      9
psect	dataBANK0,class=BANK0,space=1,noexec,lowdata
global __pdataBANK0
__pdataBANK0:
	file	"main.c"
	line	22
_Event1:
       ds      27
psect	dataBANK1,class=BANK1,space=1,noexec,lowdata
global __pdataBANK1
__pdataBANK1:
	file	"main.c"
	line	115
view_menu@view_array:
       ds      102
	file	"pic18F4580.as"
	line	#
psect	cinit
; Initialize objects allocated to BANK1 (102 bytes)
	global __pidataBANK1
	; load TBLPTR registers with __pidataBANK1
	movlw	low (__pidataBANK1)
	movwf	tblptrl
	movlw	high(__pidataBANK1)
	movwf	tblptrh
	movlw	low highword(__pidataBANK1)
	movwf	tblptru
	lfsr	0,__pdataBANK1
	lfsr	1,102
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
; Initialize objects allocated to BANK0 (27 bytes)
	global __pidataBANK0
	; load TBLPTR registers with __pidataBANK0
	movlw	low (__pidataBANK0)
	movwf	tblptrl
	movlw	high(__pidataBANK0)
	movwf	tblptrh
	movlw	low highword(__pidataBANK0)
	movwf	tblptru
	lfsr	0,__pdataBANK0
	lfsr	1,27
	copy_data1:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data1
; Initialize objects allocated to COMRAM (2 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+0		
	tblrd*+ ;fetch initializer
	movff	tablat, __pdataCOMRAM+1		
	line	#
; Clear objects allocated to BANK0 (40 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	40
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to COMRAM (51 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	51
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
psect cinit,class=CODE,delta=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:
	bcf int$flags,0,c ;clear compiler interrupt flag (level 1)
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	GLOBAL	__Lmediumconst
	movlw	low highword(__Lmediumconst)
	movwf	tblptru
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1,noexec,lowdata
global __pcstackCOMRAM
__pcstackCOMRAM:
?_read_ds1307:	; 1 bytes @ 0x0
?_clcd_write:	; 1 bytes @ 0x0
?_read_switches:	; 1 bytes @ 0x0
??_read_switches:	; 1 bytes @ 0x0
?_read_external_eeprom:	; 1 bytes @ 0x0
?_store_external_eeprom:	; 1 bytes @ 0x0
?_init_clcd:	; 1 bytes @ 0x0
?_init_matrix_keypad:	; 1 bytes @ 0x0
??_init_matrix_keypad:	; 1 bytes @ 0x0
?_init_uart:	; 1 bytes @ 0x0
??_init_uart:	; 1 bytes @ 0x0
?_init_adc:	; 1 bytes @ 0x0
??_init_adc:	; 1 bytes @ 0x0
?_init_i2c:	; 1 bytes @ 0x0
??_init_i2c:	; 1 bytes @ 0x0
?_i2c_idle:	; 1 bytes @ 0x0
??_i2c_idle:	; 1 bytes @ 0x0
?_i2c_start:	; 1 bytes @ 0x0
??_i2c_start:	; 1 bytes @ 0x0
?_i2c_stop:	; 1 bytes @ 0x0
??_i2c_stop:	; 1 bytes @ 0x0
?_i2c_rep_start:	; 1 bytes @ 0x0
??_i2c_rep_start:	; 1 bytes @ 0x0
?_i2c_write:	; 1 bytes @ 0x0
??_i2c_write:	; 1 bytes @ 0x0
?_i2c_rx_mode:	; 1 bytes @ 0x0
??_i2c_rx_mode:	; 1 bytes @ 0x0
?_i2c_no_ack:	; 1 bytes @ 0x0
??_i2c_no_ack:	; 1 bytes @ 0x0
?_i2c_read:	; 1 bytes @ 0x0
??_i2c_read:	; 1 bytes @ 0x0
?_init_ds1307:	; 1 bytes @ 0x0
?_Enter_password:	; 1 bytes @ 0x0
?_view_menu:	; 1 bytes @ 0x0
?_view_log:	; 1 bytes @ 0x0
?_clear_log:	; 1 bytes @ 0x0
?_Download_log:	; 1 bytes @ 0x0
?_set_time:	; 1 bytes @ 0x0
?_change_password:	; 1 bytes @ 0x0
?_Enter_menu:	; 1 bytes @ 0x0
?_store_event:	; 1 bytes @ 0x0
?_display_event:	; 1 bytes @ 0x0
?_change_event:	; 1 bytes @ 0x0
?_display_time:	; 1 bytes @ 0x0
?_get_time:	; 1 bytes @ 0x0
?_init_config:	; 1 bytes @ 0x0
?_main:	; 1 bytes @ 0x0
?_isr:	; 1 bytes @ 0x0
??_isr:	; 1 bytes @ 0x0
?_scan_key:	; 1 bytes @ 0x0
??_scan_key:	; 1 bytes @ 0x0
?_putch:	; 1 bytes @ 0x0
??_putch:	; 1 bytes @ 0x0
?___lbmod:	; 1 bytes @ 0x0
	global	?_read_adc
?_read_adc:	; 2 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x0
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	i2c_write@data
i2c_write@data:	; 1 bytes @ 0x0
	global	read_switches@detection_type
read_switches@detection_type:	; 1 bytes @ 0x0
	global	putch@byte
putch@byte:	; 1 bytes @ 0x0
	global	clcd_write@control_bit
clcd_write@control_bit:	; 1 bytes @ 0x0
	global	___lbmod@divisor
___lbmod@divisor:	; 1 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x0
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds   1
??_read_ds1307:	; 1 bytes @ 0x1
?_write_ds1307:	; 1 bytes @ 0x1
??_clcd_write:	; 1 bytes @ 0x1
??_read_external_eeprom:	; 1 bytes @ 0x1
?_write_external_eeprom:	; 1 bytes @ 0x1
??___lbmod:	; 1 bytes @ 0x1
?_puts:	; 2 bytes @ 0x1
	global	write_ds1307@data
write_ds1307@data:	; 1 bytes @ 0x1
	global	read_ds1307@address
read_ds1307@address:	; 1 bytes @ 0x1
	global	clcd_write@byte
clcd_write@byte:	; 1 bytes @ 0x1
	global	write_external_eeprom@data
write_external_eeprom@data:	; 1 bytes @ 0x1
	global	read_external_eeprom@address
read_external_eeprom@address:	; 1 bytes @ 0x1
	global	___lbmod@dividend
___lbmod@dividend:	; 1 bytes @ 0x1
	global	puts@s
puts@s:	; 2 bytes @ 0x1
	ds   1
??_write_ds1307:	; 1 bytes @ 0x2
??_write_external_eeprom:	; 1 bytes @ 0x2
??_init_clcd:	; 1 bytes @ 0x2
??_read_adc:	; 1 bytes @ 0x2
	global	write_ds1307@address
write_ds1307@address:	; 1 bytes @ 0x2
	global	read_ds1307@data
read_ds1307@data:	; 1 bytes @ 0x2
	global	read_external_eeprom@data
read_external_eeprom@data:	; 1 bytes @ 0x2
	global	___lbmod@counter
___lbmod@counter:	; 1 bytes @ 0x2
	global	write_external_eeprom@i
write_external_eeprom@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x2
	ds   1
??_puts:	; 1 bytes @ 0x3
??_init_ds1307:	; 1 bytes @ 0x3
??_get_time:	; 1 bytes @ 0x3
	global	init_ds1307@dummy
init_ds1307@dummy:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___lbmod@rem
___lbmod@rem:	; 1 bytes @ 0x3
	ds   1
??___wmul:	; 1 bytes @ 0x4
??___lwdiv:	; 1 bytes @ 0x4
??___lwmod:	; 1 bytes @ 0x4
	global	write_external_eeprom@address
write_external_eeprom@address:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
	global	read_adc@reg_val
read_adc@reg_val:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x4
	ds   1
??_store_external_eeprom:	; 1 bytes @ 0x5
??___ftpack:	; 1 bytes @ 0x5
	global	store_external_eeprom@i
store_external_eeprom@i:	; 1 bytes @ 0x5
	ds   1
?_clcd_print:	; 1 bytes @ 0x6
	global	read_adc@CHANNEL
read_adc@CHANNEL:	; 1 bytes @ 0x6
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x6
	global	clcd_print@data
clcd_print@data:	; 2 bytes @ 0x6
	ds   1
?_clcd_putch:	; 1 bytes @ 0x7
??_store_event:	; 1 bytes @ 0x7
??_change_event:	; 1 bytes @ 0x7
	global	change_event@key
change_event@key:	; 1 bytes @ 0x7
	global	clcd_putch@addr
clcd_putch@addr:	; 1 bytes @ 0x7
	ds   1
??_clcd_putch:	; 1 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	clcd_print@addr
clcd_print@addr:	; 1 bytes @ 0x8
	global	clcd_putch@data
clcd_putch@data:	; 1 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	ds   1
??_clcd_print:	; 1 bytes @ 0x9
??_Enter_password:	; 1 bytes @ 0x9
??_view_menu:	; 1 bytes @ 0x9
??_view_log:	; 1 bytes @ 0x9
??_clear_log:	; 1 bytes @ 0x9
??_Download_log:	; 1 bytes @ 0x9
??_set_time:	; 1 bytes @ 0x9
??_change_password:	; 1 bytes @ 0x9
??_display_event:	; 1 bytes @ 0x9
??_init_config:	; 1 bytes @ 0x9
	global	view_menu@key
view_menu@key:	; 1 bytes @ 0x9
	global	view_log@b
view_log@b:	; 2 bytes @ 0x9
	global	clear_log@val
clear_log@val:	; 2 bytes @ 0x9
	global	Download_log@down_array
Download_log@down_array:	; 15 bytes @ 0x9
	ds   1
	global	set_time@i
set_time@i:	; 1 bytes @ 0xA
	ds   1
??___lwtoft:	; 1 bytes @ 0xB
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0xB
	global	view_log@v
view_log@v:	; 1 bytes @ 0xB
	global	clear_log@key
clear_log@key:	; 1 bytes @ 0xB
	global	Enter_password@i
Enter_password@i:	; 2 bytes @ 0xB
	global	set_time@j
set_time@j:	; 2 bytes @ 0xB
	global	change_password@i_249
change_password@i_249:	; 2 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	ds   1
	global	view_log@i
view_log@i:	; 1 bytes @ 0xC
	ds   1
	global	view_log@key
view_log@key:	; 1 bytes @ 0xD
	global	set_time@i_237
set_time@i_237:	; 1 bytes @ 0xD
	global	Enter_password@wait
Enter_password@wait:	; 2 bytes @ 0xD
	global	change_password@i_252
change_password@i_252:	; 2 bytes @ 0xD
	ds   1
	global	set_time@hr
set_time@hr:	; 1 bytes @ 0xE
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0xE
	ds   1
	global	Enter_password@key
Enter_password@key:	; 1 bytes @ 0xF
	global	set_time@sec
set_time@sec:	; 1 bytes @ 0xF
	global	change_password@j_250
change_password@j_250:	; 1 bytes @ 0xF
	ds   1
	global	Enter_password@count
Enter_password@count:	; 1 bytes @ 0x10
	global	set_time@min
set_time@min:	; 1 bytes @ 0x10
	global	change_password@j_253
change_password@j_253:	; 1 bytes @ 0x10
	ds   1
??___ftdiv:	; 1 bytes @ 0x11
	global	set_time@key
set_time@key:	; 1 bytes @ 0x11
	global	change_password@key
change_password@key:	; 1 bytes @ 0x11
	ds   1
	global	set_time@change_time
set_time@change_time:	; 1 bytes @ 0x12
	ds   2
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x14
	ds   1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x15
	ds   3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x18
	global	Download_log@j
Download_log@j:	; 2 bytes @ 0x18
	ds   1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x19
	ds   1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x1A
	global	Download_log@k
Download_log@k:	; 1 bytes @ 0x1A
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x1A
	ds   1
??_Enter_menu:	; 1 bytes @ 0x1B
	ds   3
??___fttol:	; 1 bytes @ 0x1E
	ds   5
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x23
	ds   1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x24
	ds   4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x28
	ds   1
??_display_time:	; 1 bytes @ 0x29
??_main:	; 1 bytes @ 0x29
;!
;!Data Sizes:
;!    Strings     280
;!    Constant    0
;!    Data        131
;!    BSS         91
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           94     41      94
;!    BANK0           160      0      67
;!    BANK1           256      0     102
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0

;!
;!Pointer List with Targets:
;!
;!    clcd_print@data	PTR const unsigned char  size(2) Largest target is 102
;!		 -> STR_20(CODE[17]), STR_19(CODE[17]), Event1(BANK0[27]), STR_18(CODE[15]), 
;!		 -> STR_17(CODE[14]), STR_16(CODE[17]), STR_15(CODE[19]), STR_14(CODE[15]), 
;!		 -> STR_13(CODE[18]), STR_12(CODE[17]), time(BANK0[9]), STR_11(CODE[19]), 
;!		 -> STR_9(CODE[13]), STR_8(CODE[12]), STR_7(CODE[14]), STR_6(CODE[5]), 
;!		 -> view_menu@view_array(BANK1[102]), STR_5(CODE[17]), STR_4(CODE[17]), STR_3(CODE[16]), 
;!		 -> STR_2(CODE[17]), STR_1(CODE[15]), 
;!
;!    puts@s	PTR const unsigned char  size(2) Largest target is 15
;!		 -> STR_10(CODE[3]), Download_log@down_array(COMRAM[15]), 
;!
;!    set_time@change_time	PTR unsigned char  size(1) Largest target is 9
;!		 -> time(BANK0[9]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _view_menu->_clcd_print
;!    _view_menu->_clcd_putch
;!    _init_config->_clcd_print
;!    _init_ds1307->_read_ds1307
;!    _init_ds1307->_write_ds1307
;!    _init_clcd->_clcd_write
;!    _get_time->_read_ds1307
;!    _read_ds1307->_i2c_write
;!    _display_time->___fttol
;!    ___lwtoft->___ftpack
;!    ___fttol->___ftdiv
;!    ___ftdiv->___lwtoft
;!    _display_event->_clcd_print
;!    _store_event->___lwdiv
;!    _store_external_eeprom->_write_external_eeprom
;!    _Enter_password->_clcd_print
;!    _Enter_password->_clcd_putch
;!    _Enter_menu->_Download_log
;!    _view_log->_clcd_print
;!    _view_log->_clcd_putch
;!    _set_time->_clcd_print
;!    _write_ds1307->_i2c_write
;!    _clear_log->_clcd_print
;!    _change_password->_clcd_print
;!    _change_password->_clcd_putch
;!    _write_external_eeprom->_i2c_write
;!    _clcd_putch->___lwdiv
;!    _Download_log->_clcd_print
;!    _read_external_eeprom->_i2c_write
;!    _puts->_putch
;!    _clcd_print->___wmul
;!
;!Critical Paths under _isr in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _isr in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _isr in BANK5
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 1     1      0   83077
;!                         _Enter_menu
;!                     _Enter_password
;!                       _change_event
;!                      _display_event
;!                       _display_time
;!                           _get_time
;!                        _init_config
;!                      _read_switches
;!                          _view_menu
;! ---------------------------------------------------------------------------------
;! (1) _view_menu                                            1     1      0    8823
;!                                              9 COMRAM     1     1      0
;!                             ___wmul
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     139
;!                                              0 COMRAM     6     2      4
;! ---------------------------------------------------------------------------------
;! (1) _init_config                                          0     0      0    8229
;!                         _clcd_print
;!                         _clcd_write
;!                           _init_adc
;!                          _init_clcd
;!                        _init_ds1307
;!                           _init_i2c
;!                 _init_matrix_keypad
;!                          _init_uart
;! ---------------------------------------------------------------------------------
;! (2) _init_uart                                            0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_matrix_keypad                                   0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_i2c                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _init_ds1307                                          1     1      0     734
;!                                              3 COMRAM     1     1      0
;!                        _read_ds1307
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (2) _init_clcd                                            0     0      0    1260
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _init_adc                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _get_time                                             0     0      0      67
;!                        _read_ds1307
;! ---------------------------------------------------------------------------------
;! (3) _read_ds1307                                          2     2      0      67
;!                                              1 COMRAM     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (1) _display_time                                         0     0      0   14683
;!                            ___ftdiv
;!                            ___fttol
;!                            ___lwdiv
;!                            ___lwmod
;!                           ___lwtoft
;!                         _clcd_print
;!                         _clcd_putch
;!                           _read_adc
;! ---------------------------------------------------------------------------------
;! (2) _read_adc                                             7     5      2      45
;!                                              0 COMRAM     7     5      2
;! ---------------------------------------------------------------------------------
;! (2) ___lwtoft                                             3     0      3    2864
;!                                              8 COMRAM     3     0      3
;!                           ___ftpack
;!                           _read_adc (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___fttol                                             15    11      4     328
;!                                             26 COMRAM    15    11      4
;!                            ___ftdiv (ARG)
;!                           ___lwtoft (ARG)
;!                           _read_adc (ARG)
;! ---------------------------------------------------------------------------------
;! (2) ___ftdiv                                             15     9      6    3326
;!                                             11 COMRAM    15     9      6
;!                           ___ftpack
;!                           ___lwtoft (ARG)
;!                           _read_adc (ARG)
;! ---------------------------------------------------------------------------------
;! (3) ___ftpack                                             8     3      5    2766
;!                                              0 COMRAM     8     3      5
;! ---------------------------------------------------------------------------------
;! (1) _display_event                                        1     1      0    4975
;!                                              9 COMRAM     1     1      0
;!                         _clcd_print
;! ---------------------------------------------------------------------------------
;! (1) _change_event                                         1     1      0    1393
;!                                              7 COMRAM     1     1      0
;!                      _read_switches
;!                        _store_event
;! ---------------------------------------------------------------------------------
;! (2) _store_event                                          0     0      0    1260
;!                            ___lwdiv
;!                            ___lwmod
;!              _store_external_eeprom
;! ---------------------------------------------------------------------------------
;! (3) _store_external_eeprom                                1     1      0     331
;!                                              5 COMRAM     1     1      0
;!              _write_external_eeprom
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              5     1      4     463
;!                                              0 COMRAM     5     1      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              7     3      4     466
;!                                              0 COMRAM     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) _Enter_password                                      10    10      0    8726
;!                                              9 COMRAM     8     8      0
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!               _read_external_eeprom
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (1) _Enter_menu                                           0     0      0   36131
;!                       _Download_log
;!                    _change_password
;!                          _clear_log
;!                           _set_time
;!                           _view_log
;! ---------------------------------------------------------------------------------
;! (2) _view_log                                             6     6      0    8832
;!                                              9 COMRAM     5     5      0
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!               _read_external_eeprom
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (2) _set_time                                            10    10      0    6699
;!                                              9 COMRAM    10    10      0
;!                            ___lbmod
;!                         _clcd_print
;!                      _read_switches
;!                       _write_ds1307
;! ---------------------------------------------------------------------------------
;! (3) _write_ds1307                                         2     1      1     598
;!                                              1 COMRAM     2     1      1
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (3) ___lbmod                                              4     3      1     235
;!                                              0 COMRAM     4     3      1
;! ---------------------------------------------------------------------------------
;! (2) _clear_log                                            3     3      0    6326
;!                                              9 COMRAM     3     3      0
;!                         _clcd_print
;!                         _clcd_write
;!                      _read_switches
;! ---------------------------------------------------------------------------------
;! (2) _change_password                                      9     9      0    8918
;!                                              9 COMRAM     9     9      0
;!                         _clcd_print
;!                         _clcd_putch
;!                         _clcd_write
;!                      _read_switches
;!              _write_external_eeprom
;! ---------------------------------------------------------------------------------
;! (4) _write_external_eeprom                                4     3      1     241
;!                                              1 COMRAM     4     3      1
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (2) _read_switches                                        1     1      0      44
;!                                              0 COMRAM     1     1      0
;!                           _scan_key
;! ---------------------------------------------------------------------------------
;! (3) _scan_key                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (2) _clcd_putch                                           2     1      1    2216
;!                                              7 COMRAM     2     1      1
;!                            ___lwdiv (ARG)
;!                            ___lwmod (ARG)
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _Download_log                                        18    18      0    5356
;!                                              9 COMRAM    18    18      0
;!                         _clcd_print
;!                               _puts
;!               _read_external_eeprom
;! ---------------------------------------------------------------------------------
;! (2) _read_external_eeprom                                 2     2      0      67
;!                                              1 COMRAM     2     2      0
;!                           _i2c_read
;!                      _i2c_rep_start
;!                          _i2c_start
;!                           _i2c_stop
;!                          _i2c_write
;! ---------------------------------------------------------------------------------
;! (4) _i2c_write                                            1     1      0      22
;!                                              0 COMRAM     1     1      0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_stop                                             0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_start                                            0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_rep_start                                        0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (4) _i2c_read                                             0     0      0       0
;!                         _i2c_no_ack
;!                        _i2c_rx_mode
;! ---------------------------------------------------------------------------------
;! (5) _i2c_rx_mode                                          0     0      0       0
;!                           _i2c_idle
;! ---------------------------------------------------------------------------------
;! (5) _i2c_idle                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (5) _i2c_no_ack                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (3) _puts                                                 2     0      2     219
;!                                              1 COMRAM     2     0      2
;!                              _putch
;! ---------------------------------------------------------------------------------
;! (4) _putch                                                1     1      0      22
;!                                              0 COMRAM     1     1      0
;! ---------------------------------------------------------------------------------
;! (2) _clcd_print                                           3     0      3    4975
;!                                              6 COMRAM     3     0      3
;!                             ___wmul (ARG)
;!                         _clcd_write
;! ---------------------------------------------------------------------------------
;! (2) _clcd_write                                           2     1      1    1260
;!                                              0 COMRAM     2     1      1
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 5
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _isr                                                  0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 7
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _Enter_menu
;!     _Download_log
;!       _clcd_print
;!         ___wmul (ARG)
;!         _clcd_write (ARG)
;!       _puts
;!         _putch
;!       _read_external_eeprom
;!         _i2c_read
;!           _i2c_no_ack
;!           _i2c_rx_mode
;!             _i2c_idle
;!         _i2c_rep_start
;!           _i2c_idle
;!         _i2c_start
;!           _i2c_idle
;!         _i2c_stop
;!           _i2c_idle
;!         _i2c_write
;!           _i2c_idle
;!     _change_password
;!       _clcd_print
;!       _clcd_putch
;!         ___lwdiv (ARG)
;!         ___lwmod (ARG)
;!         _clcd_write (ARG)
;!       _clcd_write
;!       _read_switches
;!         _scan_key
;!       _write_external_eeprom
;!         _i2c_start
;!         _i2c_stop
;!         _i2c_write
;!     _clear_log
;!       _clcd_print
;!       _clcd_write
;!       _read_switches
;!     _set_time
;!       ___lbmod
;!       _clcd_print
;!       _read_switches
;!       _write_ds1307
;!         _i2c_start
;!         _i2c_stop
;!         _i2c_write
;!     _view_log
;!       _clcd_print
;!       _clcd_putch
;!       _clcd_write
;!       _read_external_eeprom
;!       _read_switches
;!   _Enter_password
;!     _clcd_print
;!     _clcd_putch
;!     _clcd_write
;!     _read_external_eeprom
;!     _read_switches
;!   _change_event
;!     _read_switches
;!     _store_event
;!       ___lwdiv
;!       ___lwmod
;!       _store_external_eeprom
;!         _write_external_eeprom
;!   _display_event
;!     _clcd_print
;!   _display_time
;!     ___ftdiv
;!       ___ftpack
;!       ___lwtoft (ARG)
;!         ___ftpack
;!         _read_adc (ARG)
;!       _read_adc (ARG)
;!     ___fttol
;!       ___ftdiv (ARG)
;!       ___lwtoft (ARG)
;!       _read_adc (ARG)
;!     ___lwdiv
;!     ___lwmod
;!     ___lwtoft
;!     _clcd_print
;!     _clcd_putch
;!     _read_adc
;!   _get_time
;!     _read_ds1307
;!       _i2c_read
;!       _i2c_rep_start
;!       _i2c_start
;!       _i2c_stop
;!       _i2c_write
;!   _init_config
;!     _clcd_print
;!     _clcd_write
;!     _init_adc
;!     _init_clcd
;!       _clcd_write
;!     _init_ds1307
;!       _read_ds1307
;!       _write_ds1307
;!     _init_i2c
;!     _init_matrix_keypad
;!     _init_uart
;!   _read_switches
;!   _view_menu
;!     ___wmul
;!     _clcd_print
;!     _clcd_putch
;!     _clcd_write
;!     _read_switches
;!
;! _isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             5FF      0       0      26        0.0%
;!BITBIGSFRlll       281      0       0      24        0.0%
;!EEDATA             100      0       0       0        0.0%
;!BITBANK5           100      0       0      14        0.0%
;!BANK5              100      0       0      15        0.0%
;!BITBANK4           100      0       0      12        0.0%
;!BANK4              100      0       0      13        0.0%
;!BITBANK3           100      0       0      10        0.0%
;!BANK3              100      0       0      11        0.0%
;!BITBANK2           100      0       0       8        0.0%
;!BANK2              100      0       0       9        0.0%
;!BITBANK1           100      0       0       6        0.0%
;!BANK1              100      0      66       7       39.8%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0      43       5       41.9%
;!BITCOMRAM           5E      0       0       0        0.0%
;!COMRAM              5E     29      5E       1      100.0%
;!BITBIGSFRhhhhhl     25      0       0      17        0.0%
;!BITBIGSFRllh         F      0       0      23        0.0%
;!BITBIGSFRhhhhhh      E      0       0      16        0.0%
;!BITBIGSFRlhhhl       9      0       0      20        0.0%
;!BITBIGSFRlhhhhl      8      0       0      19        0.0%
;!BITBIGSFRlhhhhh      7      0       0      18        0.0%
;!BITBIGSFRlhl         7      0       0      22        0.0%
;!BITBIGSFRlhhl        2      0       0      21        0.0%
;!BIGSFR               0      0       0     200        0.0%
;!BITSFR_3             0      0       0     200        0.0%
;!SFR_3                0      0       0     200        0.0%
;!BITSFR_2             0      0       0     200        0.0%
;!SFR_2                0      0       0     200        0.0%
;!BITSFR_1             0      0       0     200        0.0%
;!SFR_1                0      0       0     200        0.0%
;!BITSFR               0      0       0     200        0.0%
;!SFR                  0      0       0     200        0.0%
;!STACK                0      0       0       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     107      25        0.0%
;!DATA                 0      0     107       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 597 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  choose_key      1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called: 7
;; This function calls:
;;		_Enter_menu
;;		_Enter_password
;;		_change_event
;;		_display_event
;;		_display_time
;;		_get_time
;;		_init_config
;;		_read_switches
;;		_view_menu
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	597
global __ptext0
__ptext0:
psect	text0
	file	"main.c"
	line	597
	
_main:
;incstack = 0
	callstack 24
	line	600
	
l3653:
;main.c: 600: init_config();
	call	_init_config	;wreg free
	line	601
	
l3655:
	line	607
	
l3657:
	movlw	(01h)&0ffh
	
	call	_read_switches
	line	609
	
l3659:
;main.c: 609: if (choose_flag == 0)
	movf	((c:_choose_flag))^00h,c,w
	btfss	status,2
	goto	u3381
	goto	u3380
u3381:
	goto	l3669
u3380:
	line	611
	
l3661:
;main.c: 610: {;main.c: 611: get_time();
	call	_get_time	;wreg free
	line	612
	
l3663:; BSR set to: 0

;main.c: 612: display_time();
	call	_display_time	;wreg free
	line	613
	
l3665:
;main.c: 613: display_event();
	call	_display_event	;wreg free
	line	614
	
l3667:
;main.c: 614: change_event();
	call	_change_event	;wreg free
	line	615
;main.c: 615: }
	goto	l3657
	line	616
	
l3669:
;main.c: 616: else if (choose_flag == 1)
		decf	((c:_choose_flag))^00h,c,w
	btfss	status,2
	goto	u3391
	goto	u3390

u3391:
	goto	l3673
u3390:
	line	618
	
l3671:
;main.c: 617: {;main.c: 618: Enter_password();
	call	_Enter_password	;wreg free
	line	619
;main.c: 619: }
	goto	l3657
	line	620
	
l3673:
;main.c: 620: else if (choose_flag == 2)
		movlw	2
	xorwf	((c:_choose_flag))^00h,c,w
	btfss	status,2
	goto	u3401
	goto	u3400

u3401:
	goto	l3677
u3400:
	line	622
	
l3675:
;main.c: 621: {;main.c: 622: view_menu();
	call	_view_menu	;wreg free
	line	623
;main.c: 623: }
	goto	l3657
	line	624
	
l3677:
;main.c: 624: else if (choose_flag == 3)
		movlw	3
	xorwf	((c:_choose_flag))^00h,c,w
	btfss	status,2
	goto	u3411
	goto	u3410

u3411:
	goto	l413
u3410:
	line	626
	
l3679:
;main.c: 625: {;main.c: 626: Enter_menu();
	call	_Enter_menu	;wreg free
	goto	l3657
	line	628
	
l413:
	goto	l3657
	global	start
	goto	start
	callstack 0
	line	629
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,89
	global	_view_menu

;; *************** function _view_menu *****************
;; Defined at:
;;		line 111 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key             1    9[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___wmul
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_read_switches
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,class=CODE,space=0,reloc=2,group=0
	line	111
global __ptext1
__ptext1:
psect	text1
	file	"main.c"
	line	111
	
_view_menu:
;incstack = 0
	callstack 27
	line	119
	
l3589:
;main.c: 114: unsigned static int menu = 0,delay1 = 0,delay2 = 0;;main.c: 115: unsigned static char view_array[6][17] = {"View Log        ","Clear Log     ","Download Log   ","Set Time       ","Change Password","<<   EXIT   >> "};;main.c: 116: unsigned char key;;main.c: 119: clcd_putch('*',(0x80 + (0)));
	movlw	low(080h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	line	120
;main.c: 120: clcd_putch(' ',(0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(020h)&0ffh
	
	call	_clcd_putch
	line	122
	
l3591:
;main.c: 122: clcd_print(view_array[menu],(0x80 + (1)));
	movff	(c:view_menu@menu),(c:___wmul@multiplier)
	movff	(c:view_menu@menu+1),(c:___wmul@multiplier+1)
	movlw	high(011h)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(011h)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(view_menu@view_array)
	addwf	(0+?___wmul)^00h,c,w
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(view_menu@view_array)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+((c:clcd_print@data))^00h,c
	movlw	low(081h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	123
	
l3593:
;main.c: 123: clcd_print(view_array[menu+1],(0xC0 + (1)));
	movff	(c:view_menu@menu),(c:___wmul@multiplier)
	movff	(c:view_menu@menu+1),(c:___wmul@multiplier+1)
	movlw	high(011h)
	movwf	((c:___wmul@multiplicand+1))^00h,c
	movlw	low(011h)
	movwf	((c:___wmul@multiplicand))^00h,c
	call	___wmul	;wreg free
	movlw	low(view_menu@view_array+011h)
	addwf	(0+?___wmul)^00h,c,w
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(view_menu@view_array+011h)
	addwfc	(1+?___wmul)^00h,c,w
	movwf	1+((c:clcd_print@data))^00h,c
	movlw	low(0C1h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	124
	
l3595:
;main.c: 124: key = read_switches(0);
	movlw	(0)&0ffh
	
	call	_read_switches
	movwf	((c:view_menu@key))^00h,c
	line	125
	
l3597:
;main.c: 125: if(key == 5)
		movlw	5
	xorwf	((c:view_menu@key))^00h,c,w
	btfss	status,2
	goto	u3231
	goto	u3230

u3231:
	goto	l3601
u3230:
	line	127
	
l3599:
;main.c: 126: {;main.c: 127: delay1++;
	infsnz	((c:view_menu@delay1))^00h,c
	incf	((c:view_menu@delay1+1))^00h,c
	line	129
	
l3601:
;main.c: 128: };main.c: 129: if (delay1 > 1000 && key == 0xFF)
		movlw	233
	subwf	 ((c:view_menu@delay1))^00h,c,w
	movlw	3
	subwfb	((c:view_menu@delay1+1))^00h,c,w
	btfss	status,0
	goto	u3241
	goto	u3240

u3241:
	goto	l3615
u3240:
	
l3603:
		incf	((c:view_menu@key))^00h,c,w
	btfss	status,2
	goto	u3251
	goto	u3250

u3251:
	goto	l3615
u3250:
	line	131
	
l3605:
;main.c: 130: {;main.c: 131: if (select_flag < 7)
		movlw	07h-0
	cpfslt	((c:_select_flag))^00h,c
	goto	u3261
	goto	u3260

u3261:
	goto	l3613
u3260:
	line	133
	
l3607:
;main.c: 132: {;main.c: 133: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	134
	
l3609:
;main.c: 134: choose_flag = 3;
	movlw	low(03h)
	movwf	((c:_choose_flag))^00h,c
	line	136
	
l3611:
;main.c: 136: select_flag = menu + 1;
	incf	((c:view_menu@menu))^00h,c,w
	movwf	((c:_select_flag))^00h,c
	line	138
	
l3613:
;main.c: 137: };main.c: 138: delay1 = 0;
	movlw	high(0)
	movwf	((c:view_menu@delay1+1))^00h,c
	movlw	low(0)
	movwf	((c:view_menu@delay1))^00h,c
	line	139
;main.c: 139: }
	goto	l3627
	line	140
	
l3615:
;main.c: 140: else if (delay1 > 0 && delay1 < 1000 && key == 0xFF)
	movf	((c:view_menu@delay1))^00h,c,w
iorwf	((c:view_menu@delay1+1))^00h,c,w
	btfsc	status,2
	goto	u3271
	goto	u3270

u3271:
	goto	l3627
u3270:
	
l3617:
		movlw	232
	subwf	 ((c:view_menu@delay1))^00h,c,w
	movlw	3
	subwfb	((c:view_menu@delay1+1))^00h,c,w
	btfsc	status,0
	goto	u3281
	goto	u3280

u3281:
	goto	l3627
u3280:
	
l3619:
		incf	((c:view_menu@key))^00h,c,w
	btfss	status,2
	goto	u3291
	goto	u3290

u3291:
	goto	l3627
u3290:
	line	142
	
l3621:
;main.c: 141: {;main.c: 142: if (menu < 4)
		movf	((c:view_menu@menu+1))^00h,c,w
	bnz	u3301
	movlw	4
	subwf	 ((c:view_menu@menu))^00h,c,w
	btfsc	status,0
	goto	u3301
	goto	u3300

u3301:
	goto	l3613
u3300:
	line	144
	
l3623:
;main.c: 143: {;main.c: 144: menu++;
	infsnz	((c:view_menu@menu))^00h,c
	incf	((c:view_menu@menu+1))^00h,c
	goto	l3613
	line	148
	
l3627:
;main.c: 147: };main.c: 148: if ( key == 6)
		movlw	6
	xorwf	((c:view_menu@key))^00h,c,w
	btfss	status,2
	goto	u3311
	goto	u3310

u3311:
	goto	l3631
u3310:
	line	150
	
l3629:
;main.c: 149: {;main.c: 150: delay2++;
	infsnz	((c:view_menu@delay2))^00h,c
	incf	((c:view_menu@delay2+1))^00h,c
	line	153
	
l3631:
;main.c: 151: };main.c: 153: if (delay2 > 1000 && key == 0xFF)
		movlw	233
	subwf	 ((c:view_menu@delay2))^00h,c,w
	movlw	3
	subwfb	((c:view_menu@delay2+1))^00h,c,w
	btfss	status,0
	goto	u3321
	goto	u3320

u3321:
	goto	l3641
u3320:
	
l3633:
		incf	((c:view_menu@key))^00h,c,w
	btfss	status,2
	goto	u3331
	goto	u3330

u3331:
	goto	l3641
u3330:
	line	155
	
l3635:
;main.c: 154: {;main.c: 155: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	156
	
l3637:
;main.c: 156: choose_flag = 0;
	movlw	low(0)
	movwf	((c:_choose_flag))^00h,c
	line	157
	
l3639:
;main.c: 157: delay2 = 0;
	movlw	high(0)
	movwf	((c:view_menu@delay2+1))^00h,c
	movlw	low(0)
	movwf	((c:view_menu@delay2))^00h,c
	line	158
;main.c: 158: }
	goto	l238
	line	159
	
l3641:
;main.c: 159: else if (delay2 > 0 && delay2 < 1000 && key == 0xFF)
	movf	((c:view_menu@delay2))^00h,c,w
iorwf	((c:view_menu@delay2+1))^00h,c,w
	btfsc	status,2
	goto	u3341
	goto	u3340

u3341:
	goto	l238
u3340:
	
l3643:
		movlw	232
	subwf	 ((c:view_menu@delay2))^00h,c,w
	movlw	3
	subwfb	((c:view_menu@delay2+1))^00h,c,w
	btfsc	status,0
	goto	u3351
	goto	u3350

u3351:
	goto	l238
u3350:
	
l3645:
		incf	((c:view_menu@key))^00h,c,w
	btfss	status,2
	goto	u3361
	goto	u3360

u3361:
	goto	l238
u3360:
	line	161
	
l3647:
;main.c: 160: {;main.c: 161: if (menu >= 1)
	movf	((c:view_menu@menu))^00h,c,w
iorwf	((c:view_menu@menu+1))^00h,c,w
	btfsc	status,2
	goto	u3371
	goto	u3370

u3371:
	goto	l3639
u3370:
	line	163
	
l3649:
;main.c: 162: {;main.c: 163: menu--;
	decf	((c:view_menu@menu))^00h,c
	btfss	status,0
	decf	((c:view_menu@menu+1))^00h,c
	goto	l3639
	line	167
	
l238:
	return	;funcret
	callstack 0
GLOBAL	__end_of_view_menu
	__end_of_view_menu:
	signat	_view_menu,89
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMRAM] unsigned int 
;;  multiplicand    2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_view_menu
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\Umul16.c"
	line	15
global __ptext2
__ptext2:
psect	text2
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\Umul16.c"
	line	15
	
___wmul:
;incstack = 0
	callstack 28
	line	37
	
l3583:
	movf	((c:___wmul@multiplier))^00h,c,w
	mulwf	((c:___wmul@multiplicand))^00h,c
	movff	prodl,(c:___wmul@product)
	movff	prodh,(c:___wmul@product+1)
	line	38
	movf	((c:___wmul@multiplier))^00h,c,w
	mulwf	(0+((c:___wmul@multiplicand)+01h))^00h,c
	movf	(prodl)^0f00h,c,w
	addwf	((c:___wmul@product+1))^00h,c

	line	39
	movf	(0+((c:___wmul@multiplier)+01h))^00h,c,w
	mulwf	((c:___wmul@multiplicand))^00h,c
	movf	(prodl)^0f00h,c,w
	addwf	((c:___wmul@product+1))^00h,c

	line	52
	
l3585:
	movff	(c:___wmul@product),(c:?___wmul)
	movff	(c:___wmul@product+1),(c:?___wmul+1)
	line	53
	
l638:
	return	;funcret
	callstack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	_init_config

;; *************** function _init_config *****************
;; Defined at:
;;		line 584 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_clcd_print
;;		_clcd_write
;;		_init_adc
;;		_init_clcd
;;		_init_ds1307
;;		_init_i2c
;;		_init_matrix_keypad
;;		_init_uart
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	584
global __ptext3
__ptext3:
psect	text3
	file	"main.c"
	line	584
	
_init_config:
;incstack = 0
	callstack 24
	line	586
	
l3531:
;main.c: 586: init_clcd();
	call	_init_clcd	;wreg free
	line	588
	
l3533:
;main.c: 588: init_i2c();
	call	_init_i2c	;wreg free
	line	589
	
l3535:
;main.c: 589: init_ds1307();
	call	_init_ds1307	;wreg free
	line	590
;main.c: 590: init_adc();
	call	_init_adc	;wreg free
	line	591
	
l3537:
;main.c: 591: init_matrix_keypad();
	call	_init_matrix_keypad	;wreg free
	line	592
	
l3539:
;main.c: 592: init_uart();
	call	_init_uart	;wreg free
	line	593
	
l3541:
;main.c: 593: clcd_print("  TIME    EV  SP", (0x80 + (0)));
		movlw	low(STR_20)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_20)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	594
	
l3543:
;main.c: 594: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	595
	
l406:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_config
	__end_of_init_config:
	signat	_init_config,89
	global	_init_uart

;; *************** function _init_uart *****************
;; Defined at:
;;		line 4 in file "uart.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2,group=0
	file	"uart.c"
	line	4
global __ptext4
__ptext4:
psect	text4
	file	"uart.c"
	line	4
	
_init_uart:
;incstack = 0
	callstack 28
	line	7
	
l2125:
;uart.c: 7: TRISC7 = 1;
	bsf	c:(31911/8),(31911)&7	;volatile
	line	8
;uart.c: 8: TRISC6 = 0;
	bcf	c:(31910/8),(31910)&7	;volatile
	line	13
;uart.c: 13: CSRC = 0;
	bcf	c:(32103/8),(32103)&7	;volatile
	line	15
;uart.c: 15: TX9 = 0;
	bcf	c:(32102/8),(32102)&7	;volatile
	line	17
;uart.c: 17: TXEN = 1;
	bsf	c:(32101/8),(32101)&7	;volatile
	line	20
;uart.c: 20: SYNC = 0;
	bcf	c:(32100/8),(32100)&7	;volatile
	line	22
;uart.c: 22: SENDB = 0;
	bcf	c:(32099/8),(32099)&7	;volatile
	line	25
;uart.c: 25: BRGH = 1;
	bsf	c:(32098/8),(32098)&7	;volatile
	line	27
;uart.c: 27: TRMT = 0;
	bcf	c:(32097/8),(32097)&7	;volatile
	line	29
;uart.c: 29: TX9D = 0;
	bcf	c:(32096/8),(32096)&7	;volatile
	line	34
;uart.c: 34: SPEN = 1;
	bsf	c:(32095/8),(32095)&7	;volatile
	line	36
;uart.c: 36: RX9 = 0;
	bcf	c:(32094/8),(32094)&7	;volatile
	line	38
;uart.c: 38: SREN = 0;
	bcf	c:(32093/8),(32093)&7	;volatile
	line	40
;uart.c: 40: CREN = 1;
	bsf	c:(32092/8),(32092)&7	;volatile
	line	42
;uart.c: 42: ADDEN = 0;
	bcf	c:(32091/8),(32091)&7	;volatile
	line	44
;uart.c: 44: FERR = 0;
	bcf	c:(32090/8),(32090)&7	;volatile
	line	46
;uart.c: 46: OERR = 0;
	bcf	c:(32089/8),(32089)&7	;volatile
	line	48
;uart.c: 48: RX9D = 0;
	bcf	c:(32088/8),(32088)&7	;volatile
	line	53
;uart.c: 53: ABDOVF = 0;
	bcf	c:(32199/8),(32199)&7	;volatile
	line	55
;uart.c: 55: RCIDL = 1;
	bsf	c:(32198/8),(32198)&7	;volatile
	line	57
;uart.c: 57: SCKP = 0;
	bcf	c:(32196/8),(32196)&7	;volatile
	line	59
;uart.c: 59: BRG16 = 0;
	bcf	c:(32195/8),(32195)&7	;volatile
	line	61
;uart.c: 61: WUE = 0;
	bcf	c:(32193/8),(32193)&7	;volatile
	line	63
;uart.c: 63: ABDEN = 0;
	bcf	c:(32192/8),(32192)&7	;volatile
	line	67
	
l2127:
;uart.c: 67: SPBRG = 129;
	movlw	low(081h)
	movwf	((c:4015))^0f00h,c	;volatile
	line	70
	
l2129:
;uart.c: 70: TXIE = 1;
	bsf	c:(31980/8),(31980)&7	;volatile
	line	72
	
l2131:
;uart.c: 72: TXIF = 0;
	bcf	c:(31988/8),(31988)&7	;volatile
	line	74
	
l2133:
;uart.c: 74: RCIE = 1;
	bsf	c:(31981/8),(31981)&7	;volatile
	line	76
	
l2135:
;uart.c: 76: RCIF = 0;
	bcf	c:(31989/8),(31989)&7	;volatile
	line	77
	
l551:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_uart
	__end_of_init_uart:
	signat	_init_uart,89
	global	_init_matrix_keypad

;; *************** function _init_matrix_keypad *****************
;; Defined at:
;;		line 4 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2,group=0
	file	"matrix_keypad.c"
	line	4
global __ptext5
__ptext5:
psect	text5
	file	"matrix_keypad.c"
	line	4
	
_init_matrix_keypad:
;incstack = 0
	callstack 28
	line	7
	
l2119:
;matrix_keypad.c: 7: ADCON1 = 0x0F;
	movlw	low(0Fh)
	movwf	((c:4033))^0f00h,c	;volatile
	line	10
;matrix_keypad.c: 10: TRISB = 0x1E;
	movlw	low(01Eh)
	movwf	((c:3987))^0f00h,c	;volatile
	line	13
	
l2121:
;matrix_keypad.c: 13: RBPU = 0;
	bcf	c:(32655/8),(32655)&7	;volatile
	line	15
	
l2123:
;matrix_keypad.c: 15: PORTB = PORTB | 0xE0;
	movf	((c:3969))^0f00h,c,w	;volatile
	iorlw	low(0E0h)
	movwf	((c:3969))^0f00h,c	;volatile
	line	16
	
l449:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_matrix_keypad
	__end_of_init_matrix_keypad:
	signat	_init_matrix_keypad,89
	global	_init_i2c

;; *************** function _init_i2c *****************
;; Defined at:
;;		line 3 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2,group=0
	file	"i2c.c"
	line	3
global __ptext6
__ptext6:
psect	text6
	file	"i2c.c"
	line	3
	
_init_i2c:
;incstack = 0
	callstack 28
	line	6
	
l1731:
;i2c.c: 6: TRISC3 = 1;
	bsf	c:(31907/8),(31907)&7	;volatile
	line	7
;i2c.c: 7: TRISC4 = 1;
	bsf	c:(31908/8),(31908)&7	;volatile
	line	9
	
l1733:
;i2c.c: 9: SSPCON1 = 0x28;
	movlw	low(028h)
	movwf	((c:4038))^0f00h,c	;volatile
	line	11
;i2c.c: 11: SSPADD = 0x31;
	movlw	low(031h)
	movwf	((c:4040))^0f00h,c	;volatile
	line	13
	
l1735:
;i2c.c: 13: CKE = 0;
	bcf	c:(32318/8),(32318)&7	;volatile
	line	15
	
l1737:
;i2c.c: 15: SMP = 1;
	bsf	c:(32319/8),(32319)&7	;volatile
	line	17
	
l1739:
;i2c.c: 17: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	19
	
l1741:
;i2c.c: 19: BCLIF = 0;
	bcf	c:(32011/8),(32011)&7	;volatile
	line	20
	
l74:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_i2c
	__end_of_init_i2c:
	signat	_init_i2c,89
	global	_init_ds1307

;; *************** function _init_ds1307 *****************
;; Defined at:
;;		line 12 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dummy           1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_read_ds1307
;;		_write_ds1307
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2,group=0
	file	"ds1307.c"
	line	12
global __ptext7
__ptext7:
psect	text7
	file	"ds1307.c"
	line	12
	
_init_ds1307:
;incstack = 0
	callstack 24
	line	17
	
l2843:
;ds1307.c: 14: unsigned char dummy;;ds1307.c: 17: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	18
	
l2845:
;ds1307.c: 18: write_ds1307(0x00, dummy | 0x80);
	movf	((c:init_ds1307@dummy))^00h,c,w
	iorlw	low(080h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	21
	
l2847:
;ds1307.c: 21: dummy = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	22
	
l2849:
;ds1307.c: 22: write_ds1307(0x02, dummy | 0x00);
	movff	(c:init_ds1307@dummy),(c:write_ds1307@data)
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	37
	
l2851:
;ds1307.c: 37: write_ds1307(0x07, 0x93);
	movlw	low(093h)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(07h)&0ffh
	
	call	_write_ds1307
	line	40
	
l2853:
;ds1307.c: 40: dummy = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	((c:init_ds1307@dummy))^00h,c
	line	41
	
l2855:
;ds1307.c: 41: write_ds1307(0x00, dummy & 0x7F);
	movf	((c:init_ds1307@dummy))^00h,c,w
	andlw	low(07Fh)
	movwf	((c:write_ds1307@data))^00h,c
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	43
	
l122:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_ds1307
	__end_of_init_ds1307:
	signat	_init_ds1307,89
	global	_init_clcd

;; *************** function _init_clcd *****************
;; Defined at:
;;		line 27 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2,group=0
	file	"clcd.c"
	line	27
global __ptext8
__ptext8:
psect	text8
	file	"clcd.c"
	line	27
	
_init_clcd:
;incstack = 0
	callstack 27
	line	30
	
l3205:
;clcd.c: 30: TRISD = 0x00;
	movlw	low(0)
	movwf	((c:3989))^0f00h,c	;volatile
	line	32
	
l3207:
;clcd.c: 32: TRISC = TRISC & 0xF8;
	movf	((c:3988))^0f00h,c,w	;volatile
	andlw	low(0F8h)
	movwf	((c:3988))^0f00h,c	;volatile
	line	34
	
l3209:
;clcd.c: 34: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	36
	
l3211:
;clcd.c: 36: clcd_write(0x02, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(02h)&0ffh
	
	call	_clcd_write
	line	37
	
l3213:
;clcd.c: 37: clcd_write(0x38, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(038h)&0ffh
	
	call	_clcd_write
	line	38
	
l3215:
;clcd.c: 38: clcd_write(0x0C, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(0Ch)&0ffh
	
	call	_clcd_write
	line	39
	
l3217:
;clcd.c: 39: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	40
	
l596:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_clcd
	__end_of_init_clcd:
	signat	_init_clcd,89
	global	_init_adc

;; *************** function _init_adc *****************
;; Defined at:
;;		line 4 in file "adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2,group=0
	file	"adc.c"
	line	4
global __ptext9
__ptext9:
psect	text9
	file	"adc.c"
	line	4
	
_init_adc:
;incstack = 0
	callstack 28
	line	7
	
l1715:
;adc.c: 7: ADFM = 1;
	bsf	c:(32263/8),(32263)&7	;volatile
	line	13
;adc.c: 13: ACQT2 = 1;
	bsf	c:(32261/8),(32261)&7	;volatile
	line	14
;adc.c: 14: ACQT1 = 0;
	bcf	c:(32260/8),(32260)&7	;volatile
	line	15
;adc.c: 15: ACQT0 = 0;
	bcf	c:(32259/8),(32259)&7	;volatile
	line	21
;adc.c: 21: ADCS0 = 0;
	bcf	c:(32256/8),(32256)&7	;volatile
	line	22
;adc.c: 22: ADCS1 = 1;
	bsf	c:(32257/8),(32257)&7	;volatile
	line	23
;adc.c: 23: ADCS2 = 0;
	bcf	c:(32258/8),(32258)&7	;volatile
	line	26
;adc.c: 26: GODONE = 0;
	bcf	c:(32273/8),(32273)&7	;volatile
	line	32
;adc.c: 32: VCFG1 = 0;
	bcf	c:(32269/8),(32269)&7	;volatile
	line	34
;adc.c: 34: VCFG0 = 0;
	bcf	c:(32268/8),(32268)&7	;volatile
	line	37
	
l1717:
;adc.c: 37: ADRESH = 0;
	movlw	low(0)
	movwf	((c:4036))^0f00h,c	;volatile
	line	38
;adc.c: 38: ADRESL = 0;
	movlw	low(0)
	movwf	((c:4035))^0f00h,c	;volatile
	line	41
	
l1719:
;adc.c: 41: ADON = 1;
	bsf	c:(32272/8),(32272)&7	;volatile
	line	42
	
l33:
	return	;funcret
	callstack 0
GLOBAL	__end_of_init_adc
	__end_of_init_adc:
	signat	_init_adc,89
	global	_get_time

;; *************** function _get_time *****************
;; Defined at:
;;		line 560 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 3F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_read_ds1307
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	560
global __ptext10
__ptext10:
psect	text10
	file	"main.c"
	line	560
	
_get_time:
;incstack = 0
	callstack 25
	line	562
	
l3513:
;main.c: 562: clock_reg[0] = read_ds1307(0x02);
	movlw	(02h)&0ffh
	
	call	_read_ds1307
	movwf	((c:_clock_reg))^00h,c
	line	563
;main.c: 563: clock_reg[1] = read_ds1307(0x01);
	movlw	(01h)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:_clock_reg)+01h))^00h,c
	line	564
;main.c: 564: clock_reg[2] = read_ds1307(0x00);
	movlw	(0)&0ffh
	
	call	_read_ds1307
	movwf	(0+((c:_clock_reg)+02h))^00h,c
	line	565
	
l3515:
;main.c: 565: if (clock_reg[0] & 0x40)
	
	btfss	((c:_clock_reg))^00h,c,(6)&7
	goto	u3161
	goto	u3160
u3161:
	goto	l3519
u3160:
	line	567
	
l3517:
;main.c: 566: {;main.c: 567: time[0] = '0' + ((clock_reg[0] >> 4) & 0x01);
	swapf	((c:_clock_reg))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(01h)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_time))&0ffh
	line	568
;main.c: 568: time[1] = '0' + (clock_reg[0] & 0x0F);
	movf	((c:_clock_reg))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+01h))&0ffh
	line	569
;main.c: 569: }
	goto	l3521
	line	572
	
l3519:
;main.c: 570: else;main.c: 571: {;main.c: 572: time[0] = '0' + ((clock_reg[0] >> 4) & 0x03);
	swapf	((c:_clock_reg))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(03h)
	addlw	low(030h)
	movlb	0	; () banked
	movwf	((_time))&0ffh
	line	573
;main.c: 573: time[1] = '0' + (clock_reg[0] & 0x0F);
	movf	((c:_clock_reg))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+01h))&0ffh
	line	575
	
l3521:; BSR set to: 0

;main.c: 574: };main.c: 575: time[2] = ':';
	movlw	low(03Ah)
	movwf	(0+(_time+02h))&0ffh
	line	576
	
l3523:; BSR set to: 0

;main.c: 576: time[3] = '0' + ((clock_reg[1] >> 4) & 0x0F);
	swapf	(0+((c:_clock_reg)+01h))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+03h))&0ffh
	line	577
	
l3525:; BSR set to: 0

;main.c: 577: time[4] = '0' + (clock_reg[1] & 0x0F);
	movf	(0+((c:_clock_reg)+01h))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+04h))&0ffh
	line	578
	
l3527:; BSR set to: 0

;main.c: 578: time[5] = ':';
	movlw	low(03Ah)
	movwf	(0+(_time+05h))&0ffh
	line	579
;main.c: 579: time[6] = '0' + ((clock_reg[2] >> 4) & 0x0F);
	swapf	(0+((c:_clock_reg)+02h))^00h,c,w
	andlw	(0ffh shr 4) & 0ffh
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+06h))&0ffh
	line	580
;main.c: 580: time[7] = '0' + (clock_reg[2] & 0x0F);
	movf	(0+((c:_clock_reg)+02h))^00h,c,w
	andlw	low(0Fh)
	addlw	low(030h)
	movwf	(0+(_time+07h))&0ffh
	line	581
	
l3529:; BSR set to: 0

;main.c: 581: time[8] = '\0';
	movlw	low(0)
	movwf	(0+(_time+08h))&0ffh
	line	582
	
l403:; BSR set to: 0

	return	;funcret
	callstack 0
GLOBAL	__end_of_get_time
	__end_of_get_time:
	signat	_get_time,89
	global	_read_ds1307

;; *************** function _read_ds1307 *****************
;; Defined at:
;;		line 54 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_get_time
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2,group=0
	file	"ds1307.c"
	line	54
global __ptext11
__ptext11:
psect	text11
	file	"ds1307.c"
	line	54
	
_read_ds1307:; BSR set to: 0

;incstack = 0
	callstack 24
;read_ds1307@address stored from wreg
	movwf	((c:read_ds1307@address))^00h,c
	line	58
	
l2641:
;ds1307.c: 56: unsigned char data;;ds1307.c: 58: i2c_start();
	call	_i2c_start	;wreg free
	line	59
	
l2643:
;ds1307.c: 59: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	60
	
l2645:
;ds1307.c: 60: i2c_write(address);
	movf	((c:read_ds1307@address))^00h,c,w
	
	call	_i2c_write
	line	61
	
l2647:
;ds1307.c: 61: i2c_rep_start();
	call	_i2c_rep_start	;wreg free
	line	62
	
l2649:
;ds1307.c: 62: i2c_write(0xD1);
	movlw	(0D1h)&0ffh
	
	call	_i2c_write
	line	63
;ds1307.c: 63: data = i2c_read();
	call	_i2c_read	;wreg free
	movwf	((c:read_ds1307@data))^00h,c
	line	64
	
l2651:
;ds1307.c: 64: i2c_stop();
	call	_i2c_stop	;wreg free
	line	66
;ds1307.c: 66: return data;
	movf	((c:read_ds1307@data))^00h,c,w
	line	67
	
l128:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_ds1307
	__end_of_read_ds1307:
	signat	_read_ds1307,4217
	global	_display_time

;; *************** function _display_time *****************
;; Defined at:
;;		line 550 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		___ftdiv
;;		___fttol
;;		___lwdiv
;;		___lwmod
;;		___lwtoft
;;		_clcd_print
;;		_clcd_putch
;;		_read_adc
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	550
global __ptext12
__ptext12:
psect	text12
	file	"main.c"
	line	550
	
_display_time:
;incstack = 0
	callstack 27
	line	554
	
l3505:; BSR set to: 0

;main.c: 554: speed = (read_adc(0x04) / (10.3333));
	movlw	low(float24(10.333299999999999))
	movwf	((c:___ftdiv@f2))^00h,c
	movlw	high(float24(10.333299999999999))
	movwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(float24(10.333299999999999))
	movwf	((c:___ftdiv@f2+2))^00h,c

	movlw	(04h)&0ffh
	
	call	_read_adc
	movff	0+?_read_adc,(c:___lwtoft@c)
	movff	1+?_read_adc,(c:___lwtoft@c+1)
	call	___lwtoft	;wreg free
	movff	0+?___lwtoft,(c:___ftdiv@f1)
	movff	1+?___lwtoft,(c:___ftdiv@f1+1)
	movff	2+?___lwtoft,(c:___ftdiv@f1+2)
	call	___ftdiv	;wreg free
	movff	0+?___ftdiv,(c:___fttol@f1)
	movff	1+?___ftdiv,(c:___fttol@f1+1)
	movff	2+?___ftdiv,(c:___fttol@f1+2)
	call	___fttol	;wreg free
	movff	0+?___fttol,(c:_speed)
	movff	1+?___fttol,(c:_speed+1)
	line	556
	
l3507:
;main.c: 556: clcd_print(time, (0xC0 + (0)));
		movlw	low(_time)
	movwf	((c:clcd_print@data))^00h,c
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	557
	
l3509:
;main.c: 557: clcd_putch( ((speed/10) +'0') , (0xC0 + (14)));
	movlw	low(0CEh)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:_speed),(c:___lwdiv@dividend)
	movff	(c:_speed+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	558
	
l3511:
;main.c: 558: clcd_putch( ((speed % 10) +'0') , (0xC0 + (15)));
	movlw	low(0CFh)
	movwf	((c:clcd_putch@addr))^00h,c
	movff	(c:_speed),(c:___lwmod@dividend)
	movff	(c:_speed+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	559
	
l398:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_time
	__end_of_display_time:
	signat	_display_time,89
	global	_read_adc

;; *************** function _read_adc *****************
;; Defined at:
;;		line 44 in file "adc.c"
;; Parameters:    Size  Location     Type
;;  CHANNEL         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  CHANNEL         1    6[COMRAM] unsigned char 
;;  reg_val         2    4[COMRAM] unsigned short 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned short 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2,group=0
	file	"adc.c"
	line	44
global __ptext13
__ptext13:
psect	text13
	file	"adc.c"
	line	44
	
_read_adc:
;incstack = 0
	callstack 28
;read_adc@CHANNEL stored from wreg
	movwf	((c:read_adc@CHANNEL))^00h,c
	line	50
	
l2833:
;adc.c: 46: unsigned short reg_val;;adc.c: 50: ADCON0 = (ADCON0 & 0xC3) | ( CHANNEL << 2);
	movff	(c:read_adc@CHANNEL),??_read_adc+0+0
	bcf	status,0
	rlcf	(??_read_adc+0+0)^00h,c
	bcf	status,0
	rlcf	(??_read_adc+0+0)^00h,c

	movf	((c:4034))^0f00h,c,w	;volatile
	andlw	low(0C3h)
	iorwf	(??_read_adc+0+0)^00h,c,w
	movwf	((c:4034))^0f00h,c	;volatile
	line	53
	
l2835:
;adc.c: 53: GO = 1;
	bsf	c:(32273/8),(32273)&7	;volatile
	line	54
;adc.c: 54: while (GO);
	
l36:
	btfsc	c:(32273/8),(32273)&7	;volatile
	goto	u2081
	goto	u2080
u2081:
	goto	l36
u2080:
	line	55
	
l2837:
;adc.c: 55: reg_val = (ADRESH << 8) | ADRESL;
	movf	((c:4035))^0f00h,c,w	;volatile
	movff	(c:4036),??_read_adc+0+0	;volatile
	clrf	(??_read_adc+0+0+1)^00h,c
	movff	??_read_adc+0+0,??_read_adc+0+1
	clrf	(??_read_adc+0+0)^00h,c
	iorwf	(??_read_adc+0+0)^00h,c,w
	movwf	((c:read_adc@reg_val))^00h,c
	movf	(??_read_adc+0+1)^00h,c,w
	movwf	1+((c:read_adc@reg_val))^00h,c
	line	57
	
l2839:
;adc.c: 57: return reg_val;
	movff	(c:read_adc@reg_val),(c:?_read_adc)
	movff	(c:read_adc@reg_val+1),(c:?_read_adc+1)
	line	58
	
l39:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_adc
	__end_of_read_adc:
	signat	_read_adc,4218
	global	___lwtoft

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 28 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwtoft.c"
	line	28
global __ptext14
__ptext14:
psect	text14
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwtoft.c"
	line	28
	
___lwtoft:
;incstack = 0
	callstack 27
	line	30
	
l3311:
	movff	(c:___lwtoft@c),(c:___ftpack@arg)
	movff	(c:___lwtoft@c+1),(c:___ftpack@arg+1)
	clrf	((c:___ftpack@arg+2))^00h,c
	movlw	low(08Eh)
	movwf	((c:___ftpack@exp))^00h,c
	movlw	low(0)
	movwf	((c:___ftpack@sign))^00h,c
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___lwtoft)
	movff	1+?___ftpack,(c:?___lwtoft+1)
	movff	2+?___ftpack,(c:?___lwtoft+2)
	line	31
	
l1139:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
	signat	___lwtoft,4219
	global	___fttol

;; *************** function ___fttol *****************
;; Defined at:
;;		line 44 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   26[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   36[COMRAM] unsigned long 
;;  exp1            1   40[COMRAM] unsigned char 
;;  sign1           1   35[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   26[COMRAM] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\fttol.c"
	line	44
global __ptext15
__ptext15:
psect	text15
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\fttol.c"
	line	44
	
___fttol:
;incstack = 0
	callstack 28
	line	49
	
l3265:
	movff	(c:___fttol@f1+2),??___fttol+0+0
	clrf	(??___fttol+0+0+1)^00h,c
	clrf	(??___fttol+0+0+2)^00h,c
	rlcf	((c:___fttol@f1+1))^00h,c,w
	rlcf	(??___fttol+0+0)^00h,c
	bnc	u2771
	bsf	(??___fttol+0+0+1)^00h,c,0
u2771:
	movf	(??___fttol+0+0)^00h,c,w
	movwf	((c:___fttol@exp1))^00h,c
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u2781
	goto	u2780
u2781:
	goto	l3271
u2780:
	line	50
	
l3267:
	movlw	low(0)
	movwf	((c:?___fttol))^00h,c
	movlw	high(0)
	movwf	((c:?___fttol+1))^00h,c
	movlw	low highword(0)
	movwf	((c:?___fttol+2))^00h,c
	movlw	high highword(0)
	movwf	((c:?___fttol+3))^00h,c
	goto	l1012
	line	51
	
l3271:
	movlw	(017h)&0ffh
	movwf	(??___fttol+0+0)^00h,c
	movff	(c:___fttol@f1),??___fttol+1+0
	movff	(c:___fttol@f1+1),??___fttol+1+0+1
	movff	(c:___fttol@f1+2),??___fttol+1+0+2
	incf	((??___fttol+0+0))^00h,c,w
	movwf	(??___fttol+4+0)^00h,c
	goto	u2790
u2795:
	bcf	status,0
	rrcf	(??___fttol+1+2)^00h,c
	rrcf	(??___fttol+1+1)^00h,c
	rrcf	(??___fttol+1+0)^00h,c
u2790:
	decfsz	(??___fttol+4+0)^00h,c
	goto	u2795
	movf	(??___fttol+1+0)^00h,c,w
	movwf	((c:___fttol@sign1))^00h,c
	line	52
	
l3273:
	bsf	(0+(15/8)+(c:___fttol@f1))^00h,c,(15)&7
	line	53
	
l3275:
	movlw	low(0FFFFh)
	andwf	((c:___fttol@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___fttol@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___fttol@f1+2))^00h,c

	line	54
	
l3277:
	movf	((c:___fttol@f1))^00h,c,w
	movwf	((c:___fttol@lval))^00h,c
	movf	((c:___fttol@f1+1))^00h,c,w
	movwf	1+((c:___fttol@lval))^00h,c
	
	movf	((c:___fttol@f1+2))^00h,c,w
	movwf	2+((c:___fttol@lval))^00h,c
	
	clrf	3+((c:___fttol@lval))^00h,c
	
	line	55
	
l3279:
	movlw	(08Eh)&0ffh
	subwf	((c:___fttol@exp1))^00h,c
	line	56
	
l3281:
	btfsc	((c:___fttol@exp1))^00h,c,7
	goto	u2800
	goto	u2801

u2801:
	goto	l3293
u2800:
	line	57
	
l3283:
		movf	((c:___fttol@exp1))^00h,c,w
	xorlw	80h
	addlw	-(80h^-15)
	btfsc	status,0
	goto	u2811
	goto	u2810

u2811:
	goto	l3289
u2810:
	goto	l3267
	line	60
	
l3289:
	bcf	status,0
	rrcf	((c:___fttol@lval+3))^00h,c
	rrcf	((c:___fttol@lval+2))^00h,c
	rrcf	((c:___fttol@lval+1))^00h,c
	rrcf	((c:___fttol@lval))^00h,c
	line	61
	
l3291:
	incfsz	((c:___fttol@exp1))^00h,c
	
	goto	l3289
	goto	l3303
	line	63
	
l3293:
		movlw	018h-1
	cpfsgt	((c:___fttol@exp1))^00h,c
	goto	u2821
	goto	u2820

u2821:
	goto	l3301
u2820:
	goto	l3267
	line	66
	
l3299:
	bcf	status,0
	rlcf	((c:___fttol@lval))^00h,c
	rlcf	((c:___fttol@lval+1))^00h,c
	rlcf	((c:___fttol@lval+2))^00h,c
	rlcf	((c:___fttol@lval+3))^00h,c
	line	67
	decf	((c:___fttol@exp1))^00h,c
	line	65
	
l3301:
	movf	((c:___fttol@exp1))^00h,c,w
	btfss	status,2
	goto	u2831
	goto	u2830
u2831:
	goto	l3299
u2830:
	line	70
	
l3303:
	movf	((c:___fttol@sign1))^00h,c,w
	btfsc	status,2
	goto	u2841
	goto	u2840
u2841:
	goto	l3307
u2840:
	line	71
	
l3305:
	comf	((c:___fttol@lval+3))^00h,c
	comf	((c:___fttol@lval+2))^00h,c
	comf	((c:___fttol@lval+1))^00h,c
	negf	((c:___fttol@lval))^00h,c
	movlw	0
	addwfc	((c:___fttol@lval+1))^00h,c
	addwfc	((c:___fttol@lval+2))^00h,c
	addwfc	((c:___fttol@lval+3))^00h,c
	line	72
	
l3307:
	movff	(c:___fttol@lval),(c:?___fttol)
	movff	(c:___fttol@lval+1),(c:?___fttol+1)
	movff	(c:___fttol@lval+2),(c:?___fttol+2)
	movff	(c:___fttol@lval+3),(c:?___fttol+3)
	line	73
	
l1012:
	return	;funcret
	callstack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
	signat	___fttol,4220
	global	___ftdiv

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 54 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f1              3   11[COMRAM] float 
;;  f2              3   14[COMRAM] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   21[COMRAM] float 
;;  sign            1   25[COMRAM] unsigned char 
;;  exp             1   24[COMRAM] unsigned char 
;;  cntr            1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         6       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:        15       0       0       0       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\ftdiv.c"
	line	54
global __ptext16
__ptext16:
psect	text16
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\ftdiv.c"
	line	54
	
___ftdiv:
;incstack = 0
	callstack 27
	line	63
	
l3219:
	movff	(c:___ftdiv@f1+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u2721
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u2721:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@exp))^00h,c
	movf	((c:___ftdiv@exp))^00h,c,w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l3225
u2730:
	line	64
	
l3221:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l976
	line	65
	
l3225:
	movff	(c:___ftdiv@f2+2),??___ftdiv+0+0
	clrf	(??___ftdiv+0+0+1)^00h,c
	clrf	(??___ftdiv+0+0+2)^00h,c
	rlcf	((c:___ftdiv@f2+1))^00h,c,w
	rlcf	(??___ftdiv+0+0)^00h,c
	bnc	u2741
	bsf	(??___ftdiv+0+0+1)^00h,c,0
u2741:
	movf	(??___ftdiv+0+0)^00h,c,w
	movwf	((c:___ftdiv@sign))^00h,c
	movf	((c:___ftdiv@sign))^00h,c,w
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l3231
u2750:
	line	66
	
l3227:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftdiv))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftdiv+2))^00h,c

	goto	l976
	line	67
	
l3231:
	movlw	low(0)
	movwf	((c:___ftdiv@f3))^00h,c
	movlw	high(0)
	movwf	((c:___ftdiv@f3+1))^00h,c
	movlw	low highword(0)
	movwf	((c:___ftdiv@f3+2))^00h,c

	line	68
	
l3233:
	movf	((c:___ftdiv@sign))^00h,c,w
	addlw	low(089h)
	subwf	((c:___ftdiv@exp))^00h,c
	line	69
	
l3235:
	movff	0+((c:___ftdiv@f1)+02h),(c:___ftdiv@sign)
	line	70
	
l3237:
	movf	(0+((c:___ftdiv@f2)+02h))^00h,c,w
	xorwf	((c:___ftdiv@sign))^00h,c
	line	71
	
l3239:
	movlw	(080h)&0ffh
	andwf	((c:___ftdiv@sign))^00h,c
	line	72
	
l3241:
	bsf	(0+(15/8)+(c:___ftdiv@f1))^00h,c,(15)&7
	line	73
	
l3243:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f1))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f1+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f1+2))^00h,c

	line	74
	
l3245:
	bsf	(0+(15/8)+(c:___ftdiv@f2))^00h,c,(15)&7
	line	75
	
l3247:
	movlw	low(0FFFFh)
	andwf	((c:___ftdiv@f2))^00h,c
	movlw	high(0FFFFh)
	andwf	((c:___ftdiv@f2+1))^00h,c
	movlw	low highword(0FFFFh)
	andwf	((c:___ftdiv@f2+2))^00h,c

	line	76
	
l3249:
	movlw	low(018h)
	movwf	((c:___ftdiv@cntr))^00h,c
	line	78
	
l3251:
	bcf	status,0
	rlcf	((c:___ftdiv@f3))^00h,c
	rlcf	((c:___ftdiv@f3+1))^00h,c
	rlcf	((c:___ftdiv@f3+2))^00h,c
	line	79
	
l3253:
		movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c,w
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c,w
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c,w
	btfss	status,0
	goto	u2761
	goto	u2760

u2761:
	goto	l979
u2760:
	line	80
	
l3255:
	movf	((c:___ftdiv@f2))^00h,c,w
	subwf	((c:___ftdiv@f1))^00h,c
	movf	((c:___ftdiv@f2+1))^00h,c,w
	subwfb	((c:___ftdiv@f1+1))^00h,c
	movf	((c:___ftdiv@f2+2))^00h,c,w
	subwfb	((c:___ftdiv@f1+2))^00h,c

	line	81
	
l3257:
	bsf	(0+(0/8)+(c:___ftdiv@f3))^00h,c,(0)&7
	line	82
	
l979:
	line	83
	bcf	status,0
	rlcf	((c:___ftdiv@f1))^00h,c
	rlcf	((c:___ftdiv@f1+1))^00h,c
	rlcf	((c:___ftdiv@f1+2))^00h,c
	line	84
	
l3259:
	decfsz	((c:___ftdiv@cntr))^00h,c
	
	goto	l3251
	line	85
	
l3261:
	movff	(c:___ftdiv@f3),(c:___ftpack@arg)
	movff	(c:___ftdiv@f3+1),(c:___ftpack@arg+1)
	movff	(c:___ftdiv@f3+2),(c:___ftpack@arg+2)
	movff	(c:___ftdiv@exp),(c:___ftpack@exp)
	movff	(c:___ftdiv@sign),(c:___ftpack@sign)
	call	___ftpack	;wreg free
	movff	0+?___ftpack,(c:?___ftdiv)
	movff	1+?___ftpack,(c:?___ftdiv+1)
	movff	2+?___ftpack,(c:?___ftdiv+2)
	line	86
	
l976:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
	signat	___ftdiv,8315
	global	___ftpack

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 62 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMRAM] unsigned um
;;  exp             1    3[COMRAM] unsigned char 
;;  sign            1    4[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMRAM] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         5       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___lwtoft
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\float.c"
	line	62
global __ptext17
__ptext17:
psect	text17
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\float.c"
	line	62
	
___ftpack:
;incstack = 0
	callstack 27
	line	64
	
l2743:
	movf	((c:___ftpack@exp))^00h,c,w
	btfsc	status,2
	goto	u1931
	goto	u1930
u1931:
	goto	l2747
u1930:
	
l2745:
	movf	((c:___ftpack@arg))^00h,c,w
iorwf	((c:___ftpack@arg+1))^00h,c,w
iorwf	((c:___ftpack@arg+2))^00h,c,w
	btfss	status,2
	goto	u1941
	goto	u1940

u1941:
	goto	l2753
u1940:
	line	65
	
l2747:
	movlw	low(float24(0.0000000000000000))
	movwf	((c:?___ftpack))^00h,c
	movlw	high(float24(0.0000000000000000))
	movwf	((c:?___ftpack+1))^00h,c
	movlw	low highword(float24(0.0000000000000000))
	movwf	((c:?___ftpack+2))^00h,c

	goto	l910
	line	67
	
l2751:
	incf	((c:___ftpack@exp))^00h,c
	line	68
	bcf	status,0
	rrcf	((c:___ftpack@arg+2))^00h,c
	rrcf	((c:___ftpack@arg+1))^00h,c
	rrcf	((c:___ftpack@arg))^00h,c
	line	66
	
l2753:
	movlw	low(0FE0000h)
	andwf	((c:___ftpack@arg))^00h,c,w
	movwf	(??___ftpack+0+0)^00h,c
	movlw	0
	andwf	((c:___ftpack@arg+1))^00h,c,w
	movwf	1+(??___ftpack+0+0)^00h,c
	
	movlw	0FEh
	andwf	((c:___ftpack@arg+2))^00h,c,w
	movwf	2+(??___ftpack+0+0)^00h,c

	movf	(??___ftpack+0+0)^00h,c,w
iorwf	(??___ftpack+0+1)^00h,c,w
iorwf	(??___ftpack+0+2)^00h,c,w
	btfss	status,2
	goto	u1951
	goto	u1950

u1951:
	goto	l2751
u1950:
	goto	l2759
	line	71
	
l2755:
	incf	((c:___ftpack@exp))^00h,c
	line	72
	
l2757:
	movlw	low(01h)
	addwf	((c:___ftpack@arg))^00h,c
	movlw	high(01h)
	addwfc	((c:___ftpack@arg+1))^00h,c
	movlw	low highword(01h)
	addwfc	((c:___ftpack@arg+2))^00h,c

	line	73
	bcf	status,0
	rrcf	((c:___ftpack@arg+2))^00h,c
	rrcf	((c:___ftpack@arg+1))^00h,c
	rrcf	((c:___ftpack@arg))^00h,c
	line	70
	
l2759:
	movlw	low(0FF0000h)
	andwf	((c:___ftpack@arg))^00h,c,w
	movwf	(??___ftpack+0+0)^00h,c
	movlw	0
	andwf	((c:___ftpack@arg+1))^00h,c,w
	movwf	1+(??___ftpack+0+0)^00h,c
	
	movlw	0FFh
	andwf	((c:___ftpack@arg+2))^00h,c,w
	movwf	2+(??___ftpack+0+0)^00h,c

	movf	(??___ftpack+0+0)^00h,c,w
iorwf	(??___ftpack+0+1)^00h,c,w
iorwf	(??___ftpack+0+2)^00h,c,w
	btfss	status,2
	goto	u1961
	goto	u1960

u1961:
	goto	l2755
u1960:
	goto	l2763
	line	76
	
l2761:
	decf	((c:___ftpack@exp))^00h,c
	line	77
	bcf	status,0
	rlcf	((c:___ftpack@arg))^00h,c
	rlcf	((c:___ftpack@arg+1))^00h,c
	rlcf	((c:___ftpack@arg+2))^00h,c
	line	75
	
l2763:
	
	btfsc	((c:___ftpack@arg+1))^00h,c,(15)&7
	goto	u1971
	goto	u1970
u1971:
	goto	l921
u1970:
	
l2765:
		movlw	02h-0
	cpfslt	((c:___ftpack@exp))^00h,c
	goto	u1981
	goto	u1980

u1981:
	goto	l2761
u1980:
	
l921:
	line	79
	
	btfsc	((c:___ftpack@exp))^00h,c,(0)&7
	goto	u1991
	goto	u1990
u1991:
	goto	l2769
u1990:
	line	80
	
l2767:
	bcf	(0+(15/8)+(c:___ftpack@arg))^00h,c,(15)&7
	line	81
	
l2769:
	bcf status,0
	rrcf	((c:___ftpack@exp))^00h,c

	line	82
	movf	((c:___ftpack@exp))^00h,c,w
	iorwf	((c:___ftpack@arg+2))^00h,c

	line	83
	
l2771:
	movf	((c:___ftpack@sign))^00h,c,w
	btfsc	status,2
	goto	u2001
	goto	u2000
u2001:
	goto	l2775
u2000:
	line	84
	
l2773:
	bsf	(0+(23/8)+(c:___ftpack@arg))^00h,c,(23)&7
	line	85
	
l2775:
	movff	(c:___ftpack@arg),(c:?___ftpack)
	movff	(c:___ftpack@arg+1),(c:?___ftpack+1)
	movff	(c:___ftpack@arg+2),(c:?___ftpack+2)
	line	86
	
l910:
	return	;funcret
	callstack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
	signat	___ftpack,12411
	global	_display_event

;; *************** function _display_event *****************
;; Defined at:
;;		line 500 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_clcd_print
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	500
global __ptext18
__ptext18:
psect	text18
	file	"main.c"
	line	500
	
_display_event:
;incstack = 0
	callstack 27
	line	503
	
l3465:
;main.c: 503: clcd_print("  TIME    EV  SP", (0x80 + (0)));
		movlw	low(STR_19)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_19)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	504
	
l3467:
;main.c: 504: clcd_print(Event1[event] , (0xC0 + (11)));
	movf	((c:_event))^00h,c,w
	mullw	03h
	movf	(prodl)^0f00h,c,w
	addlw	low(_Event1)
	movwf	(??_display_event+0+0)^00h,c
		movff	(??_display_event+0+0),(c:clcd_print@data)
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0CBh)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	505
	
l382:
	return	;funcret
	callstack 0
GLOBAL	__end_of_display_event
	__end_of_display_event:
	signat	_display_event,89
	global	_change_event

;; *************** function _change_event *****************
;; Defined at:
;;		line 506 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  key             1    7[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_read_switches
;;		_store_event
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2,group=0
	line	506
global __ptext19
__ptext19:
psect	text19
	file	"main.c"
	line	506
	
_change_event:
;incstack = 0
	callstack 24
	line	509
	
l3469:
;main.c: 508: unsigned char key;;main.c: 509: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:change_event@key))^00h,c
	line	511
	
l3471:
;main.c: 511: if (key == 1)
		decf	((c:change_event@key))^00h,c,w
	btfss	status,2
	goto	u3081
	goto	u3080

u3081:
	goto	l3483
u3080:
	line	513
	
l3473:
;main.c: 512: {;main.c: 513: if (event < 6)
		movlw	06h-0
	cpfslt	((c:_event))^00h,c
	goto	u3091
	goto	u3090

u3091:
	goto	l3479
u3090:
	line	515
	
l3475:
;main.c: 514: {;main.c: 515: event++;
	incf	((c:_event))^00h,c
	line	516
	
l3477:
;main.c: 516: store_event();
	call	_store_event	;wreg free
	line	518
	
l3479:
;main.c: 517: };main.c: 518: if (event == 8)
		movlw	8
	xorwf	((c:_event))^00h,c,w
	btfss	status,2
	goto	u3101
	goto	u3100

u3101:
	goto	l3501
u3100:
	line	520
	
l3481:
;main.c: 519: {;main.c: 520: event = 1;
	movlw	low(01h)
	movwf	((c:_event))^00h,c
	goto	l3501
	line	524
	
l3483:
;main.c: 524: else if(key == 2)
		movlw	2
	xorwf	((c:change_event@key))^00h,c,w
	btfss	status,2
	goto	u3111
	goto	u3110

u3111:
	goto	l3495
u3110:
	line	526
	
l3485:
;main.c: 525: {;main.c: 526: if (event == 8)
		movlw	8
	xorwf	((c:_event))^00h,c,w
	btfss	status,2
	goto	u3121
	goto	u3120

u3121:
	goto	l3489
u3120:
	line	528
	
l3487:
;main.c: 527: {;main.c: 528: event =1;
	movlw	low(01h)
	movwf	((c:_event))^00h,c
	line	532
	
l3489:
;main.c: 530: };main.c: 532: if (event > 1)
		movlw	02h-1
	cpfsgt	((c:_event))^00h,c
	goto	u3131
	goto	u3130

u3131:
	goto	l3501
u3130:
	line	534
	
l3491:
;main.c: 533: {;main.c: 534: event--;
	decf	((c:_event))^00h,c
	line	535
	
l3493:
;main.c: 535: store_event();
	call	_store_event	;wreg free
	goto	l3501
	line	538
	
l3495:
;main.c: 538: else if (key == 3)
		movlw	3
	xorwf	((c:change_event@key))^00h,c,w
	btfss	status,2
	goto	u3141
	goto	u3140

u3141:
	goto	l3501
u3140:
	line	540
	
l3497:
;main.c: 539: {;main.c: 540: event = 8;
	movlw	low(08h)
	movwf	((c:_event))^00h,c
	goto	l3493
	line	543
	
l3501:
;main.c: 542: };main.c: 543: if (key == 4)
		movlw	4
	xorwf	((c:change_event@key))^00h,c,w
	btfss	status,2
	goto	u3151
	goto	u3150

u3151:
	goto	l395
u3150:
	line	545
	
l3503:
;main.c: 544: {;main.c: 545: choose_flag = 1;
	movlw	low(01h)
	movwf	((c:_choose_flag))^00h,c
	line	549
	
l395:
	return	;funcret
	callstack 0
GLOBAL	__end_of_change_event
	__end_of_change_event:
	signat	_change_event,89
	global	_store_event

;; *************** function _store_event *****************
;; Defined at:
;;		line 467 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_store_external_eeprom
;; This function is called by:
;;		_change_event
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2,group=0
	line	467
global __ptext20
__ptext20:
psect	text20
	file	"main.c"
	line	467
	
_store_event:
;incstack = 0
	callstack 24
	line	471
	
l3183:
;main.c: 471: store_data[0] = time [0];
	movff	(_time),(_store_data)
	line	472
;main.c: 472: store_data[1] = time [1];
	movff	0+(_time+01h),0+(_store_data+01h)
	line	473
	
l3185:
;main.c: 473: store_data[2] = ':';
	movlw	low(03Ah)
	movlb	0	; () banked
	movwf	(0+(_store_data+02h))&0ffh
	line	474
	
l3187:; BSR set to: 0

;main.c: 474: store_data[3] = time [3];
	movff	0+(_time+03h),0+(_store_data+03h)
	line	475
	
l3189:; BSR set to: 0

;main.c: 475: store_data[4] = time [4];
	movff	0+(_time+04h),0+(_store_data+04h)
	line	476
;main.c: 476: store_data[5] = ':' ;
	movlw	low(03Ah)
	movwf	(0+(_store_data+05h))&0ffh
	line	477
	
l3191:; BSR set to: 0

;main.c: 477: store_data[6] = time [6];
	movff	0+(_time+06h),0+(_store_data+06h)
	line	478
	
l3193:; BSR set to: 0

;main.c: 478: store_data[7] = time [7];
	movff	0+(_time+07h),0+(_store_data+07h)
	line	479
;main.c: 479: store_data[8] = ':' ;
	movlw	low(03Ah)
	movwf	(0+(_store_data+08h))&0ffh
	line	480
	
l3195:; BSR set to: 0

;main.c: 480: store_data[9] = Event1[event][0];
	movf	((c:_event))^00h,c,w
	mullw	03h
	movf	(prodl)^0f00h,c,w
	addlw	low(_Event1)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+(_store_data+09h))&0ffh
	line	481
	
l3197:; BSR set to: 0

;main.c: 481: store_data[10] = Event1[event][1];
	movf	((c:_event))^00h,c,w
	mullw	03h
	movf	(prodl)^0f00h,c,w
	addlw	low(_Event1+01h)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+(_store_data+0Ah))&0ffh
	line	482
;main.c: 482: store_data[11] = ' ' ;
	movlw	low(020h)
	movwf	(0+(_store_data+0Bh))&0ffh
	line	483
	
l3199:; BSR set to: 0

;main.c: 483: store_data[12] = '0' + (speed/10);
	movff	(c:_speed),(c:___lwdiv@dividend)
	movff	(c:_speed+1),(c:___lwdiv@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwdiv@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwdiv@divisor))^00h,c
	call	___lwdiv	;wreg free
	movf	(0+?___lwdiv)^00h,c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_store_data+0Ch))&0ffh
	line	484
	
l3201:; BSR set to: 0

;main.c: 484: store_data[13] = '0' + (speed%10);
	movff	(c:_speed),(c:___lwmod@dividend)
	movff	(c:_speed+1),(c:___lwmod@dividend+1)
	movlw	high(0Ah)
	movwf	((c:___lwmod@divisor+1))^00h,c
	movlw	low(0Ah)
	movwf	((c:___lwmod@divisor))^00h,c
	call	___lwmod	;wreg free
	movf	(0+?___lwmod)^00h,c,w
	addlw	low(030h)
	movlb	0	; () banked
	movwf	(0+(_store_data+0Dh))&0ffh
	line	485
	
l3203:; BSR set to: 0

;main.c: 485: store_external_eeprom();
	call	_store_external_eeprom	;wreg free
	line	487
	
l373:
	return	;funcret
	callstack 0
GLOBAL	__end_of_store_event
	__end_of_store_event:
	signat	_store_event,89
	global	_store_external_eeprom

;; *************** function _store_external_eeprom *****************
;; Defined at:
;;		line 488 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    5[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 3F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_write_external_eeprom
;; This function is called by:
;;		_store_event
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2,group=0
	line	488
global __ptext21
__ptext21:
psect	text21
	file	"main.c"
	line	488
	
_store_external_eeprom:
;incstack = 0
	callstack 24
	line	492
	
l2725:; BSR set to: 0

;main.c: 491: unsigned char i;;main.c: 492: for (i = 0; i< 14; i++)
	movlw	low(0)
	movwf	((c:store_external_eeprom@i))^00h,c
	line	494
	
l2731:
;main.c: 493: {;main.c: 494: write_external_eeprom(((count*14) + i),store_data[i]);
	movf	((c:store_external_eeprom@i))^00h,c,w
	addlw	low(_store_data)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:write_external_eeprom@data))^00h,c
	movf	((c:_count))^00h,c,w
	mullw	0Eh
	movf	(prodl)^0f00h,c,w
	addwf	((c:store_external_eeprom@i))^00h,c,w
	
	call	_write_external_eeprom
	line	492
	
l2733:
	incf	((c:store_external_eeprom@i))^00h,c
	
l2735:
		movlw	0Eh-1
	cpfsgt	((c:store_external_eeprom@i))^00h,c
	goto	u1911
	goto	u1910

u1911:
	goto	l2731
u1910:
	line	496
	
l2737:
;main.c: 495: };main.c: 496: count++;
	incf	((c:_count))^00h,c
	line	497
	
l2739:
;main.c: 497: if (count == 10)
		movlw	10
	xorwf	((c:_count))^00h,c,w
	btfss	status,2
	goto	u1921
	goto	u1920

u1921:
	goto	l379
u1920:
	line	498
	
l2741:
;main.c: 498: count=0;
	movlw	low(0)
	movwf	((c:_count))^00h,c
	line	499
	
l379:
	return	;funcret
	callstack 0
GLOBAL	__end_of_store_external_eeprom
	__end_of_store_external_eeprom:
	signat	_store_external_eeprom,89
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_store_event
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwmod.c"
	line	7
global __ptext22
__ptext22:
psect	text22
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwmod.c"
	line	7
	
___lwmod:
;incstack = 0
	callstack 28
	line	12
	
l2817:
	movf	((c:___lwmod@divisor))^00h,c,w
iorwf	((c:___lwmod@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2051
	goto	u2050

u2051:
	goto	l1127
u2050:
	line	13
	
l2819:
	movlw	low(01h)
	movwf	((c:___lwmod@counter))^00h,c
	line	14
	goto	l2823
	line	15
	
l2821:
	bcf	status,0
	rlcf	((c:___lwmod@divisor))^00h,c
	rlcf	((c:___lwmod@divisor+1))^00h,c
	line	16
	incf	((c:___lwmod@counter))^00h,c
	line	14
	
l2823:
	
	btfss	((c:___lwmod@divisor+1))^00h,c,(15)&7
	goto	u2061
	goto	u2060
u2061:
	goto	l2821
u2060:
	line	19
	
l2825:
		movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c,w
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2071
	goto	u2070

u2071:
	goto	l2829
u2070:
	line	20
	
l2827:
	movf	((c:___lwmod@divisor))^00h,c,w
	subwf	((c:___lwmod@dividend))^00h,c
	movf	((c:___lwmod@divisor+1))^00h,c,w
	subwfb	((c:___lwmod@dividend+1))^00h,c

	line	21
	
l2829:
	bcf	status,0
	rrcf	((c:___lwmod@divisor+1))^00h,c
	rrcf	((c:___lwmod@divisor))^00h,c
	line	22
	
l2831:
	decfsz	((c:___lwmod@counter))^00h,c
	
	goto	l2825
	line	23
	
l1127:
	line	24
	movff	(c:___lwmod@dividend),(c:?___lwmod)
	movff	(c:___lwmod@dividend+1),(c:?___lwmod+1)
	line	25
	
l1134:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 7 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  dividend        2    0[COMRAM] unsigned int 
;;  divisor         2    2[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    4[COMRAM] unsigned int 
;;  counter         1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         4       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_store_event
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwdiv.c"
	line	7
global __ptext23
__ptext23:
psect	text23
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lwdiv.c"
	line	7
	
___lwdiv:
;incstack = 0
	callstack 28
	line	13
	
l2795:
	movlw	high(0)
	movwf	((c:___lwdiv@quotient+1))^00h,c
	movlw	low(0)
	movwf	((c:___lwdiv@quotient))^00h,c
	line	14
	
l2797:
	movf	((c:___lwdiv@divisor))^00h,c,w
iorwf	((c:___lwdiv@divisor+1))^00h,c,w
	btfsc	status,2
	goto	u2021
	goto	u2020

u2021:
	goto	l1117
u2020:
	line	15
	
l2799:
	movlw	low(01h)
	movwf	((c:___lwdiv@counter))^00h,c
	line	16
	goto	l2803
	line	17
	
l2801:
	bcf	status,0
	rlcf	((c:___lwdiv@divisor))^00h,c
	rlcf	((c:___lwdiv@divisor+1))^00h,c
	line	18
	incf	((c:___lwdiv@counter))^00h,c
	line	16
	
l2803:
	
	btfss	((c:___lwdiv@divisor+1))^00h,c,(15)&7
	goto	u2031
	goto	u2030
u2031:
	goto	l2801
u2030:
	line	21
	
l2805:
	bcf	status,0
	rlcf	((c:___lwdiv@quotient))^00h,c
	rlcf	((c:___lwdiv@quotient+1))^00h,c
	line	22
	
l2807:
		movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c,w
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c,w
	btfss	status,0
	goto	u2041
	goto	u2040

u2041:
	goto	l2813
u2040:
	line	23
	
l2809:
	movf	((c:___lwdiv@divisor))^00h,c,w
	subwf	((c:___lwdiv@dividend))^00h,c
	movf	((c:___lwdiv@divisor+1))^00h,c,w
	subwfb	((c:___lwdiv@dividend+1))^00h,c

	line	24
	
l2811:
	bsf	(0+(0/8)+(c:___lwdiv@quotient))^00h,c,(0)&7
	line	26
	
l2813:
	bcf	status,0
	rrcf	((c:___lwdiv@divisor+1))^00h,c
	rrcf	((c:___lwdiv@divisor))^00h,c
	line	27
	
l2815:
	decfsz	((c:___lwdiv@counter))^00h,c
	
	goto	l2805
	line	28
	
l1117:
	line	29
	movff	(c:___lwdiv@quotient),(c:?___lwdiv)
	movff	(c:___lwdiv@quotient+1),(c:?___lwdiv+1)
	line	30
	
l1124:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_Enter_password

;; *************** function _Enter_password *****************
;; Defined at:
;;		line 29 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   11[COMRAM] unsigned int 
;;  wait            2   13[COMRAM] unsigned int 
;;  delay           2    0        unsigned int 
;;  count           1   16[COMRAM] unsigned char 
;;  key             1   15[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         6       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_read_external_eeprom
;;		_read_switches
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	29
global __ptext24
__ptext24:
psect	text24
	file	"main.c"
	line	29
	
_Enter_password:
;incstack = 0
	callstack 25
	line	36
	
l3315:
;main.c: 36: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	37
	
l3317:
;main.c: 37: clcd_print("ENTER PASSWORD",(0x80 + (0)));
		movlw	low(STR_1)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_1)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	40
	
l3319:
;main.c: 39: unsigned char key;;main.c: 40: unsigned char count = 0;
	movlw	low(0)
	movwf	((c:Enter_password@count))^00h,c
	line	41
	
l3321:
;main.c: 41: unsigned int delay, wait=0;
	movlw	high(0)
	movwf	((c:Enter_password@wait+1))^00h,c
	movlw	low(0)
	movwf	((c:Enter_password@wait))^00h,c
	line	46
	
l3323:
;main.c: 45: {;main.c: 46: if (attempt < 4)
		movlw	04h-0
	cpfslt	((c:Enter_password@attempt))^00h,c
	goto	u2851
	goto	u2850

u2851:
	goto	l3381
u2850:
	line	48
	
l3325:
;main.c: 47: {;main.c: 48: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:Enter_password@key))^00h,c
	line	49
	
l3327:
;main.c: 49: if (input < 4)
		movlw	04h-0
	cpfslt	((c:Enter_password@input))^00h,c
	goto	u2861
	goto	u2860

u2861:
	goto	l3349
u2860:
	line	51
	
l3329:
;main.c: 50: {;main.c: 51: if (key == 5)
		movlw	5
	xorwf	((c:Enter_password@key))^00h,c,w
	btfss	status,2
	goto	u2871
	goto	u2870

u2871:
	goto	l3337
u2870:
	line	53
	
l3331:
;main.c: 52: {;main.c: 53: clcd_putch('*', (0xC0 + (input++)));
	movf	((c:Enter_password@input))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	
l3333:
	incf	((c:Enter_password@input))^00h,c
	line	54
	
l3335:
;main.c: 54: count = count << 1 | 1 ;
	bsf	status,0
	
	rlcf	((c:Enter_password@count))^00h,c
	line	56
	
l3337:
;main.c: 55: };main.c: 56: if (key == 6)
		movlw	6
	xorwf	((c:Enter_password@key))^00h,c,w
	btfss	status,2
	goto	u2881
	goto	u2880

u2881:
	goto	l3345
u2880:
	line	58
	
l3339:
;main.c: 57: {;main.c: 58: clcd_putch('*',(0xC0 + (input++)));
	movf	((c:Enter_password@input))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	
l3341:
	incf	((c:Enter_password@input))^00h,c
	line	59
	
l3343:
;main.c: 59: count = count << 1;
	movf	((c:Enter_password@count))^00h,c,w
	addwf	((c:Enter_password@count))^00h,c,w
	movwf	((c:Enter_password@count))^00h,c
	line	61
	
l3345:
;main.c: 60: };main.c: 61: for (unsigned int i = 50000; i--; );
	movlw	high(0C350h)
	movwf	((c:Enter_password@i+1))^00h,c
	movlw	low(0C350h)
	movwf	((c:Enter_password@i))^00h,c
	
l3347:
	decf	((c:Enter_password@i))^00h,c
	btfss	status,0
	decf	((c:Enter_password@i+1))^00h,c
		incf	((c:Enter_password@i))^00h,c,w
	bnz	u2891
	incf	((c:Enter_password@i+1))^00h,c,w
	btfss	status,2
	goto	u2891
	goto	u2890

u2891:
	goto	l3347
u2890:
	goto	l3323
	line	65
	
l3349:
;main.c: 63: else;main.c: 64: {;main.c: 65: password = read_external_eeprom(0xFF);
	movlw	(0FFh)&0ffh
	
	call	_read_external_eeprom
	movwf	(??_Enter_password+0+0)^00h,c
	movf	((??_Enter_password+0+0))^00h,c,w
	movwf	((c:_password))^00h,c
	clrf	((c:_password+1))^00h,c
	line	66
	
l3351:
;main.c: 66: if (count == password )
	movf	((c:Enter_password@count))^00h,c,w
	movwf	(??_Enter_password+0+0)^00h,c
	clrf	(??_Enter_password+0+0+1)^00h,c

	movf	((c:_password))^00h,c,w
xorwf	(??_Enter_password+0+0)^00h,c,w
	bnz	u2901
movf	((c:_password+1))^00h,c,w
xorwf	(??_Enter_password+0+1)^00h,c,w
	btfss	status,2
	goto	u2901
	goto	u2900

u2901:
	goto	l3357
u2900:
	line	68
	
l3353:
;main.c: 67: {;main.c: 68: choose_flag = 2;
	movlw	low(02h)
	movwf	((c:_choose_flag))^00h,c
	line	69
;main.c: 69: input = 0;
	movlw	low(0)
	movwf	((c:Enter_password@input))^00h,c
	line	70
;main.c: 70: d = 4;
	movlw	low(04h)
	movwf	((c:_d))^00h,c
	line	72
;main.c: 72: break;
	goto	l216
	line	76
	
l3357:
;main.c: 74: else;main.c: 75: {;main.c: 76: if (d >= 1)
	movf	((c:_d))^00h,c,w
	btfsc	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l3379
u2910:
	line	78
	
l3359:
;main.c: 77: {;main.c: 78: clcd_print("   Try_Again    ",(0x80 + (0)));
		movlw	low(STR_2)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_2)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	79
	
l3361:
;main.c: 79: clcd_putch(d + 48, (0xC0 + (0)));
	movlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:_d))^00h,c,w
	addlw	low(030h)
	
	call	_clcd_putch
	line	80
	
l3363:
;main.c: 80: clcd_print("  Time left    ",(0xC0 + (1)));
		movlw	low(STR_3)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_3)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C1h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	81
	
l3365:
;main.c: 81: if (wait++ == 2000)
	infsnz	((c:Enter_password@wait))^00h,c
	incf	((c:Enter_password@wait+1))^00h,c
		movlw	209
	xorwf	((c:Enter_password@wait))^00h,c,w
	bnz	u2921
	movlw	7
	xorwf	((c:Enter_password@wait+1))^00h,c,w
	btfss	status,2
	goto	u2921
	goto	u2920

u2921:
	goto	l214
u2920:
	line	83
	
l3367:
;main.c: 82: {;main.c: 83: d--;
	decf	((c:_d))^00h,c
	line	84
;main.c: 84: attempt++;
	incf	((c:Enter_password@attempt))^00h,c
	line	85
	
l3369:
;main.c: 85: wait = 0;
	movlw	high(0)
	movwf	((c:Enter_password@wait+1))^00h,c
	movlw	low(0)
	movwf	((c:Enter_password@wait))^00h,c
	line	86
	
l3371:
;main.c: 86: clcd_print("                ",(0xC0 + (0)));
		movlw	low(STR_4)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_4)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	87
	
l3373:
;main.c: 87: clcd_print("_ENTER_PASSWORD ",(0x80 + (0)));
		movlw	low(STR_5)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_5)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	88
	
l3375:
;main.c: 88: count = 0;
	movlw	low(0)
	movwf	((c:Enter_password@count))^00h,c
	line	89
	
l3377:
;main.c: 89: input = 0;
	movlw	low(0)
	movwf	((c:Enter_password@input))^00h,c
	goto	l3323
	line	94
	
l3379:
;main.c: 92: else;main.c: 93: {;main.c: 94: attempt = 5 ;
	movlw	low(05h)
	movwf	((c:Enter_password@attempt))^00h,c
	goto	l3323
	line	101
	
l3381:
;main.c: 99: else;main.c: 100: {;main.c: 101: choose_flag = 0;
	movlw	low(0)
	movwf	((c:_choose_flag))^00h,c
	line	102
;main.c: 102: attempt = 0;
	movlw	low(0)
	movwf	((c:Enter_password@attempt))^00h,c
	line	103
;main.c: 103: input = 0;
	movlw	low(0)
	movwf	((c:Enter_password@input))^00h,c
	line	105
;main.c: 105: d = 4;
	movlw	low(04h)
	movwf	((c:_d))^00h,c
	line	106
;main.c: 106: break;
	goto	l216
	line	107
	
l214:
	goto	l3323
	line	109
	
l216:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Enter_password
	__end_of_Enter_password:
	signat	_Enter_password,89
	global	_Enter_menu

;; *************** function _Enter_menu *****************
;; Defined at:
;;		line 435 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 6
;; This function calls:
;;		_Download_log
;;		_change_password
;;		_clear_log
;;		_set_time
;;		_view_log
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2,group=0
	line	435
global __ptext25
__ptext25:
psect	text25
	file	"main.c"
	line	435
	
_Enter_menu:
;incstack = 0
	callstack 24
	line	437
	
l3447:
;main.c: 437: switch (select_flag)
	goto	l3463
	line	441
	
l3449:
;main.c: 440: {;main.c: 441: view_log();
	call	_view_log	;wreg free
	line	442
;main.c: 442: break;
	goto	l370
	line	446
	
l3451:
;main.c: 445: {;main.c: 446: clear_log();
	call	_clear_log	;wreg free
	line	447
;main.c: 447: break;
	goto	l370
	line	451
	
l3453:
;main.c: 450: {;main.c: 451: Download_log();
	call	_Download_log	;wreg free
	line	452
;main.c: 452: break;
	goto	l370
	line	456
	
l3455:
;main.c: 455: {;main.c: 456: set_time();
	call	_set_time	;wreg free
	line	457
;main.c: 457: break;
	goto	l370
	line	461
	
l3457:
;main.c: 460: {;main.c: 461: password = 0;
	movlw	high(0)
	movwf	((c:_password+1))^00h,c
	movlw	low(0)
	movwf	((c:_password))^00h,c
	line	462
	
l3459:
;main.c: 462: change_password();
	call	_change_password	;wreg free
	line	463
;main.c: 463: break;
	goto	l370
	line	437
	
l3463:
	movf	((c:_select_flag))^00h,c,w
	; Switch size 1, requested type "simple"
; Number of cases is 5, Range of values is 1 to 5
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           16     9 (average)
;	Chosen strategy is simple_byte

	xorlw	1^0	; case 1
	skipnz
	goto	l3449
	xorlw	2^1	; case 2
	skipnz
	goto	l3451
	xorlw	3^2	; case 3
	skipnz
	goto	l3453
	xorlw	4^3	; case 4
	skipnz
	goto	l3455
	xorlw	5^4	; case 5
	skipnz
	goto	l3457
	goto	l370

	line	466
	
l370:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Enter_menu
	__end_of_Enter_menu:
	signat	_Enter_menu,89
	global	_view_log

;; *************** function _view_log *****************
;; Defined at:
;;		line 168 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  b               2    9[COMRAM] unsigned int 
;;  key             1   13[COMRAM] unsigned char 
;;  i               1   12[COMRAM] unsigned char 
;;  v               1   11[COMRAM] unsigned char 
;;  cal             1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         5       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_read_external_eeprom
;;		_read_switches
;; This function is called by:
;;		_Enter_menu
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2,group=0
	line	168
global __ptext26
__ptext26:
psect	text26
	file	"main.c"
	line	168
	
_view_log:
;incstack = 0
	callstack 24
	line	170
	
l2857:
	line	172
	
l2859:
;main.c: 171: unsigned static int value1,value2,menu=0;;main.c: 172: key=read_switches(0);
	movlw	(0)&0ffh
	
	call	_read_switches
	movwf	((c:view_log@key))^00h,c
	line	173
	
l2861:
;main.c: 173: if (clear_flag == 0)
	movf	((c:_clear_flag))^00h,c,w
	btfss	status,2
	goto	u2091
	goto	u2090
u2091:
	goto	l2879
u2090:
	line	175
	
l2863:
;main.c: 174: {;main.c: 175: for (i = 0; i< 14; i++)
	movlw	low(0)
	movwf	((c:view_log@i))^00h,c
	line	177
	
l2869:
;main.c: 176: {;main.c: 177: clcd_print("logs",(0x80 + (3)));
		movlw	low(STR_6)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_6)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(083h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	178
	
l2871:
;main.c: 178: v = read_external_eeprom((menu*14) + i);
	movf	((c:view_log@menu))^00h,c,w
	mullw	0Eh
	movf	(prodl)^0f00h,c,w
	addwf	((c:view_log@i))^00h,c,w
	
	call	_read_external_eeprom
	movwf	((c:view_log@v))^00h,c
	line	179
	
l2873:
;main.c: 179: clcd_putch(v,(0xC0 + (i)));
	movf	((c:view_log@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movf	((c:view_log@v))^00h,c,w
	
	call	_clcd_putch
	line	175
	
l2875:
	incf	((c:view_log@i))^00h,c
	
l2877:
		movlw	0Eh-1
	cpfsgt	((c:view_log@i))^00h,c
	goto	u2101
	goto	u2100

u2101:
	goto	l2869
u2100:
	goto	l2883
	line	183
	
l2879:
;main.c: 183: else if(clear_flag != 0)
	movf	((c:_clear_flag))^00h,c,w
	btfsc	status,2
	goto	u2111
	goto	u2110
u2111:
	goto	l2883
u2110:
	line	185
	
l2881:
;main.c: 184: {;main.c: 185: clcd_print("No log found ",(0xC0 + (0)));
		movlw	low(STR_7)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_7)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	188
	
l2883:
;main.c: 186: };main.c: 188: if(key == 5)
		movlw	5
	xorwf	((c:view_log@key))^00h,c,w
	btfss	status,2
	goto	u2121
	goto	u2120

u2121:
	goto	l2887
u2120:
	line	190
	
l2885:
;main.c: 189: {;main.c: 190: value1++;
	infsnz	((c:view_log@value1))^00h,c
	incf	((c:view_log@value1+1))^00h,c
	line	192
	
l2887:
;main.c: 191: };main.c: 192: if (value1 > 500 && key == 0xFF)
		movlw	245
	subwf	 ((c:view_log@value1))^00h,c,w
	movlw	1
	subwfb	((c:view_log@value1+1))^00h,c,w
	btfss	status,0
	goto	u2131
	goto	u2130

u2131:
	goto	l2897
u2130:
	
l2889:
		incf	((c:view_log@key))^00h,c,w
	btfss	status,2
	goto	u2141
	goto	u2140

u2141:
	goto	l2897
u2140:
	line	194
	
l2891:
;main.c: 193: {;main.c: 194: for (unsigned int b=5000; b--; );
	movlw	high(01388h)
	movwf	((c:view_log@b+1))^00h,c
	movlw	low(01388h)
	movwf	((c:view_log@b))^00h,c
	
l2893:
	decf	((c:view_log@b))^00h,c
	btfss	status,0
	decf	((c:view_log@b+1))^00h,c
		incf	((c:view_log@b))^00h,c,w
	bnz	u2151
	incf	((c:view_log@b+1))^00h,c,w
	btfss	status,2
	goto	u2151
	goto	u2150

u2151:
	goto	l2893
u2150:
	line	195
	
l2895:
;main.c: 195: value1 = 0;
	movlw	high(0)
	movwf	((c:view_log@value1+1))^00h,c
	movlw	low(0)
	movwf	((c:view_log@value1))^00h,c
	line	196
;main.c: 196: }
	goto	l2909
	line	197
	
l2897:
;main.c: 197: else if (value1 > 0 && value1 < 500 && key == 0xFF)
	movf	((c:view_log@value1))^00h,c,w
iorwf	((c:view_log@value1+1))^00h,c,w
	btfsc	status,2
	goto	u2161
	goto	u2160

u2161:
	goto	l2909
u2160:
	
l2899:
		movlw	244
	subwf	 ((c:view_log@value1))^00h,c,w
	movlw	1
	subwfb	((c:view_log@value1+1))^00h,c,w
	btfsc	status,0
	goto	u2171
	goto	u2170

u2171:
	goto	l2909
u2170:
	
l2901:
		incf	((c:view_log@key))^00h,c,w
	btfss	status,2
	goto	u2181
	goto	u2180

u2181:
	goto	l2909
u2180:
	line	200
	
l2903:
;main.c: 198: {;main.c: 200: if (menu < 9)
		movf	((c:view_log@menu+1))^00h,c,w
	bnz	u2191
	movlw	9
	subwf	 ((c:view_log@menu))^00h,c,w
	btfsc	status,0
	goto	u2191
	goto	u2190

u2191:
	goto	l2895
u2190:
	line	202
	
l2905:
;main.c: 201: {;main.c: 202: menu++;
	infsnz	((c:view_log@menu))^00h,c
	incf	((c:view_log@menu+1))^00h,c
	goto	l2895
	line	206
	
l2909:
;main.c: 205: };main.c: 206: if ( key == 6)
		movlw	6
	xorwf	((c:view_log@key))^00h,c,w
	btfss	status,2
	goto	u2201
	goto	u2200

u2201:
	goto	l2913
u2200:
	line	208
	
l2911:
;main.c: 207: {;main.c: 208: value2++;
	infsnz	((c:view_log@value2))^00h,c
	incf	((c:view_log@value2+1))^00h,c
	line	211
	
l2913:
;main.c: 209: };main.c: 211: if (value2 > 500 && key == 0xFF)
		movlw	245
	subwf	 ((c:view_log@value2))^00h,c,w
	movlw	1
	subwfb	((c:view_log@value2+1))^00h,c,w
	btfss	status,0
	goto	u2211
	goto	u2210

u2211:
	goto	l2923
u2210:
	
l2915:
		incf	((c:view_log@key))^00h,c,w
	btfss	status,2
	goto	u2221
	goto	u2220

u2221:
	goto	l2923
u2220:
	line	213
	
l2917:
;main.c: 212: {;main.c: 213: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	214
	
l2919:
;main.c: 214: choose_flag = 2;
	movlw	low(02h)
	movwf	((c:_choose_flag))^00h,c
	line	216
	
l2921:
;main.c: 216: value2 = 0;
	movlw	high(0)
	movwf	((c:view_log@value2+1))^00h,c
	movlw	low(0)
	movwf	((c:view_log@value2))^00h,c
	line	217
;main.c: 217: }
	goto	l265
	line	218
	
l2923:
;main.c: 218: else if (value2 > 0 && value2 < 500 && key == 0xFF)
	movf	((c:view_log@value2))^00h,c,w
iorwf	((c:view_log@value2+1))^00h,c,w
	btfsc	status,2
	goto	u2231
	goto	u2230

u2231:
	goto	l265
u2230:
	
l2925:
		movlw	244
	subwf	 ((c:view_log@value2))^00h,c,w
	movlw	1
	subwfb	((c:view_log@value2+1))^00h,c,w
	btfsc	status,0
	goto	u2241
	goto	u2240

u2241:
	goto	l265
u2240:
	
l2927:
		incf	((c:view_log@key))^00h,c,w
	btfss	status,2
	goto	u2251
	goto	u2250

u2251:
	goto	l265
u2250:
	line	220
	
l2929:
;main.c: 219: {;main.c: 220: if (menu >= 1)
	movf	((c:view_log@menu))^00h,c,w
iorwf	((c:view_log@menu+1))^00h,c,w
	btfsc	status,2
	goto	u2261
	goto	u2260

u2261:
	goto	l2921
u2260:
	line	222
	
l2931:
;main.c: 221: {;main.c: 222: menu--;
	decf	((c:view_log@menu))^00h,c
	btfss	status,0
	decf	((c:view_log@menu+1))^00h,c
	goto	l2921
	line	226
	
l265:
	return	;funcret
	callstack 0
GLOBAL	__end_of_view_log
	__end_of_view_log:
	signat	_view_log,89
	global	_set_time

;; *************** function _set_time *****************
;; Defined at:
;;		line 268 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   13[COMRAM] unsigned char 
;;  j               2   11[COMRAM] unsigned int 
;;  change_time     1   18[COMRAM] PTR unsigned char 
;;		 -> time(9), 
;;  key             1   17[COMRAM] unsigned char 
;;  min             1   16[COMRAM] unsigned char 
;;  sec             1   15[COMRAM] unsigned char 
;;  hr              1   14[COMRAM] unsigned char 
;;  i               1   10[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         9       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0
;;      Totals:        10       0       0       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		___lbmod
;;		_clcd_print
;;		_read_switches
;;		_write_ds1307
;; This function is called by:
;;		_Enter_menu
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2,group=0
	line	268
global __ptext27
__ptext27:
psect	text27
	file	"main.c"
	line	268
	
_set_time:
;incstack = 0
	callstack 25
	line	272
	
l2993:
	movlw	low(0)
	movwf	((c:set_time@sec))^00h,c
	movlw	low(0)
	movwf	((c:set_time@min))^00h,c
	movlw	low(0)
	movwf	((c:set_time@i))^00h,c
	line	275
	
l2995:
;main.c: 273: unsigned static char val=0;;main.c: 274: unsigned static int cal=0,car=0;;main.c: 275: unsigned char *change_time = time;
		movlw	low(_time)
	movwf	((c:set_time@change_time))^00h,c

	line	276
	
l2997:
;main.c: 276: clcd_print(change_time,(0xC0 + (0)));
		movff	(c:set_time@change_time),(c:clcd_print@data)
	clrf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	277
	
l2999:
;main.c: 277: clcd_print("Time (HH:MM:SS) ",(0x80 + (0)));
		movlw	low(STR_12)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_12)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	278
	
l3001:
;main.c: 278: key = read_switches(0);
	movlw	(0)&0ffh
	
	call	_read_switches
	movwf	((c:set_time@key))^00h,c
	line	279
	
l3003:
;main.c: 279: if(key == 5)
		movlw	5
	xorwf	((c:set_time@key))^00h,c,w
	btfss	status,2
	goto	u2341
	goto	u2340

u2341:
	goto	l3007
u2340:
	line	280
	
l3005:
;main.c: 280: car++;
	infsnz	((c:set_time@car))^00h,c
	incf	((c:set_time@car+1))^00h,c
	line	281
	
l3007:
;main.c: 281: if(key == 6)
		movlw	6
	xorwf	((c:set_time@key))^00h,c,w
	btfss	status,2
	goto	u2351
	goto	u2350

u2351:
	goto	l3011
u2350:
	line	282
	
l3009:
;main.c: 282: cal++;
	infsnz	((c:set_time@cal))^00h,c
	incf	((c:set_time@cal+1))^00h,c
	line	284
	
l3011:
;main.c: 284: if(car < 1000 && car > 0 && key == 0xFF)
		movlw	232
	subwf	 ((c:set_time@car))^00h,c,w
	movlw	3
	subwfb	((c:set_time@car+1))^00h,c,w
	btfsc	status,0
	goto	u2361
	goto	u2360

u2361:
	goto	l3023
u2360:
	
l3013:
	movf	((c:set_time@car))^00h,c,w
iorwf	((c:set_time@car+1))^00h,c,w
	btfsc	status,2
	goto	u2371
	goto	u2370

u2371:
	goto	l3023
u2370:
	
l3015:
		incf	((c:set_time@key))^00h,c,w
	btfss	status,2
	goto	u2381
	goto	u2380

u2381:
	goto	l3023
u2380:
	line	286
	
l3017:
;main.c: 285: {;main.c: 286: val++;
	incf	((c:set_time@val))^00h,c
	line	287
	
l3019:
;main.c: 287: val = val % 3;
	movlw	low(03h)
	movwf	((c:___lbmod@divisor))^00h,c
	movf	((c:set_time@val))^00h,c,w
	
	call	___lbmod
	movwf	((c:set_time@val))^00h,c
	line	288
	
l3021:
;main.c: 288: car = 0;
	movlw	high(0)
	movwf	((c:set_time@car+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@car))^00h,c
	line	289
;main.c: 289: }
	goto	l3053
	line	290
	
l3023:
;main.c: 290: else if(car > 1000 && key == 0xFF)
		movlw	233
	subwf	 ((c:set_time@car))^00h,c,w
	movlw	3
	subwfb	((c:set_time@car+1))^00h,c,w
	btfss	status,0
	goto	u2391
	goto	u2390

u2391:
	goto	l3053
u2390:
	
l3025:
		incf	((c:set_time@key))^00h,c,w
	btfss	status,2
	goto	u2401
	goto	u2400

u2401:
	goto	l3053
u2400:
	line	292
	
l3027:
;main.c: 291: {;main.c: 292: clcd_print("Saved Time in RTC",(0x80 + (0)));
		movlw	low(STR_13)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_13)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	293
	
l3029:
;main.c: 293: car = 0;
	movlw	high(0)
	movwf	((c:set_time@car+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@car))^00h,c
	line	294
	
l3031:
;main.c: 294: hr = (((change_time[0] - '0') << 4) | (change_time[1] - '0'));
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_set_time+0+0)^00h,c
	swapf	((??_set_time+0+0))^00h,c
	movlw	(0ffh shl 4) & 0ffh
	andwf	((??_set_time+0+0))^00h,c
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movf	indf2,w
	addlw	low(0D0h)
	iorwf	((??_set_time+0+0))^00h,c,w
	movwf	((c:set_time@hr))^00h,c
	line	295
	
l3033:
;main.c: 295: min = (((change_time[3] - '0') << 4) | (change_time[4] - '0'));
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_set_time+0+0)^00h,c
	swapf	((??_set_time+0+0))^00h,c
	movlw	(0ffh shl 4) & 0ffh
	andwf	((??_set_time+0+0))^00h,c
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movf	indf2,w
	addlw	low(0D0h)
	iorwf	((??_set_time+0+0))^00h,c,w
	movwf	((c:set_time@min))^00h,c
	line	296
	
l3035:
;main.c: 296: sec = (((change_time[6] - '0') << 4) | (change_time[7] - '0'));
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movf	indf2,w
	movwf	(??_set_time+0+0)^00h,c
	swapf	((??_set_time+0+0))^00h,c
	movlw	(0ffh shl 4) & 0ffh
	andwf	((??_set_time+0+0))^00h,c
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	movf	indf2,w
	addlw	low(0D0h)
	iorwf	((??_set_time+0+0))^00h,c,w
	movwf	((c:set_time@sec))^00h,c
	line	297
	
l3037:
;main.c: 297: write_ds1307(0x02,hr);
	movff	(c:set_time@hr),(c:write_ds1307@data)
	movlw	(02h)&0ffh
	
	call	_write_ds1307
	line	298
	
l3039:
;main.c: 298: write_ds1307(0x01,min);
	movff	(c:set_time@min),(c:write_ds1307@data)
	movlw	(01h)&0ffh
	
	call	_write_ds1307
	line	299
	
l3041:
;main.c: 299: write_ds1307(0x00,sec);
	movff	(c:set_time@sec),(c:write_ds1307@data)
	movlw	(0)&0ffh
	
	call	_write_ds1307
	line	300
	
l3043:
;main.c: 300: for(unsigned int j = 59999; j--;)
	movlw	high(0EA5Fh)
	movwf	((c:set_time@j+1))^00h,c
	movlw	low(0EA5Fh)
	movwf	((c:set_time@j))^00h,c
	goto	l3049
	line	301
	
l3045:
;main.c: 301: for(unsigned char i = 20; i--;);
	movlw	low(014h)
	movwf	((c:set_time@i_237))^00h,c
	
l3047:
	decf	((c:set_time@i_237))^00h,c
		incf	((c:set_time@i_237))^00h,c,w
	btfss	status,2
	goto	u2411
	goto	u2410

u2411:
	goto	l3047
u2410:
	line	300
	
l3049:
	decf	((c:set_time@j))^00h,c
	btfss	status,0
	decf	((c:set_time@j+1))^00h,c
		incf	((c:set_time@j))^00h,c,w
	bnz	u2421
	incf	((c:set_time@j+1))^00h,c,w
	btfss	status,2
	goto	u2421
	goto	u2420

u2421:
	goto	l3045
u2420:
	line	302
	
l3051:
;main.c: 302: choose_flag = 0;
	movlw	low(0)
	movwf	((c:_choose_flag))^00h,c
	line	304
	
l3053:
;main.c: 303: };main.c: 304: if(cal < 1000 && cal > 0 && key == 0xFF)
		movlw	232
	subwf	 ((c:set_time@cal))^00h,c,w
	movlw	3
	subwfb	((c:set_time@cal+1))^00h,c,w
	btfsc	status,0
	goto	u2431
	goto	u2430

u2431:
	goto	l3087
u2430:
	
l3055:
	movf	((c:set_time@cal))^00h,c,w
iorwf	((c:set_time@cal+1))^00h,c,w
	btfsc	status,2
	goto	u2441
	goto	u2440

u2441:
	goto	l3087
u2440:
	
l3057:
		incf	((c:set_time@key))^00h,c,w
	btfss	status,2
	goto	u2451
	goto	u2450

u2451:
	goto	l3087
u2450:
	line	306
	
l3059:
;main.c: 305: {;main.c: 306: cal =0;
	movlw	high(0)
	movwf	((c:set_time@cal+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@cal))^00h,c
	line	307
;main.c: 307: if(val == 0)
	movf	((c:set_time@val))^00h,c,w
	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l3071
u2460:
	line	309
	
l3061:
;main.c: 308: {;main.c: 309: change_time[1]++;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	incf	indf2

	line	311
;main.c: 311: if (change_time[1] > '9')
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

		movlw	03Ah-1
	cpfsgt	indf2
	goto	u2471
	goto	u2470

u2471:
	goto	l311
u2470:
	line	313
	
l3063:
;main.c: 312: {;main.c: 313: change_time[0]++;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	line	314
;main.c: 314: change_time[1] = '0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	line	315
	
l311:
	line	316
;main.c: 315: };main.c: 316: if(change_time[0] == '2')
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	50
	xorwf	postinc2,w
	btfss	status,2
	goto	u2481
	goto	u2480

u2481:
	goto	l324
u2480:
	line	318
	
l3065:
;main.c: 317: {;main.c: 318: if (change_time[1] >'3')
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

		movlw	034h-1
	cpfsgt	indf2
	goto	u2491
	goto	u2490

u2491:
	goto	l314
u2490:
	line	320
	
l3067:
;main.c: 319: {;main.c: 320: change_time[1] ='0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	line	321
	
l3069:
;main.c: 321: change_time[0] = '0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(030h)
	movwf	indf2
	goto	l324
	line	325
	
l3071:
;main.c: 325: else if(val == 1)
		decf	((c:set_time@val))^00h,c,w
	btfss	status,2
	goto	u2501
	goto	u2500

u2501:
	goto	l3079
u2500:
	line	327
	
l3073:
;main.c: 326: {;main.c: 327: change_time[4]++;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	incf	indf2

	line	328
;main.c: 328: if (change_time[4] > '9')
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

		movlw	03Ah-1
	cpfsgt	indf2
	goto	u2511
	goto	u2510

u2511:
	goto	l316
u2510:
	line	330
	
l3075:
;main.c: 329: {;main.c: 330: change_time[3]++;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	incf	indf2

	line	331
;main.c: 331: change_time[4] = '0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(04h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	line	332
	
l316:
	line	333
;main.c: 332: };main.c: 333: if(change_time[3] == '6')
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movlw	54
	xorwf	postinc2,w
	btfss	status,2
	goto	u2521
	goto	u2520

u2521:
	goto	l324
u2520:
	line	335
	
l3077:
;main.c: 334: {;main.c: 335: change_time[3] ='0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(03h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	goto	l324
	line	338
	
l3079:
;main.c: 338: else if(val == 2)
		movlw	2
	xorwf	((c:set_time@val))^00h,c,w
	btfss	status,2
	goto	u2531
	goto	u2530

u2531:
	goto	l314
u2530:
	line	340
	
l3081:
;main.c: 339: {;main.c: 340: change_time[7]++;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	incf	indf2

	line	342
;main.c: 342: if (change_time[7] > '9')
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

		movlw	03Ah-1
	cpfsgt	indf2
	goto	u2541
	goto	u2540

u2541:
	goto	l320
u2540:
	line	344
	
l3083:
;main.c: 343: {;main.c: 344: change_time[6]++;
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	incf	indf2

	line	345
;main.c: 345: change_time[7] = '0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(07h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	line	346
	
l320:
	line	347
;main.c: 346: };main.c: 347: if(change_time[6] == '6')
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movlw	54
	xorwf	postinc2,w
	btfss	status,2
	goto	u2551
	goto	u2550

u2551:
	goto	l324
u2550:
	line	349
	
l3085:
;main.c: 348: {;main.c: 349: change_time[6] ='0';
	movf	((c:set_time@change_time))^00h,c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(06h)
	addwf	fsr2l

	movlw	low(030h)
	movwf	indf2
	goto	l324
	line	352
	
l314:
;main.c: 350: };main.c: 351: };main.c: 352: }
	goto	l324
	line	353
	
l3087:
;main.c: 353: else if(cal > 1000 && key == 0xFF)
		movlw	233
	subwf	 ((c:set_time@cal))^00h,c,w
	movlw	3
	subwfb	((c:set_time@cal+1))^00h,c,w
	btfss	status,0
	goto	u2561
	goto	u2560

u2561:
	goto	l324
u2560:
	
l3089:
		incf	((c:set_time@key))^00h,c,w
	btfss	status,2
	goto	u2571
	goto	u2570

u2571:
	goto	l324
u2570:
	line	355
	
l3091:
;main.c: 354: {;main.c: 355: cal = 0;
	movlw	high(0)
	movwf	((c:set_time@cal+1))^00h,c
	movlw	low(0)
	movwf	((c:set_time@cal))^00h,c
	line	356
;main.c: 356: choose_flag = 2;
	movlw	low(02h)
	movwf	((c:_choose_flag))^00h,c
	line	358
	
l324:
	return	;funcret
	callstack 0
GLOBAL	__end_of_set_time
	__end_of_set_time:
	signat	_set_time,89
	global	_write_ds1307

;; *************** function _write_ds1307 *****************
;; Defined at:
;;		line 45 in file "ds1307.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_init_ds1307
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2,group=0
	file	"ds1307.c"
	line	45
global __ptext28
__ptext28:
psect	text28
	file	"ds1307.c"
	line	45
	
_write_ds1307:
;incstack = 0
	callstack 25
;write_ds1307@address stored from wreg
	movwf	((c:write_ds1307@address))^00h,c
	line	47
	
l2655:
;ds1307.c: 47: i2c_start();
	call	_i2c_start	;wreg free
	line	48
	
l2657:
;ds1307.c: 48: i2c_write(0xD0);
	movlw	(0D0h)&0ffh
	
	call	_i2c_write
	line	49
	
l2659:
;ds1307.c: 49: i2c_write(address);
	movf	((c:write_ds1307@address))^00h,c,w
	
	call	_i2c_write
	line	50
	
l2661:
;ds1307.c: 50: i2c_write(data);
	movf	((c:write_ds1307@data))^00h,c,w
	
	call	_i2c_write
	line	51
	
l2663:
;ds1307.c: 51: i2c_stop();
	call	_i2c_stop	;wreg free
	line	52
	
l125:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_ds1307
	__end_of_write_ds1307:
	signat	_write_ds1307,8313
	global	___lbmod

;; *************** function ___lbmod *****************
;; Defined at:
;;		line 4 in file "C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lbmod.c"
;; Parameters:    Size  Location     Type
;;  dividend        1    wreg     unsigned char 
;;  divisor         1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dividend        1    1[COMRAM] unsigned char 
;;  rem             1    3[COMRAM] unsigned char 
;;  counter         1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_set_time
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2,group=1
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lbmod.c"
	line	4
global __ptext29
__ptext29:
psect	text29
	file	"C:\Program Files\Microchip\xc8\v2.41\pic\sources\c90\common\lbmod.c"
	line	4
	
___lbmod:
;incstack = 0
	callstack 27
;___lbmod@dividend stored from wreg
	movwf	((c:___lbmod@dividend))^00h,c
	line	9
	
l2779:
	movlw	low(08h)
	movwf	((c:___lbmod@counter))^00h,c
	line	10
	movlw	low(0)
	movwf	((c:___lbmod@rem))^00h,c
	line	12
	
l2781:
	bcf	status,0
	rlcf	((c:___lbmod@dividend))^00h,c,w
	rlcf	((c:___lbmod@rem))^00h,c,w
	movwf	((c:___lbmod@rem))^00h,c
	line	13
	
l2783:
	bcf status,0
	rlcf	((c:___lbmod@dividend))^00h,c

	line	14
	
l2785:
		movf	((c:___lbmod@divisor))^00h,c,w
	subwf	((c:___lbmod@rem))^00h,c,w
	btfss	status,0
	goto	u2011
	goto	u2010

u2011:
	goto	l2789
u2010:
	line	15
	
l2787:
	movf	((c:___lbmod@divisor))^00h,c,w
	subwf	((c:___lbmod@rem))^00h,c
	line	16
	
l2789:
	decfsz	((c:___lbmod@counter))^00h,c
	
	goto	l2781
	line	17
	
l2791:
	movf	((c:___lbmod@rem))^00h,c,w
	line	18
	
l1038:
	return	;funcret
	callstack 0
GLOBAL	__end_of___lbmod
	__end_of___lbmod:
	signat	___lbmod,8313
	global	_clear_log

;; *************** function _clear_log *****************
;; Defined at:
;;		line 228 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  val             2    9[COMRAM] unsigned int 
;;  key             1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_clcd_print
;;		_clcd_write
;;		_read_switches
;; This function is called by:
;;		_Enter_menu
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	228
global __ptext30
__ptext30:
psect	text30
	file	"main.c"
	line	228
	
_clear_log:
;incstack = 0
	callstack 26
	line	232
	
l2935:
;main.c: 230: unsigned int val;;main.c: 231: unsigned char key;;main.c: 232: clear_flag = 1;
	movlw	low(01h)
	movwf	((c:_clear_flag))^00h,c
	line	233
	
l2937:
;main.c: 233: clcd_print("Cleared Log",(0xC0 + (0)));
		movlw	low(STR_8)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_8)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	234
	
l2939:
;main.c: 234: clcd_print("SUCCESSFULLY",(0x80 + (0)));
		movlw	low(STR_9)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_9)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	235
	
l2941:
;main.c: 235: key = read_switches(0);
	movlw	(0)&0ffh
	
	call	_read_switches
	movwf	((c:clear_log@key))^00h,c
	line	236
	
l2943:
;main.c: 236: if (key == 5)
		movlw	5
	xorwf	((c:clear_log@key))^00h,c,w
	btfss	status,2
	goto	u2271
	goto	u2270

u2271:
	goto	l2947
u2270:
	line	238
	
l2945:
;main.c: 237: {;main.c: 238: val++;
	infsnz	((c:clear_log@val))^00h,c
	incf	((c:clear_log@val+1))^00h,c
	line	240
	
l2947:
;main.c: 239: };main.c: 240: if (val > 1000)
		movlw	233
	subwf	 ((c:clear_log@val))^00h,c,w
	movlw	3
	subwfb	((c:clear_log@val+1))^00h,c,w
	btfss	status,0
	goto	u2281
	goto	u2280

u2281:
	goto	l270
u2280:
	line	242
	
l2949:
;main.c: 241: {;main.c: 242: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	243
	
l2951:
;main.c: 243: choose_flag = 2;
	movlw	low(02h)
	movwf	((c:_choose_flag))^00h,c
	line	244
	
l2953:
	line	246
	
l270:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clear_log
	__end_of_clear_log:
	signat	_clear_log,89
	global	_change_password

;; *************** function _change_password *****************
;; Defined at:
;;		line 360 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               1   16[COMRAM] unsigned char 
;;  j               1   15[COMRAM] unsigned char 
;;  i               2   13[COMRAM] unsigned int 
;;  i               2   11[COMRAM] unsigned int 
;;  key             1   17[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         7       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0
;;      Totals:         9       0       0       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_clcd_print
;;		_clcd_putch
;;		_clcd_write
;;		_read_switches
;;		_write_external_eeprom
;; This function is called by:
;;		_Enter_menu
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2,group=0
	line	360
global __ptext31
__ptext31:
psect	text31
	file	"main.c"
	line	360
	
_change_password:
;incstack = 0
	callstack 25
	line	365
	
l3093:
;main.c: 362: unsigned static int re_pass = 0,choice = 0,i=0,j=0,psswd = 0;;main.c: 363: unsigned char key;;main.c: 365: if (choice < 4)
		movf	((c:change_password@choice+1))^00h,c,w
	bnz	u2581
	movlw	4
	subwf	 ((c:change_password@choice))^00h,c,w
	btfsc	status,0
	goto	u2581
	goto	u2580

u2581:
	goto	l3115
u2580:
	line	368
	
l3095:
;main.c: 366: {;main.c: 368: clcd_print("Enter Password",(0x80 + (0)));
		movlw	low(STR_14)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_14)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	369
	
l3097:
;main.c: 369: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:change_password@key))^00h,c
	line	371
	
l3099:
;main.c: 371: if (key == 5)
		movlw	5
	xorwf	((c:change_password@key))^00h,c,w
	btfss	status,2
	goto	u2591
	goto	u2590

u2591:
	goto	l3107
u2590:
	line	373
	
l3101:
;main.c: 372: {;main.c: 373: psswd = psswd << 1 | 1;
	movlw	01h
	movff	(c:change_password@psswd),??_change_password+0+0
	movff	(c:change_password@psswd+1),??_change_password+0+0+1
	bcf	status,0
	rlcf	(??_change_password+0+0)^00h,c,f
	rlcf	(??_change_password+0+1)^00h,c,f
	iorwf	(??_change_password+0+0)^00h,c,w
	movwf	((c:change_password@psswd))^00h,c
	movf	(??_change_password+0+1)^00h,c,w
	movwf	1+((c:change_password@psswd))^00h,c
	line	375
	
l3103:
;main.c: 375: clcd_putch('*', (0xC0 + (choice++)));
	movf	((c:change_password@choice))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	
l3105:
	infsnz	((c:change_password@choice))^00h,c
	incf	((c:change_password@choice+1))^00h,c
	line	377
	
l3107:
;main.c: 376: };main.c: 377: if (key == 6)
		movlw	6
	xorwf	((c:change_password@key))^00h,c,w
	btfss	status,2
	goto	u2601
	goto	u2600

u2601:
	goto	l3147
u2600:
	line	380
	
l3109:
;main.c: 378: {;main.c: 380: psswd = psswd << 1;
	bcf	status,0
	rlcf	((c:change_password@psswd))^00h,c,w
	movwf	((c:change_password@psswd))^00h,c
	rlcf	((c:change_password@psswd+1))^00h,c,w
	movwf	1+((c:change_password@psswd))^00h,c
	line	381
	
l3111:
;main.c: 381: clcd_putch('*', (0xC0 + (choice++)));
	movf	((c:change_password@choice))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	
l3113:
	infsnz	((c:change_password@choice))^00h,c
	incf	((c:change_password@choice+1))^00h,c
	goto	l3147
	line	384
	
l3115:
;main.c: 384: else if (choice >= 4 && choice <= 7)
		movf	((c:change_password@choice+1))^00h,c,w
	bnz	u2610
	movlw	4
	subwf	 ((c:change_password@choice))^00h,c,w
	btfss	status,0
	goto	u2611
	goto	u2610

u2611:
	goto	l3147
u2610:
	
l3117:
		movf	((c:change_password@choice+1))^00h,c,w
	bnz	u2621
	movlw	8
	subwf	 ((c:change_password@choice))^00h,c,w
	btfsc	status,0
	goto	u2621
	goto	u2620

u2621:
	goto	l3147
u2620:
	line	386
	
l3119:
;main.c: 385: {;main.c: 386: if (choice == 4)
		movlw	4
	xorwf	((c:change_password@choice))^00h,c,w
iorwf	((c:change_password@choice+1))^00h,c,w
	btfss	status,2
	goto	u2631
	goto	u2630

u2631:
	goto	l3123
u2630:
	line	388
	
l3121:
;main.c: 387: {;main.c: 388: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	390
	
l3123:
;main.c: 389: };main.c: 390: clcd_print("Ree Enter password",(0x80 + (0)));
		movlw	low(STR_15)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_15)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	391
	
l3125:
;main.c: 391: key = read_switches(1);
	movlw	(01h)&0ffh
	
	call	_read_switches
	movwf	((c:change_password@key))^00h,c
	line	393
	
l3127:
;main.c: 393: if (key == 5)
		movlw	5
	xorwf	((c:change_password@key))^00h,c,w
	btfss	status,2
	goto	u2641
	goto	u2640

u2641:
	goto	l3137
u2640:
	line	395
	
l3129:
;main.c: 394: {;main.c: 395: re_pass = re_pass << 1 | 1;
	movlw	01h
	movff	(c:change_password@re_pass),??_change_password+0+0
	movff	(c:change_password@re_pass+1),??_change_password+0+0+1
	bcf	status,0
	rlcf	(??_change_password+0+0)^00h,c,f
	rlcf	(??_change_password+0+1)^00h,c,f
	iorwf	(??_change_password+0+0)^00h,c,w
	movwf	((c:change_password@re_pass))^00h,c
	movf	(??_change_password+0+1)^00h,c,w
	movwf	1+((c:change_password@re_pass))^00h,c
	line	396
	
l3131:
;main.c: 396: choice++;
	infsnz	((c:change_password@choice))^00h,c
	incf	((c:change_password@choice+1))^00h,c
	line	397
	
l3133:
;main.c: 397: clcd_putch('*', (0xC0 + (i++)));
	movf	((c:change_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	
l3135:
	infsnz	((c:change_password@i))^00h,c
	incf	((c:change_password@i+1))^00h,c
	line	399
	
l3137:
;main.c: 398: };main.c: 399: if (key == 6)
		movlw	6
	xorwf	((c:change_password@key))^00h,c,w
	btfss	status,2
	goto	u2651
	goto	u2650

u2651:
	goto	l3147
u2650:
	line	401
	
l3139:
;main.c: 400: {;main.c: 401: choice++;
	infsnz	((c:change_password@choice))^00h,c
	incf	((c:change_password@choice+1))^00h,c
	line	402
	
l3141:
;main.c: 402: clcd_putch('*',(0xC0 + (i++)));
	movf	((c:change_password@i))^00h,c,w
	addlw	low(0C0h)
	movwf	((c:clcd_putch@addr))^00h,c
	movlw	(02Ah)&0ffh
	
	call	_clcd_putch
	
l3143:
	infsnz	((c:change_password@i))^00h,c
	incf	((c:change_password@i+1))^00h,c
	line	403
	
l3145:
;main.c: 403: re_pass = re_pass << 1;
	bcf	status,0
	rlcf	((c:change_password@re_pass))^00h,c,w
	movwf	((c:change_password@re_pass))^00h,c
	rlcf	((c:change_password@re_pass+1))^00h,c,w
	movwf	1+((c:change_password@re_pass))^00h,c
	line	407
	
l3147:
;main.c: 404: };main.c: 405: };main.c: 407: if (choice == 8)
		movlw	8
	xorwf	((c:change_password@choice))^00h,c,w
iorwf	((c:change_password@choice+1))^00h,c,w
	btfss	status,2
	goto	u2661
	goto	u2660

u2661:
	goto	l360
u2660:
	line	409
	
l3149:
;main.c: 408: {;main.c: 409: clcd_write(0x01, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movlw	(01h)&0ffh
	
	call	_clcd_write
	line	411
	
l3151:
;main.c: 411: if (psswd == re_pass)
	movf	((c:change_password@re_pass))^00h,c,w
xorwf	((c:change_password@psswd))^00h,c,w
	bnz	u2671
movf	((c:change_password@re_pass+1))^00h,c,w
xorwf	((c:change_password@psswd+1))^00h,c,w
	btfss	status,2
	goto	u2671
	goto	u2670

u2671:
	goto	l3171
u2670:
	line	413
	
l3153:
;main.c: 412: {;main.c: 413: password = re_pass;
	movff	(c:change_password@re_pass),(c:_password)
	movff	(c:change_password@re_pass+1),(c:_password+1)
	line	414
	
l3155:
;main.c: 414: write_external_eeprom(0xFF,re_pass);
	movff	(c:change_password@re_pass),(c:write_external_eeprom@data)
	movlw	(0FFh)&0ffh
	
	call	_write_external_eeprom
	line	415
	
l3157:
;main.c: 415: clcd_print("Password changed",(0x80 + (0)));
		movlw	low(STR_16)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_16)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	416
	
l3159:
;main.c: 416: clcd_print("Successfully ",(0xC0 + (0)));
		movlw	low(STR_17)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_17)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	417
	
l3161:
;main.c: 417: for (unsigned int i = 59999; i--;)
	movlw	high(0EA5Fh)
	movwf	((c:change_password@i_249+1))^00h,c
	movlw	low(0EA5Fh)
	movwf	((c:change_password@i_249))^00h,c
	goto	l3167
	line	418
	
l3163:
;main.c: 418: for (unsigned char j = 30; j--; );
	movlw	low(01Eh)
	movwf	((c:change_password@j_250))^00h,c
	
l3165:
	decf	((c:change_password@j_250))^00h,c
		incf	((c:change_password@j_250))^00h,c,w
	btfss	status,2
	goto	u2681
	goto	u2680

u2681:
	goto	l3165
u2680:
	line	417
	
l3167:
	decf	((c:change_password@i_249))^00h,c
	btfss	status,0
	decf	((c:change_password@i_249+1))^00h,c
		incf	((c:change_password@i_249))^00h,c,w
	bnz	u2691
	incf	((c:change_password@i_249+1))^00h,c,w
	btfss	status,2
	goto	u2691
	goto	u2690

u2691:
	goto	l3163
u2690:
	line	419
	
l3169:
;main.c: 419: choose_flag = 0;
	movlw	low(0)
	movwf	((c:_choose_flag))^00h,c
	line	420
;main.c: 420: }
	goto	l353
	line	423
	
l3171:
;main.c: 421: else;main.c: 422: {;main.c: 423: clcd_print("Wrong Password",(0x80 + (0)));
		movlw	low(STR_18)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_18)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(080h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	424
	
l3173:
;main.c: 424: for (unsigned int i = 59999;i--;)
	movlw	high(0EA5Fh)
	movwf	((c:change_password@i_252+1))^00h,c
	movlw	low(0EA5Fh)
	movwf	((c:change_password@i_252))^00h,c
	goto	l3179
	line	425
	
l3175:
;main.c: 425: for(unsigned char j = 30; j--;);
	movlw	low(01Eh)
	movwf	((c:change_password@j_253))^00h,c
	
l3177:
	decf	((c:change_password@j_253))^00h,c
		incf	((c:change_password@j_253))^00h,c,w
	btfss	status,2
	goto	u2701
	goto	u2700

u2701:
	goto	l3177
u2700:
	line	424
	
l3179:
	decf	((c:change_password@i_252))^00h,c
	btfss	status,0
	decf	((c:change_password@i_252+1))^00h,c
		incf	((c:change_password@i_252))^00h,c,w
	bnz	u2711
	incf	((c:change_password@i_252+1))^00h,c,w
	btfss	status,2
	goto	u2711
	goto	u2710

u2711:
	goto	l3175
u2710:
	line	426
	
l3181:
;main.c: 426: choose_flag = 2;
	movlw	low(02h)
	movwf	((c:_choose_flag))^00h,c
	line	427
	
l353:
	line	428
;main.c: 427: };main.c: 428: choice = 0;
	movlw	high(0)
	movwf	((c:change_password@choice+1))^00h,c
	movlw	low(0)
	movwf	((c:change_password@choice))^00h,c
	line	429
;main.c: 429: i= 0;
	movlw	high(0)
	movwf	((c:change_password@i+1))^00h,c
	movlw	low(0)
	movwf	((c:change_password@i))^00h,c
	line	431
	
l360:
	return	;funcret
	callstack 0
GLOBAL	__end_of_change_password
	__end_of_change_password:
	signat	_change_password,89
	global	_write_external_eeprom

;; *************** function _write_external_eeprom *****************
;; Defined at:
;;		line 12 in file "exter.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;;  data            1    1[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    4[COMRAM] unsigned char 
;;  i               2    2[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_change_password
;;		_store_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2,group=0
	file	"exter.c"
	line	12
global __ptext32
__ptext32:
psect	text32
	file	"exter.c"
	line	12
	
_write_external_eeprom:
;incstack = 0
	callstack 24
;write_external_eeprom@address stored from wreg
	movwf	((c:write_external_eeprom@address))^00h,c
	line	14
	
l2551:
;exter.c: 14: i2c_start();
	call	_i2c_start	;wreg free
	line	15
	
l2553:
;exter.c: 15: i2c_write(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_i2c_write
	line	16
	
l2555:
;exter.c: 16: i2c_write(address);
	movf	((c:write_external_eeprom@address))^00h,c,w
	
	call	_i2c_write
	line	17
	
l2557:
;exter.c: 17: i2c_write(data);
	movf	((c:write_external_eeprom@data))^00h,c,w
	
	call	_i2c_write
	line	18
	
l2559:
;exter.c: 18: i2c_stop();
	call	_i2c_stop	;wreg free
	line	19
	
l2561:
;exter.c: 19: for(unsigned int i = 1000;i--;);
	movlw	high(03E8h)
	movwf	((c:write_external_eeprom@i+1))^00h,c
	movlw	low(03E8h)
	movwf	((c:write_external_eeprom@i))^00h,c
	
l2563:
	decf	((c:write_external_eeprom@i))^00h,c
	btfss	status,0
	decf	((c:write_external_eeprom@i+1))^00h,c
		incf	((c:write_external_eeprom@i))^00h,c,w
	bnz	u1661
	incf	((c:write_external_eeprom@i+1))^00h,c,w
	btfss	status,2
	goto	u1661
	goto	u1660

u1661:
	goto	l2563
u1660:
	line	20
	
l621:
	return	;funcret
	callstack 0
GLOBAL	__end_of_write_external_eeprom
	__end_of_write_external_eeprom:
	signat	_write_external_eeprom,8313
	global	_read_switches

;; *************** function _read_switches *****************
;; Defined at:
;;		line 88 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;  detection_ty    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  detection_ty    1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_scan_key
;; This function is called by:
;;		_Enter_password
;;		_view_menu
;;		_view_log
;;		_clear_log
;;		_set_time
;;		_change_password
;;		_change_event
;;		_main
;; This function uses a non-reentrant model
;;
psect	text33,class=CODE,space=0,reloc=2,group=0
	file	"matrix_keypad.c"
	line	88
global __ptext33
__ptext33:
psect	text33
	file	"matrix_keypad.c"
	line	88
	
_read_switches:
;incstack = 0
	callstack 27
;read_switches@detection_type stored from wreg
	movwf	((c:read_switches@detection_type))^00h,c
	line	92
	
l2673:
;matrix_keypad.c: 90: static unsigned char once = 1, key;;matrix_keypad.c: 92: if (detection_type == 1)
		decf	((c:read_switches@detection_type))^00h,c,w
	btfss	status,2
	goto	u1831
	goto	u1830

u1831:
	goto	l2691
u1830:
	line	94
	
l2675:
;matrix_keypad.c: 93: {;matrix_keypad.c: 94: key = scan_key();
	call	_scan_key	;wreg free
	movwf	((c:read_switches@key))^00h,c
	line	95
	
l2677:
;matrix_keypad.c: 95: if(key != 0xFF && once )
		incf	((c:read_switches@key))^00h,c,w
	btfsc	status,2
	goto	u1841
	goto	u1840

u1841:
	goto	l2687
u1840:
	
l2679:
	movf	((c:read_switches@once))^00h,c,w
	btfsc	status,2
	goto	u1851
	goto	u1850
u1851:
	goto	l2687
u1850:
	line	97
	
l2681:
;matrix_keypad.c: 96: {;matrix_keypad.c: 97: once = 0;
	movlw	low(0)
	movwf	((c:read_switches@once))^00h,c
	line	98
;matrix_keypad.c: 98: return key;
	movf	((c:read_switches@key))^00h,c,w
	goto	l482
	line	100
	
l2687:
;matrix_keypad.c: 100: else if(key == 0xFF)
		incf	((c:read_switches@key))^00h,c,w
	btfss	status,2
	goto	u1861
	goto	u1860

u1861:
	goto	l2697
u1860:
	line	102
	
l2689:
;matrix_keypad.c: 101: {;matrix_keypad.c: 102: once = 1;
	movlw	low(01h)
	movwf	((c:read_switches@once))^00h,c
	goto	l2697
	line	105
	
l2691:
;matrix_keypad.c: 105: else if (detection_type == 0)
	movf	((c:read_switches@detection_type))^00h,c,w
	btfss	status,2
	goto	u1871
	goto	u1870
u1871:
	goto	l2697
u1870:
	line	107
	
l2693:
;matrix_keypad.c: 106: {;matrix_keypad.c: 107: return scan_key();
	call	_scan_key	;wreg free
	goto	l482
	line	110
	
l2697:
;matrix_keypad.c: 108: };matrix_keypad.c: 110: return 0xFF;
	movlw	(0FFh)&0ffh
	line	111
	
l482:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_switches
	__end_of_read_switches:
	signat	_read_switches,4217
	global	_scan_key

;; *************** function _scan_key *****************
;; Defined at:
;;		line 18 in file "matrix_keypad.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_read_switches
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2,group=0
	line	18
global __ptext34
__ptext34:
psect	text34
	file	"matrix_keypad.c"
	line	18
	
_scan_key:
;incstack = 0
	callstack 27
	line	20
	
l2565:
;matrix_keypad.c: 20: PORTBbits.RB5 = 0;
	bcf	((c:3969))^0f00h,c,5	;volatile
	line	21
;matrix_keypad.c: 21: PORTBbits.RB6 = 1;
	bsf	((c:3969))^0f00h,c,6	;volatile
	line	22
;matrix_keypad.c: 22: PORTBbits.RB7 = 1;
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	24
;matrix_keypad.c: 24: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u1671
	goto	u1670
u1671:
	goto	l452
u1670:
	line	26
	
l2567:
;matrix_keypad.c: 25: {;matrix_keypad.c: 26: return 1;
	movlw	(01h)&0ffh
	goto	l453
	line	28
	
l452:
;matrix_keypad.c: 28: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1681
	goto	u1680
u1681:
	goto	l455
u1680:
	line	30
	
l2573:
;matrix_keypad.c: 29: {;matrix_keypad.c: 30: return 4;
	movlw	(04h)&0ffh
	goto	l453
	line	32
	
l455:
;matrix_keypad.c: 32: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u1691
	goto	u1690
u1691:
	goto	l457
u1690:
	line	34
	
l2579:
;matrix_keypad.c: 33: {;matrix_keypad.c: 34: return 7;
	movlw	(07h)&0ffh
	goto	l453
	line	36
	
l457:
;matrix_keypad.c: 36: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u1701
	goto	u1700
u1701:
	goto	l454
u1700:
	line	38
	
l2585:
;matrix_keypad.c: 37: {;matrix_keypad.c: 38: return 10;
	movlw	(0Ah)&0ffh
	goto	l453
	line	41
	
l454:
;matrix_keypad.c: 39: };matrix_keypad.c: 41: PORTBbits.RB5 = 1;
	bsf	((c:3969))^0f00h,c,5	;volatile
	line	42
;matrix_keypad.c: 42: PORTBbits.RB6 = 0;
	bcf	((c:3969))^0f00h,c,6	;volatile
	line	43
;matrix_keypad.c: 43: PORTBbits.RB7 = 1;
	bsf	((c:3969))^0f00h,c,7	;volatile
	line	45
;matrix_keypad.c: 45: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u1711
	goto	u1710
u1711:
	goto	l460
u1710:
	line	47
	
l2589:
;matrix_keypad.c: 46: {;matrix_keypad.c: 47: return 2;
	movlw	(02h)&0ffh
	goto	l453
	line	49
	
l460:
;matrix_keypad.c: 49: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1721
	goto	u1720
u1721:
	goto	l462
u1720:
	line	51
	
l2595:
;matrix_keypad.c: 50: {;matrix_keypad.c: 51: return 5;
	movlw	(05h)&0ffh
	goto	l453
	line	53
	
l462:
;matrix_keypad.c: 53: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u1731
	goto	u1730
u1731:
	goto	l464
u1730:
	line	55
	
l2601:
;matrix_keypad.c: 54: {;matrix_keypad.c: 55: return 8;
	movlw	(08h)&0ffh
	goto	l453
	line	57
	
l464:
;matrix_keypad.c: 57: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u1741
	goto	u1740
u1741:
	goto	l461
u1740:
	line	59
	
l2607:
;matrix_keypad.c: 58: {;matrix_keypad.c: 59: return 11;
	movlw	(0Bh)&0ffh
	goto	l453
	line	62
	
l461:
;matrix_keypad.c: 60: };matrix_keypad.c: 62: PORTBbits.RB5 = 1;
	bsf	((c:3969))^0f00h,c,5	;volatile
	line	63
;matrix_keypad.c: 63: PORTBbits.RB6 = 1;
	bsf	((c:3969))^0f00h,c,6	;volatile
	line	64
;matrix_keypad.c: 64: PORTBbits.RB7 = 0;
	bcf	((c:3969))^0f00h,c,7	;volatile
	line	66
;matrix_keypad.c: 66: PORTBbits.RB7 = 0;
	bcf	((c:3969))^0f00h,c,7	;volatile
	line	68
;matrix_keypad.c: 68: if (PORTBbits.RB1 == 0)
	btfsc	((c:3969))^0f00h,c,1	;volatile
	goto	u1751
	goto	u1750
u1751:
	goto	l467
u1750:
	line	70
	
l2611:
;matrix_keypad.c: 69: {;matrix_keypad.c: 70: return 3;
	movlw	(03h)&0ffh
	goto	l453
	line	72
	
l467:
;matrix_keypad.c: 72: else if (PORTBbits.RB2 == 0)
	btfsc	((c:3969))^0f00h,c,2	;volatile
	goto	u1761
	goto	u1760
u1761:
	goto	l469
u1760:
	line	74
	
l2617:
;matrix_keypad.c: 73: {;matrix_keypad.c: 74: return 6;
	movlw	(06h)&0ffh
	goto	l453
	line	76
	
l469:
;matrix_keypad.c: 76: else if (PORTBbits.RB3 == 0)
	btfsc	((c:3969))^0f00h,c,3	;volatile
	goto	u1771
	goto	u1770
u1771:
	goto	l471
u1770:
	line	78
	
l2623:
;matrix_keypad.c: 77: {;matrix_keypad.c: 78: return 9;
	movlw	(09h)&0ffh
	goto	l453
	line	80
	
l471:
;matrix_keypad.c: 80: else if (PORTBbits.RB4 == 0)
	btfsc	((c:3969))^0f00h,c,4	;volatile
	goto	u1781
	goto	u1780
u1781:
	goto	l470
u1780:
	line	82
	
l2629:
;matrix_keypad.c: 81: {;matrix_keypad.c: 82: return 12;
	movlw	(0Ch)&0ffh
	goto	l453
	line	85
	
l470:
	
l2633:
;matrix_keypad.c: 83: };matrix_keypad.c: 85: return 0xFF;
	movlw	(0FFh)&0ffh
	line	86
	
l453:
	return	;funcret
	callstack 0
GLOBAL	__end_of_scan_key
	__end_of_scan_key:
	signat	_scan_key,89
	global	_clcd_putch

;; *************** function _clcd_putch *****************
;; Defined at:
;;		line 51 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     const unsigned char 
;;  addr            1    7[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    8[COMRAM] const unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_Enter_password
;;		_view_menu
;;		_view_log
;;		_change_password
;;		_display_time
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2,group=0
	file	"clcd.c"
	line	51
global __ptext35
__ptext35:
psect	text35
	file	"clcd.c"
	line	51
	
_clcd_putch:
;incstack = 0
	callstack 27
;clcd_putch@data stored from wreg
	movwf	((c:clcd_putch@data))^00h,c
	line	53
	
l2701:
;clcd.c: 53: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_putch@addr))^00h,c,w
	
	call	_clcd_write
	line	54
;clcd.c: 54: clcd_write(data, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_putch@data))^00h,c,w
	
	call	_clcd_write
	line	55
	
l605:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_putch
	__end_of_clcd_putch:
	signat	_clcd_putch,8313
	global	_Download_log

;; *************** function _Download_log *****************
;; Defined at:
;;		line 248 in file "main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  k               1   26[COMRAM] unsigned char 
;;  j               2   24[COMRAM] unsigned int 
;;  down_array     15    9[COMRAM] unsigned char [15]
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, fsr2l, fsr2h, status,2, status,0, tblptrl, tblptrh, tblptru, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:        18       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:        18       0       0       0       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 5
;; This function calls:
;;		_clcd_print
;;		_puts
;;		_read_external_eeprom
;; This function is called by:
;;		_Enter_menu
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2,group=0
	file	"main.c"
	line	248
global __ptext36
__ptext36:
psect	text36
	file	"main.c"
	line	248
	
_Download_log:
;incstack = 0
	callstack 24
	line	251
	
l2955:
;main.c: 250: unsigned static char i=0,b=0;;main.c: 251: unsigned char down_array[15]={0};
	lfsr	2,(Download_log@down_array)
	movlw	15-1
u2291:
	clrf	postinc2
	decf	wreg
	bc	u2291
	line	252
	
l2957:
;main.c: 252: for (b =0; b < 10; b++)
	movlw	low(0)
	movwf	((c:Download_log@b))^00h,c
	line	254
	
l2963:
;main.c: 253: {;main.c: 254: for (i = 0; i< 14; i++)
	movlw	low(0)
	movwf	((c:Download_log@i))^00h,c
	line	256
	
l2969:
;main.c: 255: {;main.c: 256: down_array[i] = read_external_eeprom((b*14) + i);
	movf	((c:Download_log@i))^00h,c,w
	addlw	low(Download_log@down_array)
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:Download_log@b))^00h,c,w
	mullw	0Eh
	movf	(prodl)^0f00h,c,w
	addwf	((c:Download_log@i))^00h,c,w
	
	call	_read_external_eeprom
	movwf	indf2,c

	line	254
	
l2971:
	incf	((c:Download_log@i))^00h,c
	
l2973:
		movlw	0Eh-1
	cpfsgt	((c:Download_log@i))^00h,c
	goto	u2301
	goto	u2300

u2301:
	goto	l2969
u2300:
	line	258
	
l2975:
;main.c: 257: };main.c: 258: puts("\n\r");
		movlw	low(STR_10)
	movwf	((c:puts@s))^00h,c
	movlw	high(STR_10)
	movwf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	259
;main.c: 259: puts(down_array);
		movlw	low(Download_log@down_array)
	movwf	((c:puts@s))^00h,c
	clrf	((c:puts@s+1))^00h,c

	call	_puts	;wreg free
	line	252
	
l2977:
	incf	((c:Download_log@b))^00h,c
	
l2979:
		movlw	0Ah-1
	cpfsgt	((c:Download_log@b))^00h,c
	goto	u2311
	goto	u2310

u2311:
	goto	l2963
u2310:
	line	262
	
l2981:
;main.c: 260: };main.c: 262: clcd_print("Download completed",(0xC0 + (0)));
		movlw	low(STR_11)
	movwf	((c:clcd_print@data))^00h,c
	movlw	high(STR_11)
	movwf	((c:clcd_print@data+1))^00h,c

	movlw	low(0C0h)
	movwf	((c:clcd_print@addr))^00h,c
	call	_clcd_print	;wreg free
	line	263
	
l2983:
;main.c: 263: for (unsigned int j = 59999; j--;)
	movlw	high(0EA5Fh)
	movwf	((c:Download_log@j+1))^00h,c
	movlw	low(0EA5Fh)
	movwf	((c:Download_log@j))^00h,c
	goto	l2989
	line	264
	
l2985:
;main.c: 264: for (unsigned char k = 30; k--;);
	movlw	low(01Eh)
	movwf	((c:Download_log@k))^00h,c
	
l2987:
	decf	((c:Download_log@k))^00h,c
		incf	((c:Download_log@k))^00h,c,w
	btfss	status,2
	goto	u2321
	goto	u2320

u2321:
	goto	l2987
u2320:
	line	263
	
l2989:
	decf	((c:Download_log@j))^00h,c
	btfss	status,0
	decf	((c:Download_log@j+1))^00h,c
		incf	((c:Download_log@j))^00h,c,w
	bnz	u2331
	incf	((c:Download_log@j+1))^00h,c,w
	btfss	status,2
	goto	u2331
	goto	u2330

u2331:
	goto	l2985
u2330:
	line	265
	
l2991:
;main.c: 265: choose_flag = 2;
	movlw	low(02h)
	movwf	((c:_choose_flag))^00h,c
	line	266
	
l289:
	return	;funcret
	callstack 0
GLOBAL	__end_of_Download_log
	__end_of_Download_log:
	signat	_Download_log,89
	global	_read_external_eeprom

;; *************** function _read_external_eeprom *****************
;; Defined at:
;;		line 22 in file "exter.c"
;; Parameters:    Size  Location     Type
;;  address         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  address         1    1[COMRAM] unsigned char 
;;  data            1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 4
;; This function calls:
;;		_i2c_read
;;		_i2c_rep_start
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_write
;; This function is called by:
;;		_Enter_password
;;		_view_log
;;		_Download_log
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2,group=0
	file	"exter.c"
	line	22
global __ptext37
__ptext37:
psect	text37
	file	"exter.c"
	line	22
	
_read_external_eeprom:
;incstack = 0
	callstack 25
;read_external_eeprom@address stored from wreg
	movwf	((c:read_external_eeprom@address))^00h,c
	line	26
	
l2703:
;exter.c: 24: unsigned char data;;exter.c: 26: i2c_start();
	call	_i2c_start	;wreg free
	line	27
	
l2705:
;exter.c: 27: i2c_write(0xA0);
	movlw	(0A0h)&0ffh
	
	call	_i2c_write
	line	28
	
l2707:
;exter.c: 28: i2c_write(address);
	movf	((c:read_external_eeprom@address))^00h,c,w
	
	call	_i2c_write
	line	29
	
l2709:
;exter.c: 29: i2c_rep_start();
	call	_i2c_rep_start	;wreg free
	line	30
	
l2711:
;exter.c: 30: i2c_write(0xA1);
	movlw	(0A1h)&0ffh
	
	call	_i2c_write
	line	31
;exter.c: 31: data = i2c_read();
	call	_i2c_read	;wreg free
	movwf	((c:read_external_eeprom@data))^00h,c
	line	32
	
l2713:
;exter.c: 32: i2c_stop();
	call	_i2c_stop	;wreg free
	line	34
;exter.c: 34: return data;
	movf	((c:read_external_eeprom@data))^00h,c,w
	line	35
	
l624:
	return	;funcret
	callstack 0
GLOBAL	__end_of_read_external_eeprom
	__end_of_read_external_eeprom:
	signat	_read_external_eeprom,4217
	global	_i2c_write

;; *************** function _i2c_write *****************
;; Defined at:
;;		line 54 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;;		_write_external_eeprom
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text38,class=CODE,space=0,reloc=2,group=0
	file	"i2c.c"
	line	54
global __ptext38
__ptext38:
psect	text38
	file	"i2c.c"
	line	54
	
_i2c_write:
;incstack = 0
	callstack 25
;i2c_write@data stored from wreg
	movwf	((c:i2c_write@data))^00h,c
	line	56
	
l2511:
;i2c.c: 56: SSPBUF = data;
	movff	(c:i2c_write@data),(c:4041)	;volatile
	line	57
	
l2513:
;i2c.c: 57: i2c_idle();
	call	_i2c_idle	;wreg free
	line	58
	
l96:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_write
	__end_of_i2c_write:
	signat	_i2c_write,4217
	global	_i2c_stop

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 42 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;;		_write_external_eeprom
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text39,class=CODE,space=0,reloc=2,group=0
	line	42
global __ptext39
__ptext39:
psect	text39
	file	"i2c.c"
	line	42
	
_i2c_stop:
;incstack = 0
	callstack 25
	line	44
	
l2507:
;i2c.c: 44: PEN = 1;
	bsf	c:(32298/8),(32298)&7	;volatile
	line	45
	
l2509:
;i2c.c: 45: i2c_idle();
	call	_i2c_idle	;wreg free
	line	46
	
l90:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
	signat	_i2c_stop,89
	global	_i2c_start

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 36 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_write_ds1307
;;		_read_ds1307
;;		_write_external_eeprom
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text40,class=CODE,space=0,reloc=2,group=0
	line	36
global __ptext40
__ptext40:
psect	text40
	file	"i2c.c"
	line	36
	
_i2c_start:
;incstack = 0
	callstack 25
	line	38
	
l2503:
;i2c.c: 38: SEN = 1;
	bsf	c:(32296/8),(32296)&7	;volatile
	line	39
	
l2505:
;i2c.c: 39: i2c_idle();
	call	_i2c_idle	;wreg free
	line	40
	
l87:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
	signat	_i2c_start,89
	global	_i2c_rep_start

;; *************** function _i2c_rep_start *****************
;; Defined at:
;;		line 48 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_read_ds1307
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text41,class=CODE,space=0,reloc=2,group=0
	line	48
global __ptext41
__ptext41:
psect	text41
	file	"i2c.c"
	line	48
	
_i2c_rep_start:
;incstack = 0
	callstack 25
	line	50
	
l2521:
;i2c.c: 50: RSEN = 1;
	bsf	c:(32297/8),(32297)&7	;volatile
	line	51
	
l2523:
;i2c.c: 51: i2c_idle();
	call	_i2c_idle	;wreg free
	line	52
	
l93:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rep_start
	__end_of_i2c_rep_start:
	signat	_i2c_rep_start,89
	global	_i2c_read

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 72 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 3
;; This function calls:
;;		_i2c_no_ack
;;		_i2c_rx_mode
;; This function is called by:
;;		_read_ds1307
;;		_read_external_eeprom
;; This function uses a non-reentrant model
;;
psect	text42,class=CODE,space=0,reloc=2,group=0
	line	72
global __ptext42
__ptext42:
psect	text42
	file	"i2c.c"
	line	72
	
_i2c_read:
;incstack = 0
	callstack 24
	line	74
	
l2525:
;i2c.c: 74: i2c_rx_mode();
	call	_i2c_rx_mode	;wreg free
	line	75
;i2c.c: 75: i2c_no_ack();
	call	_i2c_no_ack	;wreg free
	line	77
	
l2527:
;i2c.c: 77: return SSPBUF;
	movf	((c:4041))^0f00h,c,w	;volatile
	line	78
	
l105:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
	signat	_i2c_read,89
	global	_i2c_rx_mode

;; *************** function _i2c_rx_mode *****************
;; Defined at:
;;		line 60 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_i2c_idle
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text43,class=CODE,space=0,reloc=2,group=0
	line	60
global __ptext43
__ptext43:
psect	text43
	file	"i2c.c"
	line	60
	
_i2c_rx_mode:
;incstack = 0
	callstack 24
	line	62
	
l2515:
;i2c.c: 62: RCEN = 1;
	bsf	c:(32299/8),(32299)&7	;volatile
	line	63
	
l2517:
;i2c.c: 63: i2c_idle();
	call	_i2c_idle	;wreg free
	line	64
	
l99:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_rx_mode
	__end_of_i2c_rx_mode:
	signat	_i2c_rx_mode,89
	global	_i2c_idle

;; *************** function _i2c_idle *****************
;; Defined at:
;;		line 22 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_rep_start
;;		_i2c_write
;;		_i2c_rx_mode
;; This function uses a non-reentrant model
;;
psect	text44,class=CODE,space=0,reloc=2,group=0
	line	22
global __ptext44
__ptext44:
psect	text44
	file	"i2c.c"
	line	22
	
_i2c_idle:
;incstack = 0
	callstack 25
	line	24
	
l2501:
;i2c.c: 24: while (!SSPIF);
	
l77:
	btfss	c:(31987/8),(31987)&7	;volatile
	goto	u1621
	goto	u1620
u1621:
	goto	l77
u1620:
	
l79:
	line	25
;i2c.c: 25: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	26
	
l80:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_idle
	__end_of_i2c_idle:
	signat	_i2c_idle,89
	global	_i2c_no_ack

;; *************** function _i2c_no_ack *****************
;; Defined at:
;;		line 66 in file "i2c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_read
;; This function uses a non-reentrant model
;;
psect	text45,class=CODE,space=0,reloc=2,group=0
	line	66
global __ptext45
__ptext45:
psect	text45
	file	"i2c.c"
	line	66
	
_i2c_no_ack:
;incstack = 0
	callstack 25
	line	68
	
l2519:
;i2c.c: 68: ACKDT = 1;
	bsf	c:(32301/8),(32301)&7	;volatile
	line	69
;i2c.c: 69: ACKEN = 1;
	bsf	c:(32300/8),(32300)&7	;volatile
	line	70
	
l102:
	return	;funcret
	callstack 0
GLOBAL	__end_of_i2c_no_ack
	__end_of_i2c_no_ack:
	signat	_i2c_no_ack,89
	global	_puts

;; *************** function _puts *****************
;; Defined at:
;;		line 93 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  s               2    1[COMRAM] PTR const unsigned char 
;;		 -> STR_10(3), Download_log@down_array(15), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    1[COMRAM] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         2       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_putch
;; This function is called by:
;;		_Download_log
;; This function uses a non-reentrant model
;;
psect	text46,class=CODE,space=0,reloc=2,group=0
	file	"uart.c"
	line	93
global __ptext46
__ptext46:
psect	text46
	file	"uart.c"
	line	93
	
_puts:
;incstack = 0
	callstack 26
	line	95
	
l2717:
;uart.c: 95: while(*s)
	goto	l2723
	line	97
	
l2719:
;uart.c: 96: {;uart.c: 97: putch(*s++);
	movff	(c:puts@s),tblptrl
	movff	(c:puts@s+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1887
	tblrd	*
	
	movf	tablat,w
	bra	u1880
u1887:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u1880:
	
	call	_putch
	
l2721:
	infsnz	((c:puts@s))^00h,c
	incf	((c:puts@s+1))^00h,c
	line	95
	
l2723:
	movff	(c:puts@s),tblptrl
	movff	(c:puts@s+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1897
	tblrd	*
	
	movf	tablat,w
	bra	u1890
u1897:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u1890:
	iorlw	0
	btfss	status,2
	goto	u1901
	goto	u1900
u1901:
	goto	l2719
u1900:
	line	101
	
l563:
	return	;funcret
	callstack 0
GLOBAL	__end_of_puts
	__end_of_puts:
	signat	_puts,4218
	global	_putch

;; *************** function _putch *****************
;; Defined at:
;;		line 80 in file "uart.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_puts
;; This function uses a non-reentrant model
;;
psect	text47,class=CODE,space=0,reloc=2,group=0
	line	80
global __ptext47
__ptext47:
psect	text47
	file	"uart.c"
	line	80
	
_putch:
;incstack = 0
	callstack 26
;putch@byte stored from wreg
	movwf	((c:putch@byte))^00h,c
	line	84
	
l2637:
	line	87
;uart.c: 84: while(!TXIF)
	
l554:
	line	84
	btfss	c:(31988/8),(31988)&7	;volatile
	goto	u1791
	goto	u1790
u1791:
	goto	l554
u1790:
	line	88
	
l2639:
;uart.c: 87: };uart.c: 88: TXREG = byte;
	movff	(c:putch@byte),(c:4013)	;volatile
	line	89
	
l557:
	return	;funcret
	callstack 0
GLOBAL	__end_of_putch
	__end_of_putch:
	signat	_putch,4217
	global	_clcd_print

;; *************** function _clcd_print *****************
;; Defined at:
;;		line 42 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  data            2    6[COMRAM] PTR const unsigned char 
;;		 -> STR_20(17), STR_19(17), Event1(27), STR_18(15), 
;;		 -> STR_17(14), STR_16(17), STR_15(19), STR_14(15), 
;;		 -> STR_13(18), STR_12(17), time(9), STR_11(19), 
;;		 -> STR_9(13), STR_8(12), STR_7(14), STR_6(5), 
;;		 -> view_menu@view_array(102), STR_5(17), STR_4(17), STR_3(16), 
;;		 -> STR_2(17), STR_1(15), 
;;  addr            1    8[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, tblptrl, tblptrh, tblptru, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         3       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 2
;; This function calls:
;;		_clcd_write
;; This function is called by:
;;		_Enter_password
;;		_view_menu
;;		_view_log
;;		_clear_log
;;		_Download_log
;;		_set_time
;;		_change_password
;;		_display_event
;;		_display_time
;;		_init_config
;; This function uses a non-reentrant model
;;
psect	text48,class=CODE,space=0,reloc=2,group=0
	file	"clcd.c"
	line	42
global __ptext48
__ptext48:
psect	text48
	file	"clcd.c"
	line	42
	
_clcd_print:
;incstack = 0
	callstack 27
	line	44
	
l2665:
;clcd.c: 44: clcd_write(addr, 0);
	movlw	low(0)
	movwf	((c:clcd_write@control_bit))^00h,c
	movf	((c:clcd_print@addr))^00h,c,w
	
	call	_clcd_write
	line	45
;clcd.c: 45: while (*data != '\0')
	goto	l2671
	line	47
	
l2667:
;clcd.c: 46: {;clcd.c: 47: clcd_write(*data++, 1);
	movlw	low(01h)
	movwf	((c:clcd_write@control_bit))^00h,c
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1807
	tblrd	*
	
	movf	tablat,w
	bra	u1800
u1807:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u1800:
	
	call	_clcd_write
	
l2669:
	infsnz	((c:clcd_print@data))^00h,c
	incf	((c:clcd_print@data+1))^00h,c
	line	45
	
l2671:
	movff	(c:clcd_print@data),tblptrl
	movff	(c:clcd_print@data+1),tblptrh
	clrf	tblptru
	
	movlw	high __ramtop-1
	cpfsgt	tblptrh
	bra	u1817
	tblrd	*
	
	movf	tablat,w
	bra	u1810
u1817:
	movff	tblptrl,fsr0l
	movff	tblptrh,fsr0h
	movf	indf0,w
u1810:
	iorlw	0
	btfss	status,2
	goto	u1821
	goto	u1820
u1821:
	goto	l2667
u1820:
	line	49
	
l602:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_print
	__end_of_clcd_print:
	signat	_clcd_print,8313
	global	_clcd_write

;; *************** function _clcd_write *****************
;; Defined at:
;;		line 4 in file "clcd.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;;  control_bit     1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    1[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         1       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used: 1
;; Hardware stack levels required when called: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Enter_password
;;		_view_menu
;;		_view_log
;;		_clear_log
;;		_change_password
;;		_init_config
;;		_init_clcd
;;		_clcd_print
;;		_clcd_putch
;; This function uses a non-reentrant model
;;
psect	text49,class=CODE,space=0,reloc=2,group=0
	line	4
global __ptext49
__ptext49:
psect	text49
	file	"clcd.c"
	line	4
	
_clcd_write:
;incstack = 0
	callstack 28
;clcd_write@byte stored from wreg
	movwf	((c:clcd_write@byte))^00h,c
	line	6
	
l2531:
;clcd.c: 6: RC1 = control_bit;
	btfsc	((c:clcd_write@control_bit))^00h,c,0
	goto	u1631
	goto	u1630
u1631:
	bsf	c:(31761/8),(31761)&7	;volatile
	goto	u1645
u1630:
	bcf	c:(31761/8),(31761)&7	;volatile
u1645:
	line	7
	
l2533:
;clcd.c: 7: PORTD = byte;
	movff	(c:clcd_write@byte),(c:3971)	;volatile
	line	10
	
l2535:
;clcd.c: 10: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	11
	
l2537:
;clcd.c: 11: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	13
	
l2539:
;clcd.c: 13: TRISD7 = 0xFF;
	bsf	c:(31919/8),(31919)&7	;volatile
	line	14
	
l2541:
;clcd.c: 14: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	15
	
l2543:
;clcd.c: 15: RC1 = 0;
	bcf	c:(31761/8),(31761)&7	;volatile
	line	19
	
l2545:
;clcd.c: 18: {;clcd.c: 19: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	20
	
l2547:
;clcd.c: 20: RC2 = 0;
	bcf	c:(31762/8),(31762)&7	;volatile
	line	21
	
l2549:
;clcd.c: 21: } while (RD7);
	btfsc	c:(31775/8),(31775)&7	;volatile
	goto	u1651
	goto	u1650
u1651:
	goto	l2545
u1650:
	
l592:
	line	23
;clcd.c: 23: RC0 = 0;
	bcf	c:(31760/8),(31760)&7	;volatile
	line	24
;clcd.c: 24: TRISD7 = 0x00;
	bcf	c:(31919/8),(31919)&7	;volatile
	line	25
	
l593:
	return	;funcret
	callstack 0
GLOBAL	__end_of_clcd_write
	__end_of_clcd_write:
	signat	_clcd_write,8313
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 9 in file "isr.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      void 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5
;;      Params:         0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used: 1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
	file	"pic18F4580.as"
	line	#
global __pintcode
__pintcode:
psect	intcode
	file	"isr.c"
	line	9
	
_isr:
;incstack = 0
	callstack 24
	bsf int$flags,1,c ;set compiler interrupt flag (level 2)
	global	int_func
	call	int_func,f	;refresh shadow registers
psect	intcode_body,class=CODE,space=0,reloc=2
global __pintcode_body
__pintcode_body:
int_func:

	pop	; remove dummy address from shadow register refresh
	line	14
	
i2l3573:
;isr.c: 11: static unsigned short for_minute;;isr.c: 12: static unsigned short count;;isr.c: 14: if (TMR2IF)
	btfss	c:(31985/8),(31985)&7	;volatile
	goto	i2u321_41
	goto	i2u321_40
i2u321_41:
	goto	i2l3581
i2u321_40:
	line	16
	
i2l3575:
;isr.c: 15: {;isr.c: 16: if (count++ == 20000)
	infsnz	((c:isr@count))^00h,c
	incf	((c:isr@count+1))^00h,c
		movlw	33
	xorwf	((c:isr@count))^00h,c,w
	bnz	i2u322_41
	movlw	78
	xorwf	((c:isr@count+1))^00h,c,w
	btfss	status,2
	goto	i2u322_41
	goto	i2u322_40

i2u322_41:
	goto	i2l3581
i2u322_40:
	line	18
	
i2l3577:
;isr.c: 17: {;isr.c: 18: blink++;
	infsnz	((c:_blink))^00h,c
	incf	((c:_blink+1))^00h,c
	line	19
	
i2l3579:
;isr.c: 19: count = 0;
	movlw	high(0)
	movwf	((c:isr@count+1))^00h,c
	movlw	low(0)
	movwf	((c:isr@count))^00h,c
	line	22
	
i2l3581:
;isr.c: 20: };isr.c: 21: };isr.c: 22: TMR2IF = 0;
	bcf	c:(31985/8),(31985)&7	;volatile
	line	23
	
i2l436:
	bcf int$flags,1,c ;clear compiler interrupt flag (level 2)
	retfie f
	callstack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,89
psect	mediumconst
	db 0	; dummy byte at the end
	global	__mediumconst
	GLOBAL	__activetblptr
__activetblptr	EQU	2
	psect	intsave_regs,class=BIGRAM,space=1,noexec
	PSECT	rparam,class=COMRAM,space=1,noexec
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
	GLOBAL	___rparam_used
	___rparam_used EQU 1
	GLOBAL	___param_bank
	___param_bank EQU 0
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
       psect   temp,common,ovrld,class=COMRAM,space=1
	global	btemp
btemp:
	ds	1
	global	int$flags
	int$flags	set btemp
	global	wtemp8
	wtemp8 set btemp+1
	global	ttemp5
	ttemp5 set btemp+1
	global	ttemp6
	ttemp6 set btemp+4
	global	ttemp7
	ttemp7 set btemp+8
	end
