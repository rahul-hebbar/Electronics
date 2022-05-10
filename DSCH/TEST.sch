DSCH3
VERSION 08-11-2021 15:09:01
BB(10,-10,149,30)
SYM  #nmos
BB(25,5,45,25)
TITLE 40 10  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(26,10,19,15,r)
VIS 2
PIN(45,25,0.000,0.000)s
PIN(25,15,0.000,0.000)g
PIN(45,5,0.030,0.070)d
LIG(35,15,25,15)
LIG(35,21,35,9)
LIG(37,21,37,9)
LIG(45,9,37,9)
LIG(45,5,45,9)
LIG(45,21,37,21)
LIG(45,25,45,21)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(75,5,95,25)
TITLE 90 10  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(76,10,19,15,r)
VIS 2
PIN(95,25,0.000,0.000)s
PIN(75,15,0.000,0.000)g
PIN(95,5,0.030,0.070)d
LIG(85,15,75,15)
LIG(85,21,85,9)
LIG(87,21,87,9)
LIG(95,9,87,9)
LIG(95,5,95,9)
LIG(95,21,87,21)
LIG(95,25,95,21)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #nmos
BB(125,5,145,25)
TITLE 140 10  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(126,10,19,15,r)
VIS 2
PIN(145,25,0.000,0.000)s
PIN(125,15,0.000,0.000)g
PIN(145,5,0.030,0.070)d
LIG(135,15,125,15)
LIG(135,21,135,9)
LIG(137,21,137,9)
LIG(145,9,137,9)
LIG(145,5,145,9)
LIG(145,21,137,21)
LIG(145,25,145,21)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #vdd
BB(50,20,60,30)
TITLE 53 26  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(55,30,0.000,0.000)vdd
LIG(55,30,55,25)
LIG(55,25,50,25)
LIG(50,25,55,20)
LIG(55,20,60,25)
LIG(60,25,55,25)
FSYM
SYM  #vdd
BB(115,5,125,15)
TITLE 118 11  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(120,15,0.000,0.000)vdd
LIG(120,15,120,10)
LIG(120,10,115,10)
LIG(115,10,120,5)
LIG(120,5,125,10)
LIG(125,10,120,10)
FSYM
SYM  #vdd
BB(65,5,75,15)
TITLE 68 11  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(70,15,0.000,0.000)vdd
LIG(70,15,70,10)
LIG(70,10,65,10)
LIG(65,10,70,5)
LIG(70,5,75,10)
LIG(75,10,70,10)
FSYM
SYM  #vdd
BB(10,5,20,15)
TITLE 13 11  #vdd
MODEL 1
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(15,15,0.000,0.000)vdd
LIG(15,15,15,10)
LIG(15,10,10,10)
LIG(10,10,15,5)
LIG(15,5,20,10)
LIG(20,10,15,10)
FSYM
SYM  #light
BB(143,-10,149,4)
TITLE 145 4  #light1
MODEL 49
PROP                                                                                                                                   
REC(144,-9,4,4,r)
VIS 1
PIN(145,5,0.000,0.000)out1
LIG(148,-4,148,-9)
LIG(148,-9,147,-10)
LIG(144,-9,144,-4)
LIG(147,1,147,-2)
LIG(146,1,149,1)
LIG(146,3,148,1)
LIG(147,3,149,1)
LIG(143,-2,149,-2)
LIG(145,-2,145,5)
LIG(143,-4,143,-2)
LIG(149,-4,143,-4)
LIG(149,-2,149,-4)
LIG(145,-10,144,-9)
LIG(147,-10,145,-10)
FSYM
LIG(95,5,95,-5)
LIG(95,25,145,25)
LIG(45,-5,45,5)
LIG(45,-5,95,-5)
LIG(15,15,25,15)
LIG(70,15,75,15)
LIG(120,15,125,15)
LIG(55,30,45,30)
LIG(45,25,45,30)
FFIG D:\Code Files\DSCH\TEST.sch
