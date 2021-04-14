%% Title:Control System-Second Order System
%Author:Ravikumar M Pise
%PS No:99003747
%Date:7/04/2021
%Version:1.0


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
by adding positive feedback with integrator damping will be less,so the system will be stable

Overshooot is infinity,in differentiator closed loop, system is unstable
