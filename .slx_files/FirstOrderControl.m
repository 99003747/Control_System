%% Title:Control System-First Order System: System analysis by changing gain
%Author:Ravikumar M Pise
%PS No:99003747
%Date:7/04/2021
%Version:R2020b

%% This Document has equation for motion differential system
%Equation:v=u+(dv/dt)T

%% Math analysis
%dependent variables:v
%independent variables:t
%constant:T
%Root:1/T

%% Changing the gain of system 
%gain is 1 
T1=40;
Tau=T1;
TF1=tf([0,-1],[T1,-1]);
T_R=4*Tau;
subplot(3,3,1),plot(impulse(TF1))
title("Impulse1")
subplot(3,3,2),plot(step(TF1))
title("Step1")
S = stepinfo(TF1);
p1=pole(TF1)
z1=zero(TF1)

%% gain is 0.1
T1=40;
Tau=1/T1;
CF=0.1;
TF2=CF*tf([0,-1],[T1,-1]);
T_R=4*Tau;
subplot(3,3,3),plot(impulse(TF2))
title("Impulse2")
subplot(3,3,4),plot(step(TF2))
title("Step2")
S = stepinfo(TF2);

%gain is 10
T1=40;
Tau=1/T1;
CF=10;
TF3=CF*tf([0,-1],[T1,-1]);
T_R=4*Tau;
subplot(3,3,5),plot(impulse(TF3))
title("Impulse3")
subplot(3,3,6),plot(step(TF3))
title("Step3")
S = stepinfo(TF3);

%gain is 100
T1=40;
CF=100;
TF4=CF*tf([0,-1],[T1,-1]);
T_R=4*Tau;
subplot(3,3,7),plot(impulse(TF4))
title("Impulse4")
subplot(3,3,8),plot(step(TF4))
title("Step4")
S = stepinfo(TF4);

%% Analysis:
%   On changing the gain of the transfer function:
%  Justification:
%  The system is unstable whether the gain is increasing or decreasing because the pole location is at right half of S Plane 

%% Change the control function
figure
% system with proportion
T1=40;
CF=0.1;
TF5=CF*tf([0,-1],[T1,-1]);
T_R=4*Tau;
subplot(3,2,1),plot(impulse(TF5))
title("Impulse1")
subplot(3,2,2),plot(step(TF5))
title("Step1")
S = stepinfo(TF5)

% system with differentiator
T1=40;
CF=tf([1,0],[1]);
TF6=CF*tf([0,-1],[T1,-1]);
T_R=4*Tau;
subplot(3,2,3),plot(impulse(TF6))
title("Impulse with zero")
subplot(3,2,4),plot(step(TF6))
title("Step with zero")
S = stepinfo(TF6)

% system with integrator
T1=40;
CF=tf([0,1],[1,0]);
TF7=CF*tf([0,-1],[T1,-1]);
T_R=4*Tau;
subplot(3,2,5),plot(impulse(TF7))
title("Impulse with pole")
subplot(3,2,6),plot(step(TF7))
title("Step with pole")
S = stepinfo(TF7)

%poles printing
figure
subplot(3,1,1)
pzmap(TF5)
subplot(3,1,2)
pzmap(TF6)
subplot(3,1,3)
pzmap(TF7)

%% Analysis:
%1. Proportional: 1 pole
%2. Differentiator:1 pole 1 zero
%3. Integrator: 2 poles