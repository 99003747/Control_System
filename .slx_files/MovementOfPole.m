 %% Title:Control System-Second Order System: Horizontal shifting
%Author:Ravikumar M Pise
%PS No:99003747
%Date:7/04/2021
%Version:1.5

%%
% First set of poles
zeros = 0;
poles = [-10+20i -10-20i];
gain = 1;
sys1 = zpk(zeros,poles,gain);
hold on
pzmap(sys1)
[wn,zeta]=damp(sys1)
   
% Second set of poles
zeros = 0;
poles = [-20+20i -20-20i];
gain = 1;
sys2 = zpk(zeros,poles,gain);
hold on
pzmap(sys2)
[wn,zeta]=damp(sys2)

% Third set of poles
zeros = 0;
poles = [-5+20i -5-20i];
gain = 1;
sys3 = zpk(zeros,poles,gain);
pzmap(sys3)
[wn,zeta]=damp(sys3)

%% Analysis:

T1=40;
Tau=1/T1;
CF1=10;
CF2=tf([0,1],[1,0]);
CF3=tf([1,0],[1]);
TF=CF1*CF2*CF3*tf([0,-1/T1],[1,-Tau]);
NCTF2=feedback(TF,1);
subplot(3,2,3),plot(impulse(NCTF2))
title("Impulse with integrator")
subplot(3,2,4),plot(step(NCTF2))
title("Step with integrator")
S2 = stepinfo(NCTF2)
p2=pole(NCTF2)
z2=zero(NCTF2)



