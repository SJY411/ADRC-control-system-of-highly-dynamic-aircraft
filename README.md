# ADRC control system  

本项目对于**高动态飞行器过载控制**系统，提出了基于**角速度/角加速度反馈**的自动驾驶仪设计方案，并设计了**自抗扰控制**系统及其稳定性分析方法。具体包括以下几点：  

For the control accuracy and stability of the high dynamic aircraft overload control system, the autopilot design scheme based on angular acceleration feedback is proposed, and the Active Disturbance Rejection Control (ADRC) system and its stability analysis method are designed.

* 1.设计了基于角速度和角加速度反馈的PI两回路控制系统方案。
<p align="center"> 
  
![image](https://github.com/SJY411/-ADRC-control-system-/blob/main/img/Body%20Coordinate%20System%20and%20Velocity%20Coordinate%20System%20of%20High%20Dynamic%20Aircraft.png)
图1 高动态飞行器的机体坐标系和速度坐标系
Fig.1 Body Coordinate System and Velocity Coordinate System of High Dynamic Aircraft
</p> 

根据高动态飞行器运动和动力学模型，以纵向通道为例设计了两种反馈控制回路，一种是角速度反馈，另一种是角加速度回路。这两种回路均采用过载控制（过载控制是指通过直接测量和控制机体横向过载及其变化率，以操纵其飞行轨迹并按照预定的弹道飞行），且用PI控制。具体原理如图所示：  

<p align="center"> 
  
![image](https://github.com/SJY411/-ADRC-control-system-/blob/main/img/%E8%A7%92%E9%80%9F%E5%BA%A6%E6%8E%A7%E5%88%B6%E5%9B%9E%E8%B7%AF%E6%A1%86%E5%9B%BE.png)    
图2 角速度控制回路  
Fig.2 Angular velocity control loop  

![image](https://github.com/SJY411/-ADRC-control-system-/blob/main/img/%E8%A7%92%E5%8A%A0%E9%80%9F%E5%BA%A6%E6%8E%A7%E5%88%B6%E5%9B%9E%E8%B7%AF%E6%A1%86%E5%9B%BE.png)  
图3 角加速度控制回路  
Fig.3 Angular acceleration control loop  

![image](https://github.com/SJY411/-ADRC-control-system-/blob/main/img/%E8%A7%92%E9%80%9F%E5%BA%A6%E8%A7%92%E5%8A%A0%E9%80%9F%E5%BA%A6PI%E6%8E%A7%E5%88%B6%E5%9B%9E%E8%B7%AF.png)  
图4 simulink中的两种回路对比  
Fig.4 two loops in simulink  
</p> 

该部分见ang_acc_control文件。

* 2.基于角加速度反馈设计了自抗扰过载控制方法，并对系统稳定性进行了频域分析。  
关于自抗扰控制（ADRC）建议参考Gao Zhiqiang．Scaling and bandwidth-parameterization based controller turning.  本项目中以高志强老师的LADRC方法为基础，设计了高动态飞行器角加速度反馈的自抗扰控制方法。如下图所示：  

<p align="center"> 
  
![image](https://github.com/SJY411/-ADRC-control-system-/blob/main/img/%E8%87%AA%E6%8A%97%E6%89%B0%E6%8E%A7%E5%88%B6%E7%B3%BB%E7%BB%9F%E7%AE%80%E5%8C%96%E5%8E%9F%E7%90%86%E5%9B%BE.png)  
图4 自抗扰控制系统简化原理示意图  
Fig.4 Simplified schematic diagram of active disturbance rejection control system  
![image](https://github.com/SJY411/-ADRC-control-system-/blob/main/img/%E8%A7%92%E5%8A%A0%E9%80%9F%E5%BA%A6%E5%8F%8D%E9%A6%88%E8%87%AA%E6%8A%97%E6%89%B0%E8%BF%87%E8%BD%BD%E6%8E%A7%E5%88%B6%E5%8E%9F%E7%90%86%E5%9B%BE.png)  
图5 角加速度反馈自抗扰过载控制原理图  
Fig.5 Schematic diagram of angular acceleration feedback active disturbance rejection overload control  
</p>

见ADRC_acc_control文件。  

* 结论：  
经过仿真校验及稳定性理论分析，得到结论如下：  
(1)传统的带PI校正的过载控制回路中，**角加速度反馈**的控制方案相比角速度反馈，具有更好的跟踪性能和稳定性；  
(2)在高动态飞行器过载控制系统中加入自抗扰控制器，可对模型的不确定性及干扰进行补偿，明显**提高**了系统的稳定性能；  
(3)在控制系统参数变化时，自抗扰控制系统的稳定性几乎不受影响，表明其对模型的不确定性有较强的容错率，**相比传统PI控制回路拥有更好的鲁棒性**。  

分析过程不在此处赘述，以上具体参数、模型细节、理论推导均在论文《基于角加速度反馈的自抗扰过载控制系统设计》中，参考网址：[alt](http://www.dhykz.com/CN/10.3969/j.issn.1674-5558.2023.02.013)  

Loading…
