IDEAL
MODEL small
STACK 100h
DATASEG
; --------------------------
;True assembly challenge :
;Author : assemblyoverlord aka uri 
; !--> welcome to the assmebly challenge the challenge is very simple 
; prevesly you learned to code in assembly 8086 and you had a lot of fun 
; because of the low launguage and lack of tools to help you.
; well..... this takes that to the extreme!!.
; if prevesly you had the full assembly 8086 instruction set 
; now you only have the bare minimum needed to code 
; here is the following instruction set.
; --------------------------
;only the following registers: ax,bx,cx,dx,di,si
                            ;: es , cs,ds 
; not allowed!!:
;ss,bp,sp
; --------------------------
;bitwize operations : and ,or ,xor ,not , shl , shr
; --------------------------
;hardware enabling instructions: in , out , int 
; --------------------------
;the following jump commands:jmp 
; --------------------------
;flags jump allowed:
; --------------------------
; --------------------------
;cf flag: --> jc,jnc -->(carry) 
;zf flag: --> jz,jnz -->(zero)
;of flag: --> jo,jno -->(overflow)
;pf flag: --> jp,jnp -->(parity)
;sf flag: --> js,jns -->(sign)
; --------------------------
; --------------------------
;important note!:if you have not yet realized 
;yes... you have NO STACK if you want one
;create one yourself (;.
;important note! yes you have no procs because 
;they involve the bp sp registers using the call command 
;and well we dont have those 0:. 
; --------------------------
;macros:instead of procs use macros as they dont involve 
;the stack and simply copy the code in them were you 
;called them.
; --------------------------
;these are the rules your task is very simple create 
;the space invaders game!
;if you believe this is impossible well think again 
;believe it or not you ONLY need these following instructions 
;to recreate the other instructions and do the same logic.
; --------------------------
;good luck on your quest in this challenge 
;it will be very difficult and will take
;time and research enjoy!!!! 
; --------------------------



;assembly challenge guide:
;this is the recommended roadmap for the project
;not a need simply a recomedation
; --------------------------
;-->mov ---> xchg -->nop
;-->test
;-->lea
; --------------------------
;this is a big project take it slow and make sure each part works (:
; -->half adder -->cmplx jumps/loop logic-->fulladder -->16 bit incrementer |
; |<--<--<--<--<--<--<--<--<--<--<--<--<--<--<--<--<--<--<--<-<--|
; |-->-->16bitadder -->mul
; --------------------------
;--?half subbstructer -->fullsuber-->16bitdecrimentor -->16bit substructer |
; |<--<--<--<--<--<--<--<--<--<--<--<--<--<--<--<--<--<--<-<--|
; |-->cmp--> div 
; --------------------------
;stack implimentation
;allockate meomory for the stack 
;-->push -->pop -->pushall -->popall
; --------------------------
;shifts and rotation insturctions
; bonus not really needed 
; --------------------------
;start implimenting the game!!!
;now is the fun part! you finished implimented all 
;the instructions so your back to having every command
;at your disposal
; --------------------------
;build recommendation :
;before you start coding other parts of the project 
;you should create a couple of macros to help you 




; --------------------------
; --------------------------

; good to impliment macros:

;draw matrix --> x, y ,length ,hieght output:in scrn
;printnum --> prints num to scrn      output:in scrn
;genarate random number lowest,heights  output:in bx 
;movecurser -->
;printline
;delay 
;earaseboard

; --------------------------
; --------------------------




; -------------------------- ;
; -------------------------- ;
;                            ;
; now that those macros have been implimented 
;its time for the fun to begin 
;first lets build some generall object procs

;check collision 
;moveleft obejct -->movs object in screen its speed 
;moveright obejct -->movs object in screen its speed 
;moveup    obejct -->movs object in screen its speed 
;movedown  obejct -->movs object in screen its speed 


;alien procs:
;============
;moveenemy
;earase enemy 
;isenemyhit 
;createenemybullet
;genrandomenemy
;drawalivealeins
;earasealivealeins
;movealeins
;moveenemybullet
;newaleinsspeed
;============

;spaceship procs:
;============
;isspaceshiohit
;createspacebullet
;move bullet
;============


;recomdations: save di or si as register only for macro use to
;not have bugs 
; --------------------------


macro movv from , to ;-->uses dx 
xor dx,dx 
and to, dx 
or dx,from 
or to,dx 
endm

macro ldr reg , mem


macro cmpr var1,var2


endm

macro cmpr var1,var2 ;uses dx 


endm

CODESEG
start:
  xor ax,ax 
  or ax ,@data
  xor ds,ds 
	or ds,ax 
; --------------------------





; --------------------------

exit:
	mov ax, 4c00h
	int 21h
END start


