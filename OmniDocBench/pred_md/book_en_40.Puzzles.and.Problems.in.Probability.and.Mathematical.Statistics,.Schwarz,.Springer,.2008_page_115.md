
The last two expectations in this expression are known from the basic result about E[U] so that the only really new part concerns the expectation of the product UV. Now, by the definition of U, V

 \[\mathbf{U}\mathbf{V}=\exp(\mathbf{X})\cdot\exp(\mathbf{Y})\;=\;\exp(\mathbf{X}+\mathbf{Y})\] 

Let the rv  \( S = X + Y \) . Clearly, S is normally distributed, with mean  \( \mu_{s} = \mu_{x} + \mu_{y} \)  and variance  \( \sigma_{s}^{2} = \sigma_{x}^{2} + \sigma_{y}^{2} + 2\rho\sigma_{x}\sigma_{y} \) . It then follows from the basic result about E[U] that

 \[\begin{aligned}\mathbf{E}[\mathbf{U}\mathbf{V}]&=\mathbf{E}[\exp(\mathbf{S})]\\&=\exp\left(\mu_{s}+\frac{1}{2}\sigma_{s}^{2}\right)\end{aligned}\] 

Putting together this result — with  \( \mu_{s}, \sigma_{s} \)  expressed in terms of the original parameters as earlier — and the previously known facts about the means and variances of U, V, the correlation coefficient is, after slight simplification, found to be

 \[\mathrm{c o r r}(\mathbf{U},\mathbf{V})=\frac{\exp(\varrho\sigma_{x}\sigma_{y})-1}{\sqrt{\left[\exp(\sigma_{x}^{2})-1\right]\left[\exp(\sigma_{y}^{2})-1\right]}}\] 

Note that the correlation between U and V is completely independent of the means of X and Y. As explained earlier, the exponentiation turns the location parameters  \( \mu_{x}, \mu_{y} \)  of X and Y into scaling factors of U and V. Because variations of the scaling factors generally do not change linear correlations, the result was to be expected. On the other hand, the standard deviations  \( \sigma_{x}, \sigma_{y} \)  of X and Y turn into powers for U and V, which generally do influence the linear correlation coefficient.

The result about the correlation of U and V may also be used to verify the properties we already discussed in part c. Note, in particular, that in the equal-variance case  \( \sigma_{x} = \sigma_{y} = \sigma \)  we get

 \[\mathrm{c o r r}(\mathbf{U},\mathbf{V})=\frac{\exp(\varrho\sigma^{2})-1}{\exp(\sigma^{2})-1}\] 

The correlation of U and V is shown in Figure 3.25 as a function of the correlation  \( \varrho \)  of the original rvs X and Y, for three values of  \( \sigma \) . For  \( \varrho = +1 \) , the two correlations are identical, but for any other value the correlation between U and V is weaker than that between X and Y.