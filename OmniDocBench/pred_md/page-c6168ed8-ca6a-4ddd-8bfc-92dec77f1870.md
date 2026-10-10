
 \[\begin{align*}\sigma_{*}(\mathbf{E})&\leq\sup_{\|\mathbf{w}\|=1}\|\mathbb{E}[\mathbf{E}\mathbf{w}\mathbf{w}^{\top}\mathbf{E}^{\top}]\|^{\frac{1}{2}}\leq\max_{i\in[N]}\sup_{\|\mathbf{w}\|=1}\|\mathbb{E}[\mathbf{E}_{i,:}\mathbf{w}\mathbf{w}^{\top}\mathbf{E}_{i,:}^{\top}]\|^{\frac{1}{2}}\leq\widetilde{\sigma},\\R(\mathbf{E})&=\left\|\max_{i\in[N],l\in[L]}\|\mathbf{E}_{i,S_{l}}\|\right\|_{\infty}\leq\sqrt{M}B.\end{align*}\] 

Then the first inequality in Lemma S.5 follows by plugging these conditions into Proposition 1 with  \( t = c \log d \)  with a sufficiently large constant c.

Similarly, for the second and third inequalities we use

 \[\begin{align*}\sigma(\mathbf{E}_{i,:})&=\max\{\|\mathbb{E}[\mathbf{E}_{i,:}^{\top}\mathbf{E}_{i,:}]\|^{\frac{1}{2}},\|\mathbb{E}[\mathbf{E}_{i,:}\mathbf{E}_{i,:}^{\top}]\|^{\frac{1}{2}}\}\leq\max\{\sigma\sqrt{J},\widetilde{\sigma}\}=\sigma\sqrt{J},\\v(\mathbf{E}_{i,:})&=\|\mathrm{Cov}(\mathbf{E}_{i,:})\|^{\frac{1}{2}}\leq\widetilde{\sigma},\qquad\sigma_{*}(\mathbf{E}_{i,:})\leq\widetilde{\sigma},\qquad R(\mathbf{E}_{i,:})\leq\sqrt{M}B,\end{align*}\] 

and

 \[\begin{align*}\sigma(\mathbf{E}_{:,j})&=\max\{\|\mathbb{E}[\mathbf{E}_{:,j}^{\top}\mathbf{E}_{:,j}]\|^{\frac{1}{2}},\|\mathbb{E}[\mathbf{E}_{:,j}\mathbf{E}_{:,j}^{\top}]\|^{\frac{1}{2}}\}\leq\sigma\sqrt{N},\\v(\mathbf{E}_{:,j})&\leq\sigma,\qquad\sigma_{*}(\mathbf{E}_{:,j})\leq\sigma,\qquad R(\mathbf{E}_{:,j})\leq B.\end{align*}\] 

Furthermore, for the fourth and fifth inequalities,

 \[\begin{align*}\sigma(\mathbf{E}\mathbf{V}^{*})=\max\Big\{\|\mathbb{E}[\mathbf{E}\mathbf{V}^{*}\mathbf{V}^{*\top}\mathbf{E}^{\top}]\|^{\frac{1}{2}},\|\mathbb{E}[\mathbf{V}^{*\top}\mathbf{E}^{\top}\mathbf{E}\mathbf{V}^{*}]\|^{\frac{1}{2}}\Big\}\leq\widetilde{\sigma}\sqrt{N},\\v(\mathbf{E}\mathbf{V}^{*})\leq\widetilde{\sigma},\qquad\sigma_{*}(\mathbf{E}\mathbf{V}^{*})\leq\sigma_{*}(\mathbf{E})\stackrel{\mathrm{(S.13)}}{\leq}\widetilde{\sigma},\end{align*}\] 

and with  \( MK \lesssim ML \asymp J \)  we have

 \[\begin{align*}\|\mathbb{E}[\mathbf{E}^{\top}\mathbf{U}^{*}\mathbf{U}^{*}\mathbf{E}]\|&=\max_{l\in[L]}\|\mathbb{E}[\mathbf{E}_{:,S_{l}}^{\top}\mathbf{U}^{*}\mathbf{U}^{*}\mathbf{E}_{:,S_{l}}]\|\leq\max_{l\in[L]}\mathbb{E}[\mathbf{E}_{:,S_{l}}^{\top}\mathbf{U}^{*}\mathbf{U}^{*}\mathbf{E}_{:,S_{l}}]\\&=M\max_{j\in[J]}\mathbb{E}[\mathbf{E}_{:,j}^{\top}\mathbf{U}^{*}\mathbf{U}^{*\top}\mathbf{E}_{:,j}]\leq M\sigma^{2}\|\mathbf{U}^{*}\|_{F}^{2}=MK\sigma^{2},\\\|\mathbb{E}[\mathbf{U}^{*\top}\mathbf{E}\mathbf{E}^{\top}\mathbf{U}^{*}]\|&\leq\|\mathbb{E}[\mathbf{E}\mathbf{E}^{\top}]\|\leq\sigma^{2}J,\\\sigma(\mathbf{E}^{\top}\mathbf{U}^{*})&\leq\sigma\sqrt{J}+\sigma\sqrt{MK},\\R(\mathbf{E}^{\top}\mathbf{U}^{*})&=\left\|\max_{l\in[N],l\in[L]}\|\mathbf{E}_{i,S_{l}}^{\top}\mathbf{U}_{i,:}^{*}\|\right\|_{\infty}\leq\sqrt{M}B\|\mathbf{U}^{*}\|_{2,\infty},\\v(\mathbf{E}^{\top}\mathbf{U}^{*})&\leq\max_{l\in[L]}\left\|\mathbb{E}[\mathbf{E}_{:,S_{l}}^{\top}\mathbf{U}^{*}\mathbf{U}^{*\top}\mathbf{E}_{:,S_{l}}]\right\|^{\frac{1}{2}}\leq\sqrt{MK}\sigma,\\\sigma_{*}(\mathbf{U}^{*\top}\mathbf{E})^{2}&\leq\sigma_{*}(\mathbf{E})^{2}\stackrel{\mathrm{(S.13)}}{\leq}\widetilde{\sigma}^{2}\leq M\sigma^{2}.\end{align*}\]