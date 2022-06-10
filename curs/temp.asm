.text
main:
sub $sp $sp 120
move $fp $sp 
# This is a code func : integer:=  
lw $t1 16($sp) 
li $t1 1 
sw $t1 16($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : integer:=  
lw $t1 20($sp) 
li $t1 20 
sw $t1 20($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : int:=  
lw $t1 0($sp) 
lw $t2 16($sp) 
move $t1 $t2 
sw $t1 0($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : label  
label_6 :  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : int<=  
lw $t1 24($sp) 
lw $t2 0($sp) 
lw $t3 20($sp) 
sle $t1 $t2 $t3
sw $t1 24($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : IF_FALSE_GOTO  
lw $t1 24($sp) 
beqz $t1 label_7 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : SET_PARAM_OFFSET_WIDTH  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : PUSH_VAL_PARAMS  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : CALL_FUNCTION  
sw $fp -4($sp) 
move $fp $sp 
sub $sp $sp 88
addi $t0 $fp 28
sw $t0 -12($fp) 
lw $t1 0($sp) 
lw $t2 0($fp) 
move $t1 $t2 
sw $t1 0($sp) 
jal label_1  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : integer:=  
lw $t1 12($sp) 
lw $t2 28($sp) 
move $t1 $t2 
sw $t1 12($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : WRITE_INT  
li $v0 1 
lw $a0 12($sp) 
syscall   
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : WRITE_NL  
li $v0 11 
li $a0 10 
syscall   
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : string:=  
lw $t1 32($sp) 
la $t1 t23 
sw $t1 32($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : WRITE_STRING  
li $v0 4 
lw $a0 32($sp) 
syscall   
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : WRITE_NL  
li $v0 11 
li $a0 10 
syscall   
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : int+  
lw $t1 0($sp) 
lw $t2 0($sp) 
addi $t1 $t2 1
sw $t1 0($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : GOTO  
j label_6  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : label  
label_7 :  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : integer:=  
lw $t1 36($sp) 
li $t1 10 
sw $t1 36($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : integer:=  
lw $t1 4($sp) 
lw $t2 36($sp) 
move $t1 $t2 
sw $t1 4($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : integer:=  
lw $t1 40($sp) 
li $t1 10 
sw $t1 40($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : integer:=  
lw $t1 12($sp) 
lw $t2 40($sp) 
move $t1 $t2 
sw $t1 12($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : int>=  
lw $t1 44($sp) 
lw $t2 12($sp) 
lw $t3 4($sp) 
sle $t1 $t3 $t2
sw $t1 44($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : IF_FALSE_GOTO  
lw $t1 44($sp) 
beqz $t1 label_9 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : string:=  
lw $t1 48($sp) 
la $t1 t27 
sw $t1 48($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : string:=  
lw $t1 8($sp) 
lw $t2 48($sp) 
move $t1 $t2 
sw $t1 8($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : WRITE_STRING  
li $v0 4 
lw $a0 8($sp) 
syscall   
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : WRITE_NL  
li $v0 11 
li $a0 10 
syscall   
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : label  
label_9 :  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : int>=  
lw $t1 52($sp) 
lw $t2 12($sp) 
lw $t3 4($sp) 
sle $t1 $t3 $t2
sw $t1 52($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : IF_FALSE_GOTO  
lw $t1 52($sp) 
beqz $t1 label_11 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : string:=  
lw $t1 56($sp) 
la $t1 t29 
sw $t1 56($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : WRITE_STRING  
li $v0 4 
lw $a0 56($sp) 
syscall   
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : WRITE_NL  
li $v0 11 
li $a0 10 
syscall   
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : label  
label_11 :  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
li $v0, 10
syscall
# This is a code func : FUNC_BEGIN  
sw $ra -8($fp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : label  
label_1 :  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : FUNC_BEGIN  
sw $ra -8($fp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : integer:=  
lw $t1 8($sp) 
li $t1 2 
sw $t1 8($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : int<=  
lw $t1 12($sp) 
lw $t2 0($sp) 
lw $t3 8($sp) 
sle $t1 $t2 $t3
sw $t1 12($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : IF_FALSE_GOTO  
lw $t1 12($sp) 
beqz $t1 label_3 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : integer:=  
lw $t1 16($sp) 
li $t1 1 
sw $t1 16($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : integer:=  
lw $t1 4($sp) 
lw $t2 16($sp) 
move $t1 $t2 
sw $t1 4($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : label  
label_3 :  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : integer:=  
lw $t1 20($sp) 
li $t1 2 
sw $t1 20($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : int>  
lw $t1 24($sp) 
lw $t2 0($sp) 
lw $t3 20($sp) 
slt $t1 $t3 $t2
sw $t1 24($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : IF_FALSE_GOTO  
lw $t1 24($sp) 
beqz $t1 label_5 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : integer:=  
lw $t1 28($sp) 
li $t1 1 
sw $t1 28($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : int-  
lw $t1 32($sp) 
lw $t2 0($sp) 
lw $t3 28($sp) 
sub $t1 $t2 $t3
sw $t1 32($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : SET_PARAM_OFFSET_WIDTH  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : PUSH_VAL_PARAMS  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : CALL_FUNCTION  
sw $fp -4($sp) 
move $fp $sp 
sub $sp $sp 88
addi $t0 $fp 36
sw $t0 -12($fp) 
lw $t1 0($sp) 
lw $t2 32($fp) 
move $t1 $t2 
sw $t1 0($sp) 
jal label_1  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : integer:=  
lw $t1 40($sp) 
li $t1 2 
sw $t1 40($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : int-  
lw $t1 44($sp) 
lw $t2 0($sp) 
lw $t3 40($sp) 
sub $t1 $t2 $t3
sw $t1 44($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : SET_PARAM_OFFSET_WIDTH  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : PUSH_VAL_PARAMS  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : CALL_FUNCTION  
sw $fp -4($sp) 
move $fp $sp 
sub $sp $sp 88
addi $t0 $fp 48
sw $t0 -12($fp) 
lw $t1 0($sp) 
lw $t2 44($fp) 
move $t1 $t2 
sw $t1 0($sp) 
jal label_1  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : int+  
lw $t1 52($sp) 
lw $t2 36($sp) 
lw $t3 48($sp) 
add $t1 $t2 $t3
sw $t1 52($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : integer:=  
lw $t1 4($sp) 
lw $t2 52($sp) 
move $t1 $t2 
sw $t1 4($sp) 
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : label  
label_5 :  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
# This is a code func : FUNC_RETURN  
lw $t1 4($sp) 
lw $t0 -12($fp) 
sw $t1 0($t0) 
lw $ra -8($fp) 
move $sp $fp 
lw $fp -4($sp) 
jr $ra  
# *-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*  
.data
t23: .asciiz "="
t27: .asciiz "hahahahaha  hjjg"
t29: .asciiz "Delete xor"
