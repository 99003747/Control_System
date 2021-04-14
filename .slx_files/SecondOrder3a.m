%% Title:Control System-Second Order System
%Author:Ravikumar M Pise
%PS No:99003747
%Date:7/04/2021
%Version:1.3


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
