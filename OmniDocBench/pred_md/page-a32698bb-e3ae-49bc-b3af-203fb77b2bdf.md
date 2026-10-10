
## APPENDIX C. Proof of Lemma 3.3

Here, we provide detailed proof for Lemma 3.3. We only establish (3.17) since the other estimate can be derived through a similar argument. We write  \( B = B_{\mathfrak{M}} \)  for simplicity.

By using the Littlewood–Paley theorem, we get

 \[\begin{align*}\left\|\langle\nabla\rangle^{\alpha_{1}}D^{\alpha_{2}}B[f,g]\right\|_{L^{t_{1}}^{\prime}}^{2}\lesssim\left\|P_{\leq1}B[f,g]\right\|_{L^{t_{1}}^{\prime}}^{2}+\sum_{N>1}N^{2(\alpha_{1}+\alpha_{2})}\left\|P_{N}B[f,g]\right\|_{L^{t_{1}}^{\prime}}^{2},\end{align*}\] 

where  \( D^{\alpha_{2}} = \langle |\nabla|^{\alpha_{2}} \rangle \)  or  \( D^{\alpha_{2}} = |\nabla|^{\alpha_{2}} \) . The first term can be estimated as follows:

 \[\left\|P_{\leq1}B[f,g]\right\|_{L^{t_{1}}^{\prime}}\lesssim\left\|f\right\|_{L^{t_{2}}}\left\|g\right\|_{L^{2}}.\] 

For the second term, we observe

 \[\begin{align*}\left\|P_{N} B[f,g]\right\|_{L^{t_{1}}^{\prime}}\lesssim\left\|P_{N} B[P_{\leq\frac{N}{8}}f,g]\right\|_{L^{t_{1}}^{\prime}}+\sum_{M>\frac{N}{8}}\left\|P_{N} B[P_{M} f,g]\right\|_{L^{t_{1}}^{\prime}}.\end{align*}\] 

By using (3.16), we deduce

 \[\begin{align*}\left\|P_{N}B[P_{\leq\frac{N}{8}}f,g]\right\|_{L^{t_{1}}^{\prime}}\lesssim\left\|B[P_{\leq\frac{N}{8}}f,P_{\frac{N}{8}}<<8N g]\right\|_{L^{t_{1}}^{\prime}}\lesssim\left\|P_{\leq\frac{N}{8}}f\right\|_{L^{t_{2}}}\left\|P_{\frac{N}{8}}<<8N g\right\|_{L^{2}}\lesssim\left\|f\right\|_{L^{t_{2}}}\sum_{M\sim N}\left\|P_{M} g\right\|_{L^{2}}.\end{align*}\] 

Consequently, we arrive at

 \[\begin{align*}\sum_{N>1}N^{2(\alpha_{1}+\alpha_{2})}\|P_{N} B[P_{\leq\frac{N}{8}}f,g]\|_{L^{t_{1}}}^{2}&\lesssim\|f\|_{L^{t_{2}}}^{2}\sum_{N>1}\left(\sum_{M\sim N}N^{\alpha_{1}+\alpha_{2}}\|P_{M} g\|_{L^{2}}\right)^{2}\\&\lesssim\|f\|_{L^{t_{2}}}^{2}\sum_{M\gtrsim1}M^{2(\alpha_{1}+\alpha_{2})}\|P_{M} g\|_{L^{2}}^{2}\\&\lesssim\|f\|_{L^{t_{2}}}^{2}\|g\|_{\dot{H}^{\alpha_{1}+\alpha_{2}}}^{2}.\end{align*}\] 

Meanwhile, we find

 \[\sum_{M>\frac{N}{8}}\left\|P_{N}B[P_{M}f,g]\right\|_{L^{t_{1}}^{\prime}}\lesssim\sum_{M>\frac{N}{8}}\left\|P_{M} f\right\|_{L^{2}}\|g\|_{L^{t_{2}}}\lesssim\sum_{M>\frac{N}{8}}\frac{1}{M^{\alpha_{1}+\alpha_{2}}}\|P_{M} f\|_{\dot{H}^{\alpha_{1}+\alpha_{2}}}\|g\|_{L^{t_{2}}}\] 

due to (3.16). Then, it follows that

 \[\begin{align*}&\sum_{N>1}N^{2(\alpha_{1}+\alpha_{2})}\left(\sum_{M>\frac{N}{8}}\left\|P_{N} B[P_{M} f,g]\right\|_{L^{t_{1}}^{\prime}}\right)^{2}\\&\lesssim\sum_{N>1}\left(\sum_{M>\frac{N}{8}}\left(\frac{N}{M}\right)^{\alpha_{1}+\alpha_{2}}\left\|P_{M} f\right\|_{\dot{H}^{\alpha_{1}+\alpha_{2}}}\|g\|_{L^{t_{2}}}\right)^{2}\\&\lesssim\|g\|_{L^{t_{2}}}^{2}\sum_{N>1}\left(\sum_{M>\frac{N}{8}}\left(\frac{N}{M}\right)^{\alpha_{1}+\alpha_{2}}\sum_{M>\frac{N}{8}}\left(\frac{N}{M}\right)^{\alpha_{1}+\alpha_{2}}\left\|P_{M} f\right\|_{\dot{H}^{\alpha_{1}+\alpha_{2}}}^{2}\right)\\&\lesssim\|g\|_{L^{t_{2}}}^{2}\sum_{M>\frac{1}{8}}\sum_{1<N<8M}\left(\frac{N}{M}\right)^{\alpha_{1}+\alpha_{2}}\left\|P_{M} f\right\|_{\dot{H}^{\alpha_{1}+\alpha_{2}}}^{2}\\&\lesssim\|g\|_{L^{t_{2}}}^{2}\sum_{M>\frac{1}{8}}\|P_{M} f\|_{\dot{H}^{\alpha_{1}+\alpha_{2}}}^{2}\end{align*}\] 

by the Cauchy–Schwartz inequality and the fact that

 \[\sum_{N<8M}\left(\frac{N}{M}\right)^{\alpha_{1}+\alpha_{2}}\lesssim1.\]