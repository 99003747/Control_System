%% Title:Control System-Second Order System:varying zeta value open system
%Author:RAvikumar M Pise
%PS No:99003747
%Date:7/04/2021
%Version:1.0


%% This Document has equation for Second Order System
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