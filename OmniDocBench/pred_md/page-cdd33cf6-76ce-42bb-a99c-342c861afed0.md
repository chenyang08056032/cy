
万能公式： \( \left\{\begin{aligned}\sin x&=\frac{\sin x}{1}=\frac{2\sin\frac{x}{2}\cos\frac{x}{2}}{\sin^{2}\frac{x}{2}+\cos^{2}\frac{x}{2}}=\frac{2\tan\frac{x}{2}}{1+\tan^{2}\frac{x}{2}}\\ \cos x&=\frac{\cos x}{1}=\frac{\cos^{2}\frac{x}{2}-\sin^{2}\frac{x}{2}}{\cos^{2}\frac{x}{2}+\sin^{2}\frac{x}{2}}=\frac{1-\tan^{2}\frac{x}{2}}{1+\tan^{2}\frac{x}{2}}\\ \tan x&=\frac{2\tan\frac{x}{2}}{1-\tan^{2}\frac{x}{2}}\end{aligned}\right. \) 

4. 含三角的分式，如果异名，还可考虑万能公式：

比如：求  \( f(x)=\frac{1+\sin x}{2-3\cos x}(x\in\mathbb{R}) \)  的值域：

 \[\begin{cases}
(1)\text{令}\tan\frac{x}{2}=t\Rightarrow\left\{\begin{aligned}&\sin x=\frac{2t}{1+t^{2}}\\ &\cos x=\frac{1-t^{2}}{1+t^{2}}\neq\frac{2}{3}\end{aligned}\right.\Rightarrow\frac{1-\sin x}{2-3\cos x}=\frac{1-\frac{2t}{1+t^{2}}}{\frac{2-3\cdot\frac{1-t^{2}}{1+t^{2}}}{1+t^{2}}}=\frac{1+\frac{2}{t}-2\frac{t}{t}}{t^{2}-1}\left(\frac{5t}{t}\neq1\right)\\
(2)\text{令}\frac{1+t^{2}-2t}{5t^{2}-1}=y\Rightarrow\left\{\begin{aligned}&(5y-1)t^{2}+2t-y-1=0\\&\text{判别式法}\end{aligned}\right.\\
\Rightarrow\left\{\begin{aligned}&5y-1=0\text{时},t=\frac{3}{5}\text{符合题意}\\&5y-1\neq0\text{时},\Delta=4+4(5y-1)(y+1)\geq0\end{aligned}\right.\Rightarrow y\geq0\text{或}y\leq\frac{4}{5}\end{cases}\] 

5. 类似  \( f(x)=2\sin x+\sin 2x \)  这种结构，也可万能公式后求导处理；

例题 1.（重庆·高考真题）函数  \( f(x)=\frac{\sin x}{\sqrt{5+4\cos x}} \)  （ \( 0 \leq x \leq 2\pi \) ）的值域是（）
A.  \( \left[-\frac{1}{4},\frac{1}{4}\right] \)  B.  \( \left[-\frac{1}{3},\frac{1}{3}\right] \)  C.  \( \left[-\frac{1}{2},\frac{1}{2}\right] \)  D.  \( \left[-\frac{2}{3},\frac{2}{3}\right] \) 

例题 2.（全国·高考真题）已知函数  \( f(x)=2\sin x+\sin 2x \)  ，则  \( f(x) \)  的最小值是 ___.