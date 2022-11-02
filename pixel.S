.org $8000 

; use with 100 Hz
start:

LDA #06
STA $0200, X

LDA $4000

CMP #$01
BEQ UP
CMP #$04
BEQ LEFT
CMP #$02
BEQ DOWN
CMP #$08
BEQ RIGHT

JMP start

UP:
 JSR CLEAR 
 TXA
 SBC #$10
 TAX
 JMP start

LEFT:
 JSR CLEAR
 DEX
 JMP start

DOWN:
 JSR CLEAR
 TXA
 ADC #$F
 TAX
 JMP start

RIGHT:
 JSR CLEAR
 INX
 JMP start

CLEAR:       
 LDA #0
 STA $0200, X
 RTS

.goto $FFFA 
.dw start
.dw start 
.dw start