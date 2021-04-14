clc
clear all
C1=743; 
T=1; 
tau =0.2;
M=1500; 
Ca=1.19; 
v=30;
s=tf('s')
sys=tf([C1/M*T],[1,2*Ca*v/M]);
sys2=tf([1],[1,1/T]);
sys3=tf([1],[1,1/tau]); 
sysf=sys2*sys3*sys
Gc=(s+.03)/(s+.04); 
lead=sysf*Gc
p=pole(sysf)
p1=pole(lead)
z=zero(sysf)
z1=zero(lead)
figure
pzmap(lead) 
figure
step(lead)
stepinfo(lead)
figure(1)
rlocus(sysf)
figure(2)
rlocus(lead);

figure(3)
Gcloseloop=sysf*Gc/(1+sysf*Gc)
step(lead)
figure(4)
step(sys)
figure(5)
Gcloseloop=sysf*Gc/(1+sysf*Gc);
step(sysf/(1+sysf));
hold on
step(Gcloseloop);
legend('closeloop response without any controller','closeloop response with Lag compensator');
 
 

 
% %PID controller
% 
%  
% Kp= 0.6833;
% 
%  
% D =0;
%  
% I=tf([0.057],[1,0]);
% 
%  
% PID=Kp+D+I;
% 
%  
% sys4=PID*sysf
% 
%  
% figure
% 
%  
% pzmap(sys4)
% 
%  
% figure
% 
%  
% step(sys4)
% 
%  
% stepinfo(sys4)
% 
%  
% P=pole(sys4)