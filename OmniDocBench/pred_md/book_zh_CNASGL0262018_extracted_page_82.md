
- EUT 与频谱分析仪之间的链路 S 参数 0.724(m)，损耗 2.8dB(d) 则

 \[u_{ 电 - 功 分 器 }=\frac{0.7\times0.099\times100}{\sqrt{2}\times11.5}=0.426dB\] 

 \[u_{ 功分器 - 衰减网络 }=\frac{0.099\times0.333\times100}{\sqrt{2}\times11.5}=0.203dB\] 

 \[u_{ 衰减网络 - 频谱仪 }=\frac{0.333\times0.091\times100}{\sqrt{2}\times11.5}=0.186dB\] 

 \[u_{ 电 - 衰减网络 }=\frac{0.7\times0.333\times0.912\times0.912\times100}{\sqrt{2}\times11.5}=1.192dB\] 

 \[u_{ 功分器 - 频谱仪 }=\frac{0.099\times0.333\times0.794\times0.794\times100}{\sqrt{2}\times11.5}=0.128dB\] 

 \[u_{ 电 - 频谱仪 }=\frac{0.7\times0.091\times0.724\times0.724\times100}{\sqrt{2}\times11.5}=0.205dB\] 

则  \( u(\partial\mathcal{P}_{M})=\sqrt{0.426^{2}+0.203^{2}+0.186^{2}+1.192^{2}+0.128^{2}+0.205^{2}}=1.318dB \) 

## 5.5.3.5 被测样供电电压变化引入的不确定度分量  \( u(\delta P_{v}) \) 

在测试期间，实验室供电电压可控范围为 0.1V，根据 ETSI TR 100 028 表 F.1 - 均值 10%(p)/V

- 标准差 3%(p)/V

 \[u(\delta\mathcal{P}_{T})=\frac{0.1V\times\sqrt{\left(10\%/V\right)^{2}+\left(3\%/V\right)^{2}}}{\sqrt{3}\times23.0}=0.026dB\] 

## 5.5.3.6 时间周期变化引入的不确定度分量  \( u(\delta P_{D}) \) 

根据 ETSI TR 100 028 表 F.1，时间周期误差为 2%(d)(p)(σ)

 \[u(\delta\mathcal{P}_{D})=\frac{2\%}{23.0}=0.087dB\] 

## 5.5.4 不确定度概算

表 5–10 传导杂散发射测量不确定度概算表

<table><tr><td>分量</td><td>概率分布</td><td>灵敏系数</td><td>不确定度分量值（dB）</td></tr></table>