%% Title:Control System-Second Order System: p,i,d OPEN
%Author:Ravikumar M Pise
%PS No:99003747
%Date:7/04/2021
%Version:1.0

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
