%% Title:Control System-First Order System: System analysis by changing gain
%Author:Ravikumar M Pise
%PS No:99003747
%Date:07/04/2021
%Version:R2020b

 

%% This Document has equation for motion differential system
%Equation:v=u+dv/dt(T)

 

%% Math analysis
%dependent variables:v
%independent variables:t,u
%constant:m,b
%Root:-b/m

 

%% Changing the gain
m1=1000;
b1=5;
Tau=m1/b1;
CF=10;
TF=CF*tf([0,1/b1],[Tau,1]);
%S = stepinfo(TF)
NCTF1=feedback(TF,1);
subplot(4,2,1),plot(impulse(NCTF1))
title("Impulse with Negative Feedback")
subplot(4,2,2),plot(step(NCTF1))
title("Step with Negative Feedback")
%S = stepinfo(TF)
p1=pole(NCTF1)

 

m1=1000;
b1=5;
Tau=m1/b1;
CF=tf([0,1],[1,0]);
TF=CF*tf([0,1/b1],[Tau,1]);
NCTF2=feedback(TF,1);
subplot(4,2,3),plot(impulse(NCTF2))
title("Impulse with integrator")
subplot(4,2,4),plot(step(NCTF2))
title("Step with integrator")
p2=pole(NCTF2)
z2=zero(NCTF2)

 

m1=1000;
b1=5;
Tau=m1/b1;
CF=tf([1,0],[1]);
TF=CF*tf([0,1/b1],[Tau,1]);
T_R=4*Tau;
NCTF3=feedback(TF,1);
T_R=4*Tau;
subplot(4,2,5),plot(impulse(NCTF3))
title("Impulse with diff")
subplot(4,2,6),plot(step(NCTF3))
title("Step with diff")
p3=pole(NCTF3)

 

 

%% Positive  feedback 
figure
m1=1000;
b1=5;
Tau=m1/b1;
CF=10;
TF=CF*tf([0,1/b1],[Tau,1]);
%S = stepinfo(TF)
PCTF1=feedback(TF,-1);
subplot(3,2,1),plot(impulse(PCTF1))
title("Impulse with Positive feedback")
subplot(3,2,2),plot(step(PCTF1))
title("Step with Positive feedback")
%S = stepinfo(TF)
p4=pole(PCTF1)

 

m1=1000;
b1=5;
Tau=m1/b1;
CF=tf([0,1],[1,0]);
TF=CF*tf([0,1/b1],[Tau,1]);
PCTF2=feedback(TF,-1);
subplot(3,2,3),plot(impulse(PCTF2))
title("Impulse with integrator")
subplot(3,2,4),plot(step(PCTF2))
title("Step with integrator")
p5=pole(PCTF2)

 


m1=1000;
b1=5;
Tau=m1/b1;
CF=tf([1,0],[1]);
TF=CF*tf([0,1/b1],[Tau,1]);
T_R=4*Tau;
PCTF3=feedback(TF,-1);
T_R=4*Tau;
subplot(3,2,5),plot(impulse(PCTF3))
title("Impulse with diff")
subplot(3,2,6),plot(step(PCTF3))
title("Step with diff")
p6=pole(PCTF3)
z2=zero(PCTF3)