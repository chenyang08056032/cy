
For  \( \beta_{1}^{\prime} \) , with (S.17) we have with probability at least  \( 1 - O(n^{-10}) \) 

 \[\begin{align*}\beta_{1}^{\prime}&=\left\|\mathbf{R}^{*\top}\left(\mathbf{U}\mathbf{U}^{\top}\mathbf{U}^{*}-\mathbf{U}^{*}\right)\right\|_{2,\infty}\\&\leq\sigma_{1}^{*}\left\|\mathbf{V}^{*}\right\|_{2,\infty}\left\|\mathbf{U}^{*\top}\mathbf{U}\mathbf{U}^{\top}\mathbf{U}^{*}-\mathbf{I}_{K}\right\|\lesssim\frac{\kappa^{*}\sigma^{2}\left(MN+J\right)}{\sigma_{K}^{*}}\left\|\mathbf{V}^{*}\right\|_{2,\infty}.\end{align*}\] 

For  \( \beta_{2}^{\prime} \) , introducing the "leave-one-block-out" alternative  \( \mathbf{U}^{(j)} \)  yields that

 \[\begin{align*}\beta_{2}^{\prime}&=\max_{j\in[J]}\left\|\mathbf{E}_{:,j}^{\top}\left(\mathbf{U}\mathbf{U}^{\top}\mathbf{U}^{*}-\mathbf{U}^{*}\right)\right\|_{2}\\&\leq\underbrace{\max_{j\in[J]}\left\|\mathbf{E}_{:,j}^{\top}\left(\mathbf{U}^{(j)}\mathbf{U}^{(j)\top}\mathbf{U}^{*}-\mathbf{U}^{*}\right)\right\|}_{{\gamma}_{1}^{\prime}}+\underbrace{\max_{j\in[J]}\left\|\mathbf{E}_{:,j}^{\top}\left(\mathbf{U}\mathbf{U}^{\top}\mathbf{U}^{*}-\mathbf{U}^{(j)}\mathbf{U}^{(j)\top}\mathbf{U}^{*}\right)\right\|}_{{\gamma}_{2}^{\prime}}.\end{align*}\] 

Upper bounding  \( \gamma_{1}^{\prime} \)  in (S.34). Utilizing Lemma S.4, one has at least  \( 1 - O(d^{-11}) \)  that,

 \[\begin{align*}\gamma_{1}^{\prime}&\leq\sigma\sqrt{\log d}\max_{j\in[J]}\left\|\mathbf{U}^{(j)}\mathbf{U}^{(j)\top}\mathbf{U}^{*}-\mathbf{U}^{*}\right\|_{F}+B\log d\max_{j\in[J]}\left\|\mathbf{U}^{(j)}\mathbf{U}^{(j)\top}\mathbf{U}^{*}-\mathbf{U}^{*}\right\|_{2,\infty}\\&\leq\sigma\sqrt{\log d}\|\mathbf{U}\mathbf{U}^{\top}\mathbf{U}^{*}-\mathbf{U}^{*}\|_{F}+\sigma\sqrt{\log d}\max_{j\in[J]}\|\mathbf{U}^{(j)}\mathbf{U}^{(j)\top}\mathbf{U}^{*}-\mathbf{U}\mathbf{U}^{\top}\mathbf{U}^{*}\|_{F}\\&\quad+B\log d\|\mathbf{U}\mathbf{U}^{\top}\mathbf{U}^{*}-\mathbf{U}^{*}\|_{2,\infty}+B\log d\max_{j\in[J]}\|\mathbf{U}^{(j)}\mathbf{U}^{(j)\top}\mathbf{U}^{*}-\mathbf{U}\mathbf{U}^{\top}\mathbf{U}^{*}\|_{2,\infty}\\&\leq\sigma\sqrt{\log d}\left\|\mathbf{U}\mathbf{U}^{\top}\mathbf{U}^{*}-\mathbf{U}^{*}\right\|_{F}+B\log d\left\|\mathbf{U}\mathbf{U}^{\top}\mathbf{U}^{*}-\mathbf{U}^{*}\right\|_{2,\infty}\\&\quad+\left(\sigma\sqrt{\log d}+B\log d\right)\max_{j\in[J]}\left\|\mathbf{U}^{(j)}\mathbf{U}^{(j)\top}-\mathbf{U}\mathbf{U}^{\top}\right\|_{F}\\&\lesssim\sigma\sqrt{\log d}\left\|\mathbf{U}\mathbf{U}^{\top}\mathbf{U}^{*}-\mathbf{U}^{*}\right\|_{F}+B\log d\left\|\mathbf{U}\mathbf{U}^{\top}\mathbf{U}^{*}-\mathbf{U}^{*}\right\|_{2,\infty}\\&\quad+B\log d\left\|\mathbf{U}^{(j)}\mathbf{U}^{(j)\top}-\mathbf{U}\mathbf{U}^{\top}\right\|_{F},\end{align*}\] 

where the last line holds since  \( \sigma\sqrt{\log d} \ll B \log d \) .

To bound  \( \max_{j\in[J]}\left\|\mathbf{U}^{(j)}\mathbf{U}^{(j)\top}-\mathbf{U}\mathbf{U}^{\top}\right\|_{F} \)  in the RHS above, we apply Wedin's theorem with (S.31) and obtain

 \[\begin{align*}&\max\left\{\left\|\mathbf{U}\mathbf{U}^{\top}-\mathbf{U}^{(j)}\mathbf{U}^{(j)\top}\right\|_{F},\left\|\mathbf{V}\mathbf{V}^{\top}-\mathbf{V}^{(j)}\mathbf{V}^{(j)\top}\right\|_{F}\right\}\\ \lesssim&\frac{\max\left\{\left\|\mathcal{P}_{:,S_{l_{j}}}(\mathbf{E})^{\top}\mathbf{U}^{(j)}\right\|_{F},\left\|\mathcal{P}_{:,S_{l_{j}}}(\mathbf{E})\mathbf{V}^{(j)}\right\|_{F}\right\}}{\sigma_{K}^{*}}.\end{align*}\]