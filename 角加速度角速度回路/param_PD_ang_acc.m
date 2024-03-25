%% simulation parameters for PID Control of acceleration autopilot in Simulink%
%不同高动态飞行器的具体参数，用于测试

%% 林福德.战术导弹自动驾驶仪设计与制导率分析 P60参数
% a1=1.5
% a2=250 %静稳定弹体250 静不稳定弹体-250 静中立弹体0
% a3=280
% a4=1.6
% Km=-a3*a4/(a1*a4+a2)
% Tc=1/sqrt(-(a1*a4+a2))
% Ac=(a4-a1)/(2*sqrt(-(a1*a4+a2)))
% T1c=1/a4;
% V=914.4;
% g=9.81;
% b=V*Km/(g*Tc^2*57.3)
% g2=2*Ac/Tc
% g1=1/Tc^2
% kp=0.0009
% ki=1/0.15
% kd=0.14
% kg=0.14
%% 论文《飞行器制导与控制系统优化设计及弹道仿真》P25参数1
% Km=-10.1167
% Tc=2.5960
% T1c=0.3279
% Ac=4.1351
% V=300
% g=9.81;
% b=V*Km/(g*Tc^2*57.3)
% g2=2*Ac/Tc
% g1=1/Tc^2
% kd=-42.3497
% kp=-264.3467
% ki=-850.1324
% kg=kd
%% 论文《飞行器制导与控制系统优化设计及弹道仿真》P25参数2
a1=-2.074
a2=-41.54 %静稳定弹体41.54 静不稳定弹体-41.54 静中立弹体0
a3=-60.64
a4=0.947
Km=-a3*a4/(a1*a4+a2)
Tc=1/sqrt(-(a1*a4+a2))
Ac=(a4-a1)/(2*sqrt(-(a1*a4+a2)))
T1c=1/a4
V=300;
g=9.81;
b=V*Km/(g*Tc^2*57.3)
g2=2*Ac/Tc
g1=1/Tc^2
kd=-1.3464
kp=-9.3402
ki=-12.2204
kg=kd
simOut = sim('PD_ang_acc_control');