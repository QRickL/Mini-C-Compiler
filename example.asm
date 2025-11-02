wainPROC:
; prologue
lis $4
.word 4
add $8, $4, $4
lis $9
.word 1
sw $1, -4($30)
sw $2, -8($30)
sub $30, $30, $8
sub $29, $30, $4
; declarations
sw $9, -4($30)
sub $30, $30, $4
lis $3
.word 50
sw $3, -4($30)
sub $30, $30, $4
lis $3
.word 40
sw $3, -4($30)
sub $30, $30, $4
; statements
lis $3
.word 80
sw $3, -8($29)
; return expression
; prep for call to apple
sw $31, -4($30)
sw $29, -8($30)
sub $30, $30, $8
lw $3, -8($29)
sw $3, -4($30)
sub $30, $30, $4
lis $3
.word -100
sw $3, -4($30)
sub $30, $30, $4
lis $3
.word 100
sw $3, -4($30)
sub $30, $30, $4
sub $29, $30, $4
lis $5
.word applePROC
jalr $5
add $30, $30, $8
add $30, $30, $4
add $30, $30, $8
lw $31, -4($30)
lw $29, -8($30)
; cleanup for call to apple done
jr $31

applePROC:
; prologue
; declarations
; statements
lw $3, 8($29)
sw $3, -4($30)
sub $30, $30, $4
lw $3, 4($29)
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
sw $3, -4($30)
sub $30, $30, $4
lw $3, 12($29)
add $30, $30, $4
lw $5, -4($30)
sub $3, $5, $3
sw $3, 12($29)
lw $3, 8($29)
sw $3, -4($30)
sub $30, $30, $4
lw $3, 12($29)
add $30, $30, $4
lw $5, -4($30)
sub $3, $5, $3
sw $3, 4($29)
; return expression
lw $3, 12($29)
sw $3, -4($30)
sub $30, $30, $4
lw $3, 8($29)
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
sw $3, -4($30)
sub $30, $30, $4
lw $3, 4($29)
add $30, $30, $4
lw $5, -4($30)
add $3, $5, $3
; epilogue
jr $31