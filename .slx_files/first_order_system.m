
M= 1000;
B=5;
sys = tf([1/B],[M/B,1])
figure

 


subplot(3,3,1)
step(sys)
subplot(3,3,4)
impulse(sys)

 


S = stepinfo(sys)

 


M2= 1000;
B2=100;
sys2 = tf([1/B2],[M2/B2,1])

 

 


subplot(3,3,2)
step(sys2)
subplot(3,3,5)
impulse(sys2)

 


S = stepinfo(sys2)

 


M3= 2000;
B3=20;
sys3 = tf([1/B3],[M3/B3,1])
hold on
subplot(3,3,3)
step(sys3)
subplot(3,3,6)
impulse(sys3)

 


S = stepinfo(sys3)

 


hold on

 


subplot(3,3,7)
xlim([-2,2])
[z,p,k]= tf2zp([1/M],[B/M,1])
zplane(z,p)

 


hold on

 


subplot(3,3,8)
[z2,p2,k2]= tf2zp([1/M2],[B2/M2,1])
zplane(z2,p2)

 


hold on
subplot(3,3,9)
[z3,p3,k3]= tf2zp([1/M3],[B3/M3,1])
zplane(z3,p3)
hold off