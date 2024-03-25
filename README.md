# -ADRC-control-system-
本项目对于高动态飞行器过载控制系统，提出了基于角加速度反馈的自动驾驶仪设计方案，并设计了自抗扰控制系统及其稳定性分析方法。具体包括以下几点：
1.设计了基于角速度和角加速度反馈的PI两回路控制系统方案。见PD_ang_acc_control文件。

图1 高动态飞行器的机体坐标系和速度坐标系
Fig.1 Body Coordinate System and Velocity Coordinate System of High Dynamic Aircraft

根据高动态飞行器运动和动力学模型，以纵向通道为例设计了两种反馈控制回路，一种是角速度反馈，另一种是角加速度回路。这两种回路均采用过载控制（过载控制是指通过直接测量和控制机体横向过载及其变化率，以操纵其飞行轨迹并按照预定的弹道飞行），且用PI控制。具体原理如图所示：

图2 角速度控制回路
Fig.2 Angular velocity control loop

图3 角加速度控制回路
Fig.3 Angular acceleration control loop

图4 simulink中的两种回路对比
Fig.4 two loops in simulink


2.基于角加速度反馈设计了自抗扰过载控制方法，并对系统稳定性进行了频域分析。见ADRC_acc_control文件。
关于自抗扰控制（ADRC）建议参考Gao Zhiqiang．Scaling and bandwidth-parameterization based controller turning.  本项目中以高志强老师的LADRC方法为基础，设计了高动态飞行器角加速度反馈的自抗扰控制方法。如下图所示：

图4 自抗扰控制系统简化原理示意图
Fig.4 Simplified schematic diagram of active disturbance rejection control system

图5 角加速度反馈自抗扰过载控制原理图
Fig.5 Schematic diagram of angular acceleration feedback active disturbance rejection overload control

结论：
经过仿真校验及稳定性理论分析，得到结论如下：
(1)传统的带PI校正的过载控制回路中，角加速度反馈的控制方案相比角速度反馈，具有更好的跟踪性能和稳定性；
(2)在高动态飞行器过载控制系统中加入自抗扰控制器，可对模型的不确定性及干扰进行补偿，明显提高了系统的稳定性能；
(3)在控制系统参数变化时，自抗扰控制系统的稳定性几乎不受影响，表明其对模型的不确定性有较强的容错率，相比传统PI控制回路拥有更好的鲁棒性。

分析过程不在此处赘述，以上具体参数、模型细节、理论推导均在论文《基于角加速度反馈的自抗扰过载控制系统设计》中，参考网址：http://www.dhykz.com/CN/10.3969/j.issn.1674-5558.2023.02.013

For the control accuracy and stability of the high dynamic aircraft overload control system, the autopilot design scheme based on angular acceleration feedback is proposed, and the Active Disturbance Rejection Control (ADRC) system and its stability analysis method are designed.
1.
