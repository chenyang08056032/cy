
 \[P_{x}=\frac{w}{t}\qquad w=\frac{n}{N}\times3.6\times10^{6} 瓦秒\] 

 \( P_{x} \)  ——被测功率 W;

w——电度表累积测得电能；

N——电度表每千瓦时盘转动数；

n——电度表的转数 转；

i——测量时间 s

## 3 方差与传播系数

 \[u^{2}(P_{x})=\left(\frac{\partial f}{\partial w}\right)^{2}u^{2}(w)+\left(\frac{\partial f}{\partial t}\right)^{2}u^{2}(t)=c^{2}(w)\mu^{2}(w)+c^{2}(t)\mu^{2}(t)\] 

 \[c(w)=\frac{1}{t}\quad c(t)=-\frac{w}{t^{2}}\] 

 \[u^{2}(P_{x})=\frac{1}{t^{2}}u^{2}(w)+\frac{w^{2}}{t^{4}}u^{2}(t)\] 

 \[\left(\frac{u(P_{x})}{P_{x}}\right)^{2}=\frac{u^{2}(w)}{w^{2}}+\frac{u^{2}(t)}{t^{2}}\] 

本不确定度分析以榨汁机为例

## 4 标准不确定度一览表

表 4-1

标准不确定度一览表

<table><tr><td>标准不确定度分量  \( u_{i} \)</td><td>不确定度来源</td><td>标准不确定度值</td><td>\( c_{i} = \partial f / \partial x_{i} \)</td><td>\( |c_{i}| \times u(x_{i}) \)</td><td>自由度</td></tr><tr><td>\( u_{1} \)</td><td>重复性误差</td><td>0.2%</td><td>1</td><td>0.2%</td><td>2</td></tr><tr><td>\( u_{2} \)</td><td>表头示值误差</td><td>0.29%</td><td>1</td><td>0.29%</td><td>50</td></tr><tr><td>\( u_{3} \)</td><td>电子秒表误差</td><td>0.02%</td><td>1</td><td>0.02%</td><td>8</td></tr><tr><td colspan="6">\( u_{c}(P_{x}) = 0.35\% \)</td></tr><tr><td colspan="6">\( v_{eff} = 16 \)</td></tr></table>