%% Title:Control System-First Order System
%Author:Ravikumar M Pise
%PS No:99003747
%Date:7/04/2021
%Version:1.0

 


%% This Document has equation for motion differential system
%Equation:mdv/dt+bv=u

 

%% Math analysis
%dependent variables:v
%independent variables:t,u
%constant:m,b
%Root:-b/m
%% IVT
%for impulse is 1/m=0.02
%for step is 0
%%FVT
%for impulse is 0;
%for step is 1/b=2.4

 


m=50;
b=0.4;
Tau=m/b;
Transfer_Function=tf([0,1/b],[Tau,1])

 


%% IVT
%for impulse is 1/m=0.0025
%for step is 0
%%FVT
%for impulse is 0;
%for step is 1/b=0.033

 


m1=400;
b1=30;
Tau=m1/b1
TF=tf([0,1/b1],[Tau,1])
subplot(2,3,1),plot(impulse(TF))
title("Impulse1")
subplot(2,3,2),plot(step(TF))
title("Step1")

 

%% IVT
%for impulse is 1/m=0.00166
%for step is 0
%%FVT
%for impulse is 0;
%for step is 1/b=0.02

 

 

m2=600;
b2=50;
Tau=m2/b2
TF=tf([0,1/b2],[Tau,1])
subplot(2,3,3),plot(impulse(TF))
title("Impulse2")
subplot(2,3,4),plot(step(TF))
title("Step2")

 


%% IVT
%for impulse is 1/m=0.00125
%for step is 0
%%FVT
%for impulse is 0;
%for step is 1/b=0.025

 

 

m3=800;
b3=40;
Tau=m3/b3;
TF=tf([0,1/b3],[Tau,1])
subplot(2,3,5),plot(impulse(TF))
title("Impulse3")
subplot(2,3,6),plot(step(TF))
title("Step3")
 

 

%% Tool analysis (SAS)
% Rise time
%T1=29.33
%T2=26.41
%T3=44
%Hence System 2 is Speed
% Settling time
%S1=53.33
%S2=48.01
%S3=80
%Hence System 2 is Accurate
% Pole position
%P1=0.075
%P2=0.0833
%P3=0.05