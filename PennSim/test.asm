;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
; Programmer: Anjaney Chirag Mahajan
; Class: ECE 109
; Section: 405
;
;      test.asm
;
.ORIG x3000
AND R0, R0, #2
LD  R0, ZERO
ADD R0, R0, R3
OUT
HALT

ZERO: .fill x32  ; ASCII code for '0'

;
;
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
