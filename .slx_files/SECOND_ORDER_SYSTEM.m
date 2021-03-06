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




%% Control System-Second Order System:varying zeta value open system
% This Document has equation for Second Order System
%w=1

jeta=1;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
figure
subplot(2,3,1)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)

jeta=0.7;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
%hold on
subplot(2,3,2)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)

jeta=1.5;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
subplot(2,3,3)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)

jeta=-1;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
subplot(2,3,4)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)


jeta=-0.5;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
subplot(2,3,5)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)

jeta=-1.5;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
subplot(2,3,6)
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)

figure
jeta=0;
TF=tf([1],[1,(2*jeta),1])
sys = tf([1],[1,(2*jeta),1])
S = stepinfo(sys)
[z,p,k]= tf2zp([1],[1,(2*jeta),1])
zplane(z,p)


%% Analysis
% To get stable system zeta value should be greater than zero

% if zeta value is between 0 to 1-->poles are conjugate

% if zeta is greater than 1-->poles are real stable

% if zeta is less then 1 -->Poles are real and unstable



%% This Document has movement of poles for Second Order System


zeros = 0;
poles = [-10+20i -10-20i];
gain = 1;
sys = zpk(zeros,poles,gain)
hold on
pzmap(sys)
   

zeros = 0;
poles = [-10+10i -10-10i];
gain = 1;
sys = zpk(zeros,poles,gain)
pzmap(sys)


zeros = 0;
poles = [-5+20i -5-20i];
gain = 1;
sys = zpk(zeros,poles,gain)
pzmap(sys)


zeros = 0;
poles = [-5+10i -5-10i];
gain = 1;
sys = zpk(zeros,poles,gain)
pzmap(sys)

%% Analysis

% 1.when the pole is moving lef overshoot decreses,Frequency increses
% 2.zeta value is gettting incresed,means damping is less,systemwill be stable

% In Vertical Shifting
% 1.Overshoot increases,damping decreases

% diagonal Shifting
% Overshoot,Damping will be same
% Frequency Increases


%% This Document has movement of poles for Second Order System



zeros = 0;
poles = [-10 -5];
gain = 1;
sys = zpk(zeros,poles,gain)
hold on
pzmap(sys)
   

zeros = 0;
poles = [-9+5i -5+5i];
gain = 1;
sys = zpk(zeros,poles,gain)
hold on
pzmap(sys)


zeros = 0;
poles = [-15+2i -20+2i];
gain = 1;
sys = zpk(zeros,poles,gain)
hold on
pzmap(sys)

zeros = 0;
poles = [-15-2i -20-2i];
gain = 1;
sys = zpk(zeros,poles,gain)
hold on
pzmap(sys)

zeros = 0;
poles = [-15-2i -20-2i];
gain = 1;
sys = zpk(zeros,poles,gain)
hold on
pzmap(sys)



%% Negtaive Feedback

J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=10
sys = CF*TF
NCTF1=feedback(sys,1)
subplot(3,2,1)
step(NCTF1)
title("Step with negative")
subplot(3,2,2)
impulse(NCTF1)
title("impulse with negative")
S = stepinfo(NCTF1)
[wn,zeta]=damp(NCTF1)



J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=tf([1,0],[1])
sys = CF*TF
NCTF2=feedback(sys,1)
subplot(3,2,3)
step(NCTF2)
title("Step with diff")
subplot(3,2,4)
impulse(NCTF2)
title("impulse with diff")
S = stepinfo(NCTF2)
[wn,zeta]=damp(NCTF2)




J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=tf([1],[1,0])
sys = CF*TF
NCTF3=feedback(sys,1)
subplot(3,2,5)
step(NCTF3)
title("Step with integrator")
subplot(3,2,6)
impulse(NCTF3)
title("impulse with integrator")
S = stepinfo(NCTF3)
[wn,zeta]=damp(NCTF3)


%% Positive Feedback
figure
J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=10
sys = CF*TF
PCTF1=feedback(sys,-1)
subplot(3,2,1)
step(PCTF1)
title("Step with positive")
subplot(3,2,2)
impulse(PCTF1)
title("impulse with positive")
S = stepinfo(PCTF1)
[wn,zeta]=damp(PCTF1)



J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=tf([1,0],[1])
sys = CF*TF
PCTF2=feedback(sys,-1)
subplot(3,2,3)
step(PCTF2)
title("Step with diff")
subplot(3,2,4)
impulse(PCTF2)
title("impulse with diff")
S = stepinfo(PCTF2)
[wn,zeta]=damp(PCTF2)




J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=tf([1],[1,0])
sys = CF*TF
PCTF3=feedback(sys,-1)
subplot(3,2,5)
step(PCTF3)
title("Step with integrator")
subplot(3,2,6)
impulse(PCTF3)
title("impulse with integrator")
S = stepinfo(PCTF3)
[wn,zeta]=damp(PCTF3)




%%
figure
hold on
pzmap(NCTF1)
pzmap(NCTF2)
pzmap(NCTF3)
pzmap(PCTF1)
pzmap(PCTF2)
pzmap(PCTF3)


%% Analysis
% by adding positive feedback with integrator damping will be less,so the system will be stable

% Overshooot is infinity,in differentiator closed loop, system is unstable



J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=1;
sys1 = CF*TF;
subplot(4,2,1)
step(sys1)
title("Step ")
subplot(4,2,2)
impulse(sys1)
title("Impulse")
S = stepinfo(sys1);
[wn,zeta]=damp(sys1)
p1=pole(sys1)
z1=zero(sys1)


J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=10;
sys2 = CF*TF;
subplot(4,2,3)
step(sys2)
title("Step with gain")
subplot(4,2,4)
impulse(sys2)
title("impulse with gain")
S = stepinfo(sys2)
[wn,zeta]=damp(sys2)
p2=pole(sys2)
z2=zero(sys2)



J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=tf([1,0],[1]);
sys3 = CF*TF;
subplot(4,2,5)
step(sys3)
title("Step with zero ")
subplot(4,2,6)
impulse(sys3)
title("impulse with zero ")
S = stepinfo(sys3)
[wn,zeta]=damp(sys3)
p3=pole(sys3)
z3=zero(sys3)




J = 0.01;
b = 0.1;
K = 1;
R = 1;
L = 0.5;
TF=tf([K/(J*L)],[1,((b/J)+(R/L)),(((K*K)+(R*b))/(L*J))]);
CF=tf([1],[1,0]);
sys4 = CF*TF;
subplot(4,2,7)
step(sys4)
title("Step with pole ")
subplot(4,2,8)
impulse(sys4)
title("impulse with pole ")
S = stepinfo(sys4)
[wn,zeta]=damp(sys4)
p4=pole(sys4)
z4=zero(sys4)

%%
figure
hold on
pzmap(sys1)
pzmap(sys2)
pzmap(sys3)
pzmap(sys4)


%% Analysis
% without gain-->Complex conjugate poles

% when we add differentiator,with different constant values,the Transfer function is settling at zero in step response

% Poles are getting changed when we change constant values

% Pole Location is not getting changed irrespective of controller taken into consederation
 
% By adding defferential controller,IVT changes from 0 to some value.
% FVT remains same for impulse response.
% by adding integrator in step response the system is not settling.

