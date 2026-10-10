
## The Product Rule

If we divide by  \( \Delta x \) , we get

 \[\frac{\Delta(uv)}{\Delta x}=u\frac{\Delta v}{\Delta x}+v\frac{\Delta u}{\Delta x}+\Delta u\frac{\Delta v}{\Delta x}\] 

If we now let  \( \Delta x \rightarrow 0 \) , we get the derivative of uv:

 \[\begin{aligned}\frac{d}{dx}\left(uv\right)&=\lim_{\Delta x\rightarrow0}\frac{\Delta(uv)}{\Delta x}=\lim_{\Delta x\rightarrow0}\left(u\frac{\Delta v}{\Delta x}+v\frac{\Delta u}{\Delta x}+\Delta u\frac{\Delta v}{\Delta x}\right)\\&=u\lim_{\Delta x\rightarrow0}\frac{\Delta v}{\Delta x}+v\lim_{\Delta x\rightarrow0}\frac{\Delta u}{\Delta x}+\left(\lim_{\Delta x\rightarrow0}\Delta u\right)\left(\lim_{\Delta x\rightarrow0}\frac{\Delta v}{\Delta x}\right)\\&=u\frac{dv}{dx}+v\frac{du}{dx}+0\cdot\frac{dv}{dx}\end{aligned}\]