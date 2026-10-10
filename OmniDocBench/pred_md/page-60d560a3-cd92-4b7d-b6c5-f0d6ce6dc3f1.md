
Since \(E > 4\bar{n}\), we have \(x + v \geqslant E/4\), and hence, from the above,

 \[|I|E\lesssim\int_{I}(\mathrm{x}+\mathrm{v})\mathrm{d}t\lesssim\sum_{i}|I|^{\delta_{i}^{\prime}}E^{\delta_{i}^{\prime}},\] 

which finishes the proof.

This finishes the proof of Theorem 5.1.

## 6. APPENDIX: INTERPOLATION IN WEIGHTED SOBOLEV SPACES

For any any \(p\in\mathbb{N}\) we denote for short \(\partial_{x}^{p}f=(\partial_{x_{1}}^{p}f,\ldots,\partial_{x_{n}}^{p}f)\), and \(\left|\partial_{x}^{p}f\right|^{2}=\sum_{i}\left|\partial_{x_{i}}^{p}f\right|^{2}\). Similar notation will be used in \(v\)-variable. It is clear that \(\left|\partial_{x}^{p}f\right|^{2}\) represents a linear combination of \(p\)th order derivatives.

Let us first note the following simple interpolation inequality: for \(k,l \geqslant 0\) and \(K,L > 0\) such that \(\frac{k}{K} + \frac{l}{L} < 1\) and any \(\left|\mathbf{k}\right| = k\), \(\left|\mathbf{l}\right| = l\), we have

 \[\int_{\Omega\times\mathbb{R}^{n}}|\partial_{x}^{k}\partial_{v}^{l}f|^{2}\mathrm{d}v\mathrm{d}x\leqslant\left(\int_{\Omega\times\mathbb{R}^{n}}|\partial_{x}^{K}f|^{2}\mathrm{d}v\mathrm{d}x\right)^{\frac{k}{K}}\left(\int_{\Omega\times\mathbb{R}^{n}}|\partial_{v}^{L}f|^{2}\mathrm{d}v\mathrm{d}x\right)^{\frac{l}{L}}\left(\int_{\Omega\times\mathbb{R}^{n}}|f|^{2}\mathrm{d}v\mathrm{d}x\right)^{1-\frac{k}{K}-\frac{l}{L}}.\] 

Indeed, denoting by  \( d\xi \)  the counting measure over  \( Z^{n} \) ,

 \[\begin{align*}\int_{\Omega\times\mathbb{R}^{n}}|\partial_{x}^{k}\partial_{v}^{l}f|^{2}\mathrm{d}v\mathrm{d}x&=\int_{\mathbb{Z}^{n}\times\mathbb{R}^{n}}\Pi_{i=1}^{n}|\xi_{i}|^{2k_{i}}|\eta_{i}|^{2l_{i}}|\hat{f}|^{2}\mathrm{d}\eta\mathrm{d}\xi\leqslant\int_{\mathbb{Z}^{n}\times\mathbb{R}^{n}}|\xi|^{2k}|\eta|^{2l}|\hat{f}|^{2}\mathrm{d}\eta\mathrm{d}\xi\\&\leqslant\int_{\mathbb{Z}^{n}\times\mathbb{R}^{n}}|\xi|^{2k}|\hat{f}|^{2k/K}|\eta|^{2l}|\hat{f}|^{2l/|L|}|\hat{f}|^{2(1-k/K-l/K)}\mathrm{d}\eta\mathrm{d}\xi\\&\leqslant\left(\int_{\mathbb{Z}^{n}\times\mathbb{R}^{n}}|\xi|^{2K}|\hat{f}|^{2}\mathrm{d}\eta\mathrm{d}\xi\right)^{\frac{k}{K}}\left(\int_{\mathbb{Z}^{n}\times\mathbb{R}^{n}}|\eta|^{2L}|\hat{f}|^{2}\mathrm{d}\eta\mathrm{d}\xi\right)^{\frac{l}{L}}\left(\int_{\mathbb{Z}^{n}\times\mathbb{R}^{n}}|f|^{2}\mathrm{d}\eta\mathrm{d}\xi\right)^{1-\frac{k}{K}-\frac{l}{L}}\\&\lesssim\left(\sum_{i}\int_{\mathbb{Z}^{n}\times\mathbb{R}^{n}}|\xi_{i}|^{2K}|\hat{f}|^{2}\mathrm{d}\eta\mathrm{d}\xi\right)^{\frac{k}{K}}\left(\sum_{i}\int_{\mathbb{Z}^{n}\times\mathbb{R}^{n}}|\eta_{i}|^{2L}|\hat{f}|^{2}\mathrm{d}\eta\mathrm{d}\xi\right)^{\frac{l}{L}}\\&\quad\times\left(\int_{\mathbb{Z}^{n}\times\mathbb{R}^{n}}|f|^{2}\mathrm{d}\eta\mathrm{d}\xi\right)^{1-\frac{k}{K}-\frac{l}{L}}\\&=\left(\int_{\Omega\times\mathbb{R}^{n}}|\partial_{x}^{K}f|^{2}\mathrm{d}v\mathrm{d}x\right)^{\frac{k}{K}}\left(\int_{\Omega\times\mathbb{R}^{n}}|\partial_{v}^{L}f|^{2}\mathrm{d}v\mathrm{d}x\right)^{\frac{l}{L}}\left(\int_{\Omega\times\mathbb{R}^{n}}|f|^{2}\mathrm{d}v\mathrm{d}x\right)^{1-\frac{k}{K}-\frac{l}{L}}.\end{align*}\] 

When a weight is involved that depends only on  \( v, \omega = \omega(v) \) , then the above interpolation extends trivially in the case when k = 0 by application of (131) in x-variable only, and the Hölder inequality in v:

(132)

 \[\begin{align*}\int_{\Omega\times\mathbb{R}^{n}}|\partial_{x}^{k} f|^{2}\omega\mathrm{d}v\mathrm{d}x&\leqslant\int_{\mathbb{R}^{n}}\left(\int_{\Omega}|\partial_{x}^{K} f|^{2}\mathrm{d}x\right)^{\frac{k}{K}}\left(\int_{\Omega}|f|^{2}\mathrm{d}x\right)^{1-\frac{k}{K}}\omega\mathrm{d}v\\&\leqslant\left(\int_{\Omega\times\mathbb{R}^{n}}|\partial_{x}^{K} f|^{2}\omega\mathrm{d}v\mathrm{d}x\right)^{\frac{k}{K}}\left(\int_{\Omega\times\mathbb{R}^{n}}|f|^{2}\omega\mathrm{d}v\mathrm{d}x\right)^{1-\frac{k}{K}}.\end{align*}\] 

It is clear that the above inequalities extend to any fractional k, K as well if we replace the derivatives with Fourier multipliers  \( D_{x}^{k}f \)  with symbol  \( |\xi|^{k} \) . In fact the computations above already use that symbol even for integer order derivatives. It is important to keep in mind though that if k is integer, then since  \( \omega \)  is not involved in Fourier transform, we have

 \[\int_{\Omega\times\mathbb{R}^{n}}|D_{x}^{k}f|^{2}\omega\mathrm{d}v\mathrm{d}x\sim\int_{\Omega\times\mathbb{R}^{n}}|\partial_{x}^{k}f|^{2}\omega\mathrm{d}v\mathrm{d}x.\] 

In other words we can go back to the classical derivatives.

Lemma 6.1. Suppose  \( \omega \)  is a doubling weight,

(133)

 \[c\leqslant\frac{\omega(v^{\prime})}{\omega(v^{\prime\prime})}\leqslant C,\quad\frac{1}{2}\leqslant\frac{|v^{\prime}|}{|v^{\prime\prime}|}\leqslant2\] 

 \[\omega(v)\sim1,\quad|v|\leqslant1.\]