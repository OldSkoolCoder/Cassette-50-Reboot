!--------------------------------------------------
!- 26 October 2019 23:18:48
!- Import of : DOWN.PRG
!- From Disk : c:\users\marka\games\c64\downhill.d64
!- Commodore 64
!--------------------------------------------------
1 POKE53281,0:POKE53280,0:PRINT"{clear}{down*5}{right*9}{green}***- {white}please wait {green}-***":POKE54272,21:CLR:HS=0:DIMFR(35):DIMDR(35):GOSUB10000:A$(1)="{green} #$":A$(2)="{green}#%%$":A$(3)="{green}%%%%":A$(4)="{brown} &'":B$(1)="{black}{space*3}(":B$(2)="{gray})++++*":B$(3)="{dark gray}++++++":B$(4)="{dark gray}+,++,+":B$(5)="{dark gray}++.-++
6 D$(1)="{red} 456 ":D$(2)="{red}2%%%3":D$(3)="{white}{space*2}%":E$="101010101010":F$(1)="{blue}7:":F$(2)="{blue}8;":F$(3)="{blue}9<":G$(1)="{space*5}{blue}=":G$(2)=" {white}++{red}+{white}++*":G$(3)=" {white}+{red}+++{white}++++":G$(4)=" {white}++{red}+{white}+++++":G$(5)=" {black} >{space*4}>":POKE53281,0:POKE53280,0
11 M1=54296:M2=54277:M3=54278:M4=54276:M5=54273:M6=54272:M7=54272
15 SL=1:V=53248:GOSUB6000:SL=7-SL:POKEV+23,0:POKEV+29,0:P=0:L=0:H=1:H2=1:POKEV+21,0:POKE53280,15:POKE53281,15
25 I=1:S=12:S1=24:SX=5:IX=.5:A=150:TE=2:AX=0:RD=0:POKEV+41,2:PRINT"{clear}":IFDEMO=1THENPRINT"{right*11}{green}demo mode.":FORU=1TO2000:NEXT:GOTO35
33 POKEV+21,4:POKEV+4,150:POKEV+5,100:POKE2042,193
35 POKEM1,15:POKEM2,10:POKEM3,200:POKEM4,17:FORU=1TO3:POKEM5,50:POKEM6,100:FORU1=1TO600:NEXT:POKEM5,0:POKEM6,0:FORU1=1TO500:NEXT:NEXT:POKEM5,100:POKEM6,100:FORU1=1TO400:NEXT:TI$="000000":POKEM5,0:POKEM6,0:PRINT"{clear}{down*29}";:POKE53272,(PEEK(53272)AND240)+12:IFH=8THENI=0:S=10
103 IFH=2THENPRINT"{white}!!!!!!!!!!!!!!{space*7}!!!!!!!!!!!!!!!!!!
104 IFH=6THENPRINT"{blue}!!!!!!!!!!!!!!!!!{space*6}!!!!!!!!!!!!!!!!
105 IFDEMO=0THEN110
107 IFPEEK(197)<>64THEN15
108 ONHGOSUB2000,3100,3000,2500,3200,3300,3400,3500,3600,3700,3800:FORU=1TO60:NEXT:POKEM5,0:POKEM6,0:GOTO107
110 POKE(V+31),0:POKEV+4,A:POKEV+5,100:POKEV+21,4:AM=A
120 P=P+1:POKEV+16,AX*4:POKEV+4,AM:K=PEEK(56320):POKEM5,0:POKEM6,0:IF(TE=2ANDK=123)THENTE=1:GOTO1100
350 IF(TE=1ANDK=119)THENTE=2:GOTO1130
360 A=A+(SLANDTE=2)-(SLANDTE=1):IFPEEK(V+31)<>0THEN5000
600 AX=INT(A/256):AM=A-AX*256:ONHGOSUB2000,3100,3000,2500,3200,3300,3400,3500,3600,3700,3800:GOTO120
1100 POKE2042,194:POKEM4,129:POKEM5,100:POKEM6,100:GOTO360
1130 POKE2042,193:POKEM4,129:POKEM5,100:POKEM6,100:GOTO360
2000 IFTI$>"000006"ANDI=1THENH=3:S=1+INT(RND(0)*32):RETURN
2010 PRINT"{purple}!"TAB(S)A$(I)TAB(38)"{purple}!":RD=RD+1:I=I+1:IFI<5THEN2023
2021 I=1:S=1+INT(RND(0)*34):POKEM4,17:POKEM5,30:POKEM6,100
2023 IFRD<120THENRETURN
2030 IFI=1THENH=2:RD=0:GOTO4000
2500 IFTI$>"000006"ANDI=1THENH=3:S=1+INT(RND(0)*32):RETURN
2510 PRINT"{purple}!"TAB(S)A$(I)TAB(S1)A$(I)TAB(38)"{purple}!":RD=RD+1:I=I+1:IFI<5THEN2533
2531 S=1+INT(RND(0)*15):S1=19+INT(RND(0)*15):I=1:POKEM4,33:POKEM5,40:POKEM6,100
2533 IFRD<100THENRETURN
2535 IFI=1THENH=5:S=5:I=2:RD=0:POKE53281,15:POKE53280,15:POKEM4,33
2540 RETURN
3000 POKEM4,17:POKEM5,(I*10):POKEM6,(I*10):PRINT"{purple}!"TAB(S)"{dark gray}"B$(I)TAB(38)"{purple}!":I=I+1:IFI<6THENRETURN
3040 H=H2:TI$="000000":I=1:S=10:S1=20:RETURN
3100 PRINTTAB(S)"{blue}%%{space*7}%%":RD=RD+1:I=I+1:IFI>SXTHENIX=-IX:SX=INT(RND(0)*15):I=0
3140 S=S+IX:IFS<3ORS>24THENIX=-IX
3143 IFRD<100THENRETURN
3145 H=4:H2=4:POKE53281,3:POKE53280,3:RD=0:S=4:S1=33:I=1:TI$="000000":RETURN
3200 IFI>1THEN3220
3211 PRINT"{purple}!"TAB(S)"{white}"E$TAB(38)"{purple}!":GOTO3225
3220 PRINT"{purple}!"TAB(38)"{purple}!":POKEM1,15-I
3225 POKEM1,15-I:POKEM4,33:POKEM5,20:POKEM6,100:RD=RD+1:I=I+1:IFI>10THENS=INT(RND(0)*27):I=1
3236 IFRD>80ANDI=8THENH=7:H2=7:RD=0:I=0:POKE53281,12:POKE53280,12:VL=15
3240 RETURN
3300 RD=RD+1:IFRD>=85ANDRD<100THENPRINT"{purple}!"TAB(38)"{purple}!":RETURN
3306 POKEM4,33:POKEM5,10:POKEM6,100:POKEM1,VL:VL=VL-2:IFRD>=100THENRD=0:H=8:H2=8:I=1:S=15:POKE53281,3:POKE53280,3:POKEM1,15:RETURN
3310 IFI<=7THENPRINT"{space*12}{gray}%{green}%%%%{space*6}{gray}%":VL=15:GOTO3350
3320 IF(I>7ANDI<=13)OR(I>20ANDI<27)THENPRINT"{space*12}{gray}%{space*10}%":GOTO3350
3330 IFI>13ANDI<=20THENPRINT"{space*12}{gray}%{space*6}{green}%%%%{gray}%":VL=15
3350 I=I+1:IFI=26THENI=1
3360 RETURN
3400 RD=RD+1:IFRD>140ANDI=0THEN3455
3415 IFRD>116THENPRINT"{black}!"TAB(38)"{black}!":RETURN
3420 POKEM4,17:POKEM5,15-(I*2):POKEM6,20:PRINT"{black}!"TAB(S)D$(I)TAB(38)"{black}!":I=I+1:IFI=4THENI=0:S=1+INT(RND(0)*33)
3440 RETURN
3455 I=8:H=6:H2=6:RD=0:GOTO4100
3490 RETURN
3500 I=I+1:RD=RD+1:IFRD>100ANDI>5THENH=9:H2=9:RD=0:I=3:RETURN
3530 IFI>5THENI=1:S=1+INT(RND(0)*32)
3540 PRINT"{purple}!"TAB(S)B$(I)TAB(38)"{purple}!":POKEM4,33:POKEM5,(I*2):POKEM6,20:POKEM2,10:RETURN
3600 IFI=2THENPRINT:GOTO3640
3610 IFI>2THENPRINT"{dark gray}!"TAB(38)"{dark gray}!":GOTO3640
3630 FORU=1TOS:PRINT"{green}%";:NEXT:PRINT"{blue}!{space*7}!";:FORU=1TO39-S-9:PRINT"{green}%";:NEXT
3640 I=I+1:IFI=18THENI=1:S=1+INT(RND(0)*19)
3650 RD=RD+1:IFRD<100THENRETURN
3655 IFRD<130THENI=16:RETURN
3690 H=10:H2=10:RD=0:I=1:S=10:S1=20:POKE53281,15:POKE53280,15:RETURN
3700 RD=RD+1:IFRD<160THEN3715
3712 H=11:H2=11:RD=0:I=0:S=5:S1=25:POKE53281,12:POKE53280,12:RETURN
3715 IFRD>132THENPRINT"{purple}!"TAB(38)"{purple}!":RETURN
3720 PRINT"{purple}!"TAB(S)F$(I)TAB(S1)F$(I)TAB(38)"{purple}!":I=I+1:IFI<4THENRETURN
3735 I=1:S=1+INT(RND(0)*15):S1=19+INT(RND(0)*17):POKEM4,129:POKEM5,15-(I*2):POKEM6,10:POKEM2,10:RETURN
3800 RD=RD+1:IFRD>116ANDRD<=140THENPRINT"{purple}!"TAB(38)"{purple}!":RETURN
3810 IFRD>140THEN3890
3815 POKEM4,17:POKEM5,15-(I*2):POKEM6,20:POKEM2,10:PRINT"{purple}!"TAB(S)D$(I)TAB(S1)D$(I)TAB(38)"{purple}!":I=I+1:IFI=4THENI=0:S=1+INT(RND(0)*15):S1=19+INT(RND(0)*15)
3840 RETURN
3890 IFDEMO=1THEN15
3895 FORU=1TO500:NEXT:H=1:H2=1:P=P+50:RD=0:I=1:S=10:S1=20:L=L-1:RETURN
4000 POKE53281,14:POKE53280,14:I=1:S=13:PRINT"{white}!!!!!!!!!!!!!!{space*8}!!!!!!!!!!!!!!!!!":POKEM4,17:FORU=100TO10STEP-1:POKEM5,U:POKEM6,UL:NEXT:FORU=50TO80:POKEM5,U:POKEM6,UL:NEXT:RETURN
4100 POKE53280,13:POKE53281,13:I=1:POKEV+39,2:POKEV+40,2:L=L-1:IFH=6THENPRINT"{blue}!!!!!!!!!!!!!!!!!{space*6}!!!!!!!!!!!!!!!!":RETURN
4435 E2=39
5000 POKEV+41,11:UM=200:POKEM1,15:POKEM2,10:POKEM3,200:POKEM4,17:POKE2042,195:FORU=100TO200STEP1:IFAX<>0THENPOKEV+16,4
5036 POKEM5,UM:POKEM6,100:POKEV+4,AM:POKEV+5,U:UM=UM-2:NEXTU:POKEM4,129:FORU1=15TO1STEP-.1:POKEM1,U1:POKEM5,30:POKEM6,100:NEXT:POKEM5,0:POKEM6,0:FORU1=1TO500:NEXT:POKEV+21,0:L=L+1:IFL<3THENPOKEV+21,0:POKEV+16,0:GOTO25
5100 PRINT"{clear}":AM=20:FORU=1TO30:PRINT"{home}{down*17}"TAB(U)G$(1):PRINTTAB(U)G$(2):PRINTTAB(U)G$(3):PRINTTAB(U)G$(4):PRINTTAB(U)G$(5):FORU1=1TO100:NEXT:POKEV+21,0:POKEM1,15:POKEM4,33:POKEM5,AM:POKEM6,100:IFAM=20THENAM=15:GOTO5180
5170 IFAM=15THENAM=20
5180 NEXT:POKEM5,0:POKEM6,0:POKE53272,21:PRINT"{clear}":POKE53280,15:POKE53281,15:PRINTCHR$(14):PRINT"{blue}{right*13}W-I-P-E{space*2}O-U-T ":PRINT"{down*3}{green}You were splatted by the "NS$(H):IFH=3THENH=H2
5230 PRINT"{down*3}{red}You covered:{green}"P"{red}metres.":PRINT"{purple}{down*3}Longest distance covered is{gray}";:IFHS<PTHENHS=P
5237 PRINTHS"{purple}metres.":FORU=1TO22STEP2:POKEM5,FM(U):POKEM6,100:FORU1=1TOFM(U+1):NEXT:POKEM5,0:POKEM6,0:NEXT:FORU=1TO3000:NEXT:PRINT"{down*5}{blue}{space*13}{reverse on} Press fire. ":U=0
5260 IFPEEK(56320)=111THEN11
5270 U=U+1:IFU<1500THENGOTO5260
5280 GOTO11
6000 POKEV+23,4:POKEV+29,4:POKEV+41,2:POKEV+21,0:POKEV+16,0:PRINT"{clear}":POKE53272,21:POKE53281,12:POKE53280,12:TI$="000000":C=1:U=1
6015 PRINTCHR$(COL(C)):PRINT"{home}{space*4}O{cm y}M N{cm y}M {cm g}{space*2}{cm m} O{cm y}M{cm m}{space*2}{cm g}PO{cm m}{space*3}{cm m}":PRINT"{space*4}{cm h} {cm m} {cm g} {cm m} {cm g}{cm m}{cm g}{cm m} {cm g} {cm m*2}{space*2}{cm g}{cm m}{cm g}{cm m}{space*3}{cm m}":PRINTCHR$(COL(C+1));:PRINT"{space*4}{cm g} {cm m} {cm g} {cm m} {cm h}{cm m}{cm g}{cm m} {cm g} {cm m*2}DD{cm g}{cm m}{cm h}{cm m}{space*3}{cm m}":PRINTCHR$(COL(C+2));:PRINT"{space*4}{cm g} {cm m} {cm g} {cm m} {cm h}{cm m}{cm g}{cm m} {cm g} {cm m*2}{space*2}{cm g}{cm m}{cm g}{cm m}{space*3}{cm m}":PRINT"{space*4}L{cm p}N M{cm p}N M{sh @}LN {cm g} {cm m*2}{space*2}{cm g}{sh @}L M{cm p*2} M{cm p*2}
6029 PRINT"{down*2}{right*12}{light green}ski jump":PRINT"{down*3}{right*10}{blue}skill level:{red}"(SL*2)-1:PRINT"{home}{down*16}{right*7}{black}{reverse on} push fire to start. ":IFU=1THENGOSUB30000:U=0:TI$="000000
6060 IFPEEK(56320)=111THENDEMO=0:POKEV+21,0:RETURN
6065 IFPEEK(197)=1THENSL=SL+.5:IFSL=5.5THENSL=1
6070 IFC=2ORC=6THENPRINT"{up}{right*3}{space*35}
6090 IFTI$>"000030"THENDEMO=1:POKEV+21,0:RETURN
6100 IFC<=2THENPOKE2042,193:GOTO6115
6110 IFC<=5THENPOKE2042,194
6115 POKEV+4,130:POKEV+5,200:POKEV+21,4:C=C+1:IFC>5THENC=1
6130 GOTO6015
10000 RESTORE:U=0
10014 READFR(U),DR(U):IFFR(U)<>99THENU=U+1:GOTO10014
10020 POKE53269,4:FORU=12352TO12414:READX:POKEU,X:NEXT:FORU=12416TO12478:READX:POKEU,X:NEXT:FORU=12480TO12542:READX:POKEU,X:NEXT:FORU=12544TO12559:READX:POKEU,X:NEXT:FORU=12568TO12791:READX:POKEU,X:NEXT:FORU=1TO8:READX:COL(U)=X:NEXT:DIMFM(23):FORU=1TO22:READFM(U):NEXT:DIMNS$(11):FORU=1TO11:READNS$(U):NEXT:RETURN
12000 DATA8,300,8,100,8,100,8,100,0,0,0,0,0,0,10,300,10,100,10,100,10,100,0,0,0,0,0,0,12,200,12,200,12,200,10,200,12,200,14,300,14,100,14,100,14,900,0,0,0,0,0,0,14,200,12,200,10,400,12,300,12,100,12,100,12,900,99,99
20010 DATA0,60,0,0,126,0,0,90,0,0,126,0,0,60,0,0,24,0,0,255,0,0,255,0,0,255,0,0,255,0,0,126,0,0,126,0,0,126,0,0,102,0,0,102,0,1,118,0,0,238,0,0,102,0,0,51,0,0,25,128,0,12,192,0,60,0,0,126,0,0,90,0
21020 DATA0,126,0,0,60,0,0,24,0,0,255,0,0,255,0,0,255,0,0,255,0,0,126,0,0,126,0,0,126,0,0,102,0,0,102,0,0,110,128,0,119,0,0,102,0,0,204,0,1,152,0,3,48,0,2,0,64,3,0,192,1,0,128,0,195,0,0,102,0,0,126,0
22030 DATA0,102,0,0,102,0,0,102,0,0,126,0,0,126,0,0,255,0,0,255,0,0,255,0,0,255,0,0,24,0,0,60,0,0,126,0,0,126,0,0,126,0,0,60,0,0,0,0,0,0,0,0,0,24,60,60,126,255,24,24,0,1,2,5,14,23,61,63,255
22240 DATA128,192,160,112,216,118,254,126,254,223,255,247,253,255,191,255,15,14,11,15,13,14,13,7,240,208,144,80,208,240,144,224,0,102,102,219,255,255,255,255,1,3,7,15,31,63,127,255,128,192,224,240,248,252,254,255
22320 DATA255,255,255,255,255,255,255,255,24,24,24,255,255,24,24,24,15,15,111,111,15,15,15,255,248,248,248,248,248,248,248,255,96,126,127,127,126,96,96,96,128,192,96,48,24,12,6,1,3,6,12,24,48,96,192,128
22430 DATA15,31,63,127,127,127,127,31,240,248,252,254,254,254,254,248,0,0,0,0,0,7,63,255,0,0,0,0,0,255,255,255,0,0,0,0,0,224,252,255,16,8,6,3,7,7,35,113,219,143,15,15,31,15,15,27,51,97,192,128,0,0,0,0
22530 DATA8,16,160,192,224,224,196,140,219,241,240,240,248,240,240,216,202,134,3,1,0,0,0,0, 60,126,126,255,255,255,255,255,60,126,126,255,255,126,126,60,5,28,31,151,158,159,5,28
23010 DATA10,400,10,400,10,150,10,400,12,300,11,150,11,150,10,150,10,150,9,100,10,500,TREES,MOUNTAIN PASS,SOD,FOREST,ICE CRACKS,MUSHROOMS,TUNNEL,CITY,SLALOM GATES,ANTS,MUSSROOM FIELD
30000 POKEM1,0:POKEM2,0:POKEM3,0:POKEM4,0:POKEM1,15:POKEM2,10:POKEM3,200:POKEM4,33:NN=0
30020 POKEM5,FR(NN):POKEM6,10:FORU=1TODR(NN):NEXT:POKEM5,0:POKEM6,0:NN=NN+1:IFFR(NN)<>99THEN30020
30040 RETURN