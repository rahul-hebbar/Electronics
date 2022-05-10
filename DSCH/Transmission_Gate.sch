DSCH3
VERSION 08-12-2021 09:01:20
BB(30,-10,109,60)
SYM  #nmos
BB(65,0,85,20)
TITLE 80 15  #nmos
MODEL 901
PROP   1.0u 0.12u MN                                                                                                                              
REC(65,1,15,19,r)
VIS 2
PIN(65,20,0.000,0.000)s
PIN(75,0,0.000,0.000)g
PIN(85,20,0.030,0.140)d
LIG(75,10,75,0)
LIG(69,10,81,10)
LIG(69,12,81,12)
LIG(81,20,81,12)
LIG(85,20,81,20)
LIG(69,20,69,12)
LIG(65,20,69,20)
VLG  nmos nmos(drain,source,gate);
FSYM
SYM  #inv
BB(30,40,65,60)
TITLE 45 50  #~
MODEL 101
PROP                                                                                                                                   
REC(0,0,0,0, )
VIS 0
PIN(30,50,0.000,0.000)in
PIN(65,50,0.030,0.070)out
LIG(30,50,40,50)
LIG(40,40,40,60)
LIG(40,40,55,50)
LIG(40,60,55,50)
LIG(57,50,57,50)
LIG(59,50,65,50)
VLG  not not1(out,in);
FSYM
SYM  #pmos
BB(65,25,85,45)
TITLE 70 30  #pmos
MODEL 902
PROP   2.0u 0.12u MP                                                                                                                              
REC(70,25,15,19,r)
VIS 2
PIN(65,25,0.000,0.000)s
PIN(75,45,0.000,0.000)g
PIN(85,25,0.030,0.140)d
LIG(75,45,75,39)
LIG(75,37,75,37)
LIG(81,35,69,35)
LIG(81,33,69,33)
LIG(69,25,69,33)
LIG(65,25,69,25)
LIG(81,25,81,33)
LIG(85,25,81,25)
VLG  pmos pmos(drain,source,gate);
FSYM
SYM  #button
BB(41,16,50,24)
TITLE 45 20  #button1
MODEL 59
PROP                                                                                                                                   
REC(42,17,6,6,r)
VIS 1
PIN(50,20,0.000,0.000)in1
LIG(49,20,50,20)
LIG(41,24,41,16)
LIG(49,24,41,24)
LIG(49,16,49,24)
LIG(41,16,49,16)
LIG(42,23,42,17)
LIG(48,23,42,23)
LIG(48,17,48,23)
LIG(42,17,48,17)
FSYM
SYM  #light
BB(103,10,109,24)
TITLE 105 24  #light1
MODEL 49
PROP                                                                                                                                   
REC(104,11,4,4,r)
VIS 1
PIN(105,25,0.000,0.000)out1
LIG(108,16,108,11)
LIG(108,11,107,10)
LIG(104,11,104,16)
LIG(107,21,107,18)
LIG(106,21,109,21)
LIG(106,23,108,21)
LIG(107,23,109,21)
LIG(103,18,109,18)
LIG(105,18,105,25)
LIG(103,16,103,18)
LIG(109,16,103,16)
LIG(109,18,109,16)
LIG(105,10,104,11)
LIG(107,10,105,10)
FSYM
SYM  #button
BB(56,-4,65,4)
TITLE 60 0  #en
MODEL 59
PROP                                                                                                                                   
REC(57,-3,6,6,r)
VIS 1
PIN(65,0,0.000,0.000)en
LIG(64,0,65,0)
LIG(56,4,56,-4)
LIG(64,4,56,4)
LIG(64,-4,64,4)
LIG(56,-4,64,-4)
LIG(57,3,57,-3)
LIG(63,3,57,3)
LIG(63,-3,63,3)
LIG(57,-3,63,-3)
FSYM
LIG(65,20,65,25)
LIG(85,20,85,25)
LIG(75,-10,30,-10)
LIG(75,-10,75,0)
LIG(105,25,85,25)
LIG(50,20,65,20)
LIG(75,45,70,45)
LIG(70,45,70,50)
LIG(70,50,65,50)
LIG(30,50,30,-10)
LIG(65,0,75,0)
FFIG D:\Code Files\DSCH\Transmission_Gate.sch
