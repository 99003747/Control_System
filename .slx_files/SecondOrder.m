%% Title:Control System-Second Order System:open loop with different values
%Author:Ravikumar M Pise
%PS No:99003747
%Date:7/04/2021
%Version:1.0


%% This Document has equation for DC Motor
%Equation:Ldi/dt+Ri+Kw=V
%         Jdw/dt+bw=Ki
%T(s)=(K/LJ)/(s^2+((b/J)+(R/L)s+(R*b)/(L*J)+(K*K)/(L*J)

%% Math analysis
%dependent variables:w
%independent variables:t
%constant:K,R,L,J,b
%Roots:0.5*(-(b/J)-(R/L))+sqrt((((b*b)/(J*J))+((R*R)/(L*L))-((2*R*b)/(L*J))-((4*K*K)/(L*J)))
%      0.5*(-(b/J)-(R/L))-sqrt((((b*b)/(J*J))+((R*R)/(L*L))-((2*R*b)/(L*J))-((4*K*K)/(L*J)))

%% IVT
%for impulse is 0
%for step is 0
%%FVT
%for impulse is K/((b*L)+(R*J))=0.1667
%for step is K/((R*b)+(K*K))=0.0999001

J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
%TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
sys = tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))])
subplot(3,3,1)
step(sys)
subplot(3,3,2)
impulse(sys)
subplot(3,3,3)
%S = stepinfo(sys)
[z,p,k]= tf2zp([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))])
zplane(z,p)
S = stepinfo(sys)

J = 0.1;
b = 1;
K = 0.1;
R = 10;
L = 5;
%TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
sys = tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))])
subplot(3,3,4)
step(sys)
subplot(3,3,5)
impulse(sys)
subplot(3,3,6)
%S = stepinfo(sys)
[z2,p2,k2]= tf2zp([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))])
zplane(z2,p2)
S = stepinfo(sys)

J = 0.01;
b = 0.01;
K = 0.1;
R = 0.1;
L = 0.05;
%TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
sys = tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))])
subplot(3,3,7)
step(sys)
subplot(3,3,8)
impulse(sys)
subplot(3,3,9)
%S = stepinfo(sys)
[z1,p1,k1]= tf2zp([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))])
zplane(z1,p1)
S = stepinfo(sys)

%% Analysis:
% 1.1st  response of system is accurate because settling time is less
% 2.1st  response speed is high because rise time is less
% 3.2nd response is more stable because overshoot is zero  
