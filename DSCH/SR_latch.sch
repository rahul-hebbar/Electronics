DSCH3
VERSION 08-12-2021 13:34:20
BB(256,-30,519,265)
SYM  #light
BB(448,165,454,179)
TITLE 450 179  #QC
MODEL 49
PROP                                                                                                                                   
REC(449,166,4,4,r)
VIS 1
PIN(450,180,0.000,0.000)QC
LIG(453,171,453,166)
LIG(453,166,452,165)
LIG(449,166,449,171)
LIG(452,176,452,173)
LIG(451,176,454,176)
LIG(451,178,453,176)
LIG(452,178,454,176)
LIG(448,173,454,173)
LIG(450,173,450,180)
LIG(448,171,448,173)
LIG(454,171,448,171)
LIG(454,173,454,171)
LIG(450,165,449,166)
LIG(452,165,450,165)
FSYM
SYM  #light
BB(513,30,519,44)
TITLE 515 44  #Q
MODEL 49
PROP                                                                                                                                   
REC(514,31,4,4,r)
VIS 1
PIN(515,45,0.000,0.000)Q
LIG(518,36,518,31)
LIG(518,31,517,30)
LIG(514,31,514,36)
LIG(517,41,517,38)
LIG(516,41,519,41)
LIG(516,43,518,41)
LIG(517,43,519,41)
LIG(513,38,519,38)
LIG(515,38,515,45)
LIG(513,36,513,38)
LIG(519,36,513,36)
LIG(519,38,519,36)
LIG(515,30,514,31)
LIG(517,30,515,30)
FSYM
SYM  #button
BB(256,156,265,164)
TITLE 260 160  #S
MODEL 59
PROP                                                                                                                                   
REC(257,157,6,6,r)
VIS 1
PIN(265,160,0.000,0.000)S
LIG(264,160,265,160)
LIG(256,164,256,156)
LIG(264,164,256,164)
LIG(264,156,264,164)
LIG(256,156,264,156)
LIG(257,163,257,157)
LIG(263,163,257,163)
LIG(263,157,263,163)
LIG(257,157,263,157)
FSYM
SYM  #button
BB(256,1,265,9)
TITLE 260 5  #R
MODEL 59
PROP                                                                                                                                   
REC(257,2,6,6,r)
VIS 1
PIN(265,5,0.000,0.000)R
LIG(264,5,265,5)
LIG(256,9,256,1)
LIG(264,9,256,9)
LIG(264,1,264,9)
LIG(256,1,264,1)
LIG(257,8,257,2)
LIG(263,8,257,8)
LIG(263,2,263,8)
LIG(257,2,263,2)
FSYM
SYM  #inv
BB(400,180,435,200)
TITLE 415 190  #~
MODEL 101
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(400,190,0.000,0.000)in
PIN(435,190,0.030,0.210)out
LIG(400,190,410,190)
LIG(410,180,410,200)
LIG(410,180,425,190)
LIG(410,200,425,190)
LIG(427,190,427,190)
LIG(429,190,435,190)
VLG  not not1(out,in);
FSYM
SYM  #inv
BB(405,25,440,45)
TITLE 420 35  #~
MODEL 101
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(405,35,0.000,0.000)in
PIN(440,35,0.030,0.210)out
LIG(405,35,415,35)
LIG(415,25,415,45)
LIG(415,25,430,35)
LIG(415,45,430,35)
LIG(432,35,432,35)
LIG(434,35,440,35)
VLG  not not1(out,in);
FSYM
SYM  #vdd
BB(340,180,350,190)
TITLE 343 186  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(345,190,0.000,0.000)vdd
LIG(345,190,345,185)
LIG(345,185,340,185)
LIG(340,185,345,180)
LIG(345,180,350,185)
LIG(350,185,345,185)
FSYM
SYM  #nmos
BB(300,197,320,217)
TITLE 315 212  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(300,198,15,19,r)
VIS 2
PIN(300,217,0.000,0.000)s
PIN(310,197,0.000,0.000)g
PIN(320,217,0.030,0.280)d
LIG(310,207,310,197)
LIG(304,207,316,207)
LIG(304,209,316,209)
LIG(316,217,316,209)
LIG(320,217,316,217)
LIG(304,217,304,209)
LIG(300,217,304,217)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(300,225,320,245)
TITLE 305 230  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(305,225,15,19,r)
VIS 2
PIN(300,225,0.000,0.000)s
PIN(310,245,0.000,0.000)g
PIN(320,225,0.030,0.280)d
LIG(310,245,310,239)
LIG(310,237,310,237)
LIG(316,235,304,235)
LIG(316,233,304,233)
LIG(304,225,304,233)
LIG(300,225,304,225)
LIG(316,225,316,233)
LIG(320,225,316,225)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(300,-20,320,0)
TITLE 315 -5  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(300,-19,15,19,r)
VIS 2
PIN(300,0,0.000,0.000)s
PIN(310,-20,0.000,0.000)g
PIN(320,0,0.030,0.280)d
LIG(310,-10,310,-20)
LIG(304,-10,316,-10)
LIG(304,-8,316,-8)
LIG(316,0,316,-8)
LIG(320,0,316,0)
LIG(304,0,304,-8)
LIG(300,0,304,0)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(300,10,320,30)
TITLE 305 15  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(305,10,15,19,r)
VIS 2
PIN(300,10,0.000,0.000)s
PIN(310,30,0.000,0.000)g
PIN(320,10,0.030,0.280)d
LIG(310,30,310,24)
LIG(310,22,310,22)
LIG(316,20,304,20)
LIG(316,18,304,18)
LIG(304,10,304,18)
LIG(300,10,304,10)
LIG(316,10,316,18)
LIG(320,10,316,10)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #pmos
BB(300,70,320,90)
TITLE 305 75  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(305,70,15,19,r)
VIS 2
PIN(300,70,0.000,0.000)s
PIN(310,90,0.000,0.000)g
PIN(320,70,0.030,0.280)d
LIG(310,90,310,84)
LIG(310,82,310,82)
LIG(316,80,304,80)
LIG(316,78,304,78)
LIG(304,70,304,78)
LIG(300,70,304,70)
LIG(316,70,316,78)
LIG(320,70,316,70)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #nmos
BB(300,42,320,62)
TITLE 315 57  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(300,43,15,19,r)
VIS 2
PIN(300,62,0.000,0.000)s
PIN(310,42,0.000,0.000)g
PIN(320,62,0.030,0.280)d
LIG(310,52,310,42)
LIG(304,52,316,52)
LIG(304,54,316,54)
LIG(316,62,316,54)
LIG(320,62,316,62)
LIG(304,62,304,54)
LIG(300,62,304,62)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #pmos
BB(300,165,320,185)
TITLE 305 170  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                               
REC(305,165,15,19,r)
VIS 2
PIN(300,165,0.000,0.000)s
PIN(310,185,0.000,0.000)g
PIN(320,165,0.030,0.280)d
LIG(310,185,310,179)
LIG(310,177,310,177)
LIG(316,175,304,175)
LIG(316,173,304,173)
LIG(304,165,304,173)
LIG(300,165,304,165)
LIG(316,165,316,173)
LIG(320,165,316,165)
VLG   pmos pmos(drain,source,gate);
FSYM
SYM  #vdd
BB(290,-30,300,-20)
TITLE 293 -24  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(295,-20,0.000,0.000)vdd
LIG(295,-20,295,-25)
LIG(295,-25,290,-25)
LIG(290,-25,295,-30)
LIG(295,-30,300,-25)
LIG(300,-25,295,-25)
FSYM
SYM  #vdd
BB(290,125,300,135)
TITLE 293 131  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(295,135,0.000,0.000)vdd
LIG(295,135,295,130)
LIG(295,130,290,130)
LIG(290,130,295,125)
LIG(295,125,300,130)
LIG(300,130,295,130)
FSYM
SYM  #nmos
BB(300,135,320,155)
TITLE 315 150  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                               
REC(300,136,15,19,r)
VIS 2
PIN(300,155,0.000,0.000)s
PIN(310,135,0.000,0.000)g
PIN(320,155,0.030,0.280)d
LIG(310,145,310,135)
LIG(304,145,316,145)
LIG(304,147,316,147)
LIG(316,155,316,147)
LIG(320,155,316,155)
LIG(304,155,304,147)
LIG(300,155,304,155)
VLG   nmos nmos(drain,source,gate);
FSYM
SYM  #vdd
BB(335,20,345,30)
TITLE 338 26  #vdd
MODEL 1
PROP                                                                                                                                   
REC(60,-20,0,0, )
VIS 0
PIN(340,30,0.000,0.000)vdd
LIG(340,30,340,25)
LIG(340,25,335,25)
LIG(335,25,340,20)
LIG(340,20,345,25)
LIG(345,25,340,25)
FSYM
SYM  #vdd
BB(325,245,335,255)
TITLE 328 251  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(330,255,0.000,0.000)vdd
LIG(330,255,330,250)
LIG(330,250,325,250)
LIG(325,250,330,245)
LIG(330,245,335,250)
LIG(335,250,330,250)
FSYM
SYM  #vdd
BB(335,95,345,105)
TITLE 338 101  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(340,105,0.000,0.000)vdd
LIG(340,105,340,100)
LIG(340,100,335,100)
LIG(335,100,340,95)
LIG(340,95,345,100)
LIG(345,100,340,100)
FSYM
CNC(300 65)
CNC(435 180)
CNC(495 45)
CNC(320 5)
CNC(320 65)
CNC(320 160)
CNC(300 5)
CNC(300 160)
CNC(300 220)
CNC(310 35)
CNC(310 190)
CNC(310 190)
LIG(300,65,300,70)
LIG(270,65,300,65)
LIG(270,120,270,65)
LIG(435,120,270,120)
LIG(435,190,435,180)
LIG(300,220,300,225)
LIG(270,220,300,220)
LIG(270,265,270,220)
LIG(495,265,270,265)
LIG(495,35,495,45)
LIG(440,35,495,35)
LIG(450,180,435,180)
LIG(400,225,320,225)
LIG(300,0,300,5)
LIG(320,0,320,5)
LIG(320,60,320,65)
LIG(300,60,300,65)
LIG(310,90,310,105)
LIG(300,160,300,165)
LIG(435,180,435,120)
LIG(515,45,495,45)
LIG(295,-20,310,-20)
LIG(330,255,310,255)
LIG(300,155,300,160)
LIG(320,155,320,160)
LIG(320,215,320,225)
LIG(300,215,300,220)
LIG(310,245,310,255)
LIG(265,160,300,160)
LIG(495,45,495,265)
LIG(295,135,310,135)
LIG(405,5,405,65)
LIG(405,5,320,5)
LIG(320,5,320,10)
LIG(300,5,300,10)
LIG(405,65,320,65)
LIG(320,65,320,70)
LIG(320,160,400,160)
LIG(320,160,320,165)
LIG(400,160,400,225)
LIG(265,5,300,5)
LIG(340,30,340,35)
LIG(340,35,310,35)
LIG(345,190,310,190)
LIG(310,190,310,200)
LIG(310,35,310,45)
LIG(310,30,310,35)
LIG(310,185,310,190)
LIG(340,105,310,105)
FFIG D:\Code Files\DSCH\SR_latch.sch
