
We now test (80) against  \( G' \left( \frac{(\theta f)_{\varepsilon_1}}{\theta + \varepsilon_2} \right) \) , and integrate in time:

 \[\begin{align*}&=\int_{\Omega\times\mathbb{R}^{n}\times\{t\}}G\left(\frac{(\theta f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}\right)\varphi\mathrm{d}v\mathrm{d}x-\int_{\Omega\times\mathbb{R}^{n}\times\{0\}}G\left(\frac{(\theta f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}\right)\varphi\mathrm{d}v\mathrm{d}x-\int_{0}^{t}\int_{\Omega\times\mathbb{R}^{n}\times\{t\}}G\left(\frac{(\theta f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}\right)\partial_{t}\varphi\mathrm{d}v\mathrm{d}x\mathrm{d}s\\&=-\int_{0}^{t}\int_{\Omega\times\mathbb{R}^{n}}\frac{(\theta v\cdot\nabla_{x} f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}G^{\prime}\left(\frac{(\theta f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}\right)\varphi\mathrm{d}v\mathrm{d}x\mathrm{d}s+\int_{0}^{t}\int_{\Omega\times\mathbb{R}^{n}}\frac{(\theta_{\mathrm{S}\rho}\Delta_{v} f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}G^{\prime}\left(\frac{(\theta f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}\right)\varphi\mathrm{d}v\mathrm{d}x\mathrm{d}s\\&\quad+\int_{0}^{t}\int_{\Omega\times\mathbb{R}^{n}}\frac{\nabla_{v}\cdot(\theta_{\mathrm{S}\rho}v f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}G^{\prime}\left(\frac{(\theta f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}\right)\varphi\mathrm{d}v\mathrm{d}x\mathrm{d}s-\int_{0}^{t}\int_{\Omega\times\mathbb{R}^{n}}\frac{\nabla_{v}\cdot(\theta w_{\rho}f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}G^{\prime}\left(\frac{(\theta f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}\right)\varphi\mathrm{d}v\mathrm{d}x\mathrm{d}s\\&\quad+\int_{0}^{t}\int_{\Omega\times\mathbb{R}^{n}}\left[\frac{(f\partial_{t}\theta)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}-\frac{(\theta f)_{\varepsilon_{1}}\partial_{t}\theta}{[\theta+\varepsilon_{2}]^{2}}\right]G^{\prime}\left(\frac{(\theta f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}\right)\varphi\mathrm{d}v\mathrm{d}x\mathrm{d}s:=-I+II+III-IV+V.\end{align*}\] 

Let us note that  \( \theta \)  satisfies the mollified continuity equation

 \[\partial_{t}\theta=-(w\rho)*\nabla\chi_{r_{0}},\] 

and so,

(81)

 \[\|\partial_{t}\theta\|_{\infty}\lesssim\|u\|_{L_{\rho}^{2}}\lesssim C.\] 

In what follows we will be taking consecutive limits as  \( \varepsilon_{1} \rightarrow 0 \)  and then  \( \varepsilon_{2} \rightarrow 0 \) .

The left hand side converges to its natural limit since G is smooth and  \( \frac{(\theta f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}} \to \frac{\theta f}{\theta+\varepsilon_{2}} \to f \)  pointwise almost everywhere. So, we obtain

 \[\int_{\Omega\times\mathbb{R}^{n}\times\{t\}}G(f)\varphi\mathrm{d}v\mathrm{d}x-\int_{\Omega\times\mathbb{R}^{n}\times\{0\}}G(f)\varphi\mathrm{d}v\mathrm{d}x-\int_{0}^{t}\int_{\Omega\times\mathbb{R}^{n}\times\{t\}}G(f)\partial_{t}\varphi\mathrm{d}v\mathrm{d}x\mathrm{d}s.\] 

LIMIT OF I. Let us go back to I. Integrating by parts we have

 \[\begin{align*}I=-\int_{0}^{t}\int_{\Omega\times\mathbb{R}^{n}}\frac{(fv\cdot\nabla\theta)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}G^{\prime}\left(\frac{(\theta f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}\right)\varphi\mathrm{d}v\mathrm{d}x\mathrm{d}s\\+\int_{0}^{t}\int_{\Omega\times\mathbb{R}^{n}}\frac{(fv\theta)*\nabla_{x}\chi_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}G^{\prime}\left(\frac{(\theta f)_{\varepsilon_{1}}}{\theta+\varepsilon_{2}}\right)\varphi\mathrm{d}v\mathrm{d}x\mathrm{d}s:=I_{1}+I_{2}.\end{align*}\] 

For the limit of  \( I_{1} \) , we have  \( fv \cdot \nabla\theta \in L^{1} \) , so,  \( (fv \cdot \nabla\theta)_{\varepsilon_{1}} \to fv \cdot \nabla\theta \)  in  \( L^{1} \) , while  \( G'\left(\frac{(\theta f)_{\varepsilon_{1}}}{\theta + \varepsilon_{2}}\right) \to G'\left(\frac{\theta f}{\theta + \varepsilon_{2}}\right) \)  a.e. and is uniformly bounded. Consequently, by dominated convergence,

(82)

 \[I_{1}\rightarrow-\int_{0}^{t}\int_{\Omega\times\mathbb{R}^{n}}\frac{f v\cdot\nabla\theta}{\theta+\varepsilon_{2}}G^{\prime}\left(\frac{\theta f}{\theta+\varepsilon_{2}}\right)\varphi\mathrm{d}v\mathrm{d}x\mathrm{d}s.\] 

We will leave it at that for now, and turn to  \( I_{2} \) . Observe

 \[\begin{align*}(fv\theta)*\nabla_{x}\chi_{\varepsilon_{1}}&=\int_{\Omega\times\mathbb{R}^{n}}f(y,w)w\theta(y)\nabla_{x}\chi_{\varepsilon_{1}}(x-y,v-w)\mathrm{d}w\mathrm{d}y\\&=\int_{\Omega\times\mathbb{R}^{n}}f(y,w)(w-v)\theta(y)\nabla_{x}\chi_{\varepsilon_{1}}(x-y,v-w)\mathrm{d}w\mathrm{d}y+v\cdot\nabla_{x}(f\theta)_{\varepsilon_{1}}\end{align*}\] 

using that  \( w\nabla_{x}\chi_{\varepsilon_{1}}(\cdot,w) \)  is odd in w, we can insert  \( f(y,v) \) ,

(83)

 \[\begin{align*}(fv\theta)*\nabla_{x}\chi_{\varepsilon_{1}}&=\int_{\Omega\times\mathbb{R}^{n}}[f(y,w)-f(y,v)](w-\theta(y)\nabla_{x}\chi_{\varepsilon_{1}}(x-y,v-w)\mathrm{d}w\mathrm{d}y+v\cdot\nabla_{x}(f\theta)_{\varepsilon_{1}}\\&=\int_{0}^{1}\int_{\Omega\times\mathbb{R}^{n}}\theta(x-y)\nabla_{v} f(x-y,v+\theta w)\otimes w\nabla_{x}\chi_{\varepsilon_{1}}(y,w)\mathrm{d}w\mathrm{d}y\mathrm{d}\theta+v\cdot\nabla_{x}(\theta f)_{\varepsilon_{1}}.\end{align*}\]