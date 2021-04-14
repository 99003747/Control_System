%% Title:Control System-First Order System: adding P,I,D controllers 
%Author:Ravikumar M Pise
%PS No:99003747
%Date:8/04/2021
%Version:1.4

%% This Document has equation for motion differential system
%Equation:v=u+(dv/dt)T

%% Math analysis
%dependent variables:v
%independent variables:t
%constant:T
%Root:1/T

%% Negative feedback
T1=40;
Tau=1/T1;
CF=10;
TF=CF*tf([0,-1/T1],[1,-Tau]);
%S = stepinfo(TF)
NCTF1=feedback(TF,1);
subplot(3,2,1),plot(impulse(NCTF1))
title("Impulse with Negative Feedback")
subplot(3,2,2),plot(step(NCTF1))
title("Step with Negative Feedback")
S1 = stepinfo(NCTF1)
p1=pole(NCTF1)

T1=40;
Tau=1/T1;
CF=tf([0,1],[1,0]);
TF=CF*tf([0,-1/T1],[1,-Tau]);
NCTF2=feedback(TF,1);
subplot(3,2,3),plot(impulse(NCTF2))
title("Impulse with integrator")
subplot(3,2,4),plot(step(NCTF2))
title("Step with integrator")
S2 = stepinfo(NCTF2)
p2=pole(NCTF2)
z2=zero(NCTF2)

%%
T1=40;
Tau=1/T1;
CF=tf([1,0],[1]);
TF=CF*tf([0,-1/T1],[1,-Tau]);
T_R=4*Tau;
NCTF3=feedback(TF,1);
T_R=4*Tau;
subplot(3,2,5),plot(impulse(NCTF3))
title("Impulse with diff")
subplot(3,2,6),plot(step(NCTF3))
title("Step with diff")
p3=pole(NCTF3)
z3=zero(NCTF3)
S3 = stepinfo(NCTF3)

%%Analysis:
%  1.System is becomming stable when Positive feedback is added with 
%   proportional controller
%   Because the pole is shifting from Right half of S plane to Left Part of 
%   S Plane.
%   

%% Positive  feedback 
figure
T1=40;
Tau=1/T1;
CF=10;
TF=CF*tf([0,-1/T1],[1,-Tau]);
%S = stepinfo(TF)
PCTF1=feedback(TF,-1);
subplot(3,2,1),plot(impulse(PCTF1))
title("Impulse with Positive feedback")
subplot(3,2,2),plot(step(PCTF1))
title("Step with Positive feedback")
S = stepinfo(PCTF1)
p4=pole(PCTF1)
pzmap(PCTF1)
%%
T1=40;
Tau=1/T1;
CF=tf([0,1],[1,0]);
TF=CF*tf([0,-1/T1],[1,-Tau]);
PCTF2=feedback(TF,-1);
subplot(3,2,3),plot(impulse(PCTF2))
title("Impulse with integrator")
subplot(3,2,4),plot(step(PCTF2))
title("Step with integrator")
p5=pole(PCTF2)
S = stepinfo(PCTF2)

T1=40;
Tau=1/T1;
CF=tf([1,0],[1]);
TF=CF*tf([0,-1/T1],[1,-Tau]);
T_R=4*Tau;
PCTF3=feedback(TF,-1);
T_R=4*Tau;
subplot(3,2,5),plot(impulse(PCTF3))
title("Impulse with diff")
subplot(3,2,6),plot(step(PCTF3))
title("Step with diff")
p6=pole(PCTF3)
z2=zero(PCTF3)
S = stepinfo(PCTF3)

%%Analysis:
%1. on adding differentiator to positive feedback system, system is
%   becoming stable and poles got shifted to left side
%2. The system is unstable in case of positive feedback with gain
%   and integrator
%3. As the system is unstable in case of gain and integrator we are not
%   getting parameters, also the peak is infinite



%%
figure
hold on
pzmap(NCTF1)
pzmap(NCTF2)
pzmap(NCTF3)
pzmap(PCTF1)
pzmap(PCTF2)
pzmap(PCTF3)
