
Thus  \( A_{k} \)  is positive definite. Its eigenvalues (not the same  \( \lambda_{1}! \) ) must be positive. Its determinant is their product, so all upper left determinants are positive.

If condition III holds, so does condition IV: According to Section 4.4, the kth pivot  \( d_{k} \)  is the ratio of  \( \det A_{k} \)  to  \( \det A_{k-1} \) . If the determinants are all positive, so are the pivots.

If condition IV holds, so does condition I: We are given positive pivots, and must deduce that  \( x^{T}Ax > 0 \) . This is what we did in the 2 by 2 case, by completing the square. The pivots were the numbers outside the squares. To see how that happens for symmetric matrices of any size, we go back to elimination on a symmetric matrix:  \( A = LDL^{T} \) .

Example 1. Positive pivots 2,  \( \frac{3}{2} \) , and  \( \frac{4}{3} \) :

 \[A=\begin{bmatrix}{{{2}}}&{{{-1}}}&{{{0}}} \\{{{-1}}}&{{{2}}}&{{{-1}}} \\{{{0}}}&{{{-1}}}&{{{2}}}\end{bmatrix}=\begin{bmatrix}{{{1}}}&{{{0}}}&{{{0}}} \\{{{-\frac{1}{2}}}}&{{{1}}}&{{{0}}} \\{{{0}}}&{{{-\frac{2}{3}}}}&{{{1}}}\end{bmatrix}\begin{bmatrix}{{{2}}} \\{{{\frac{3}{2}}}} \\{{{\frac{4}{3}}}}\end{bmatrix}\begin{bmatrix}{{{1}}}&{{{-\frac{1}{2}}}}&{{{0}}} \\{{{0}}}&{{{1}}}&{{{-\frac{2}{3}}}} \\{{{0}}}&{{{0}}}&{{{1}}}\end{bmatrix}=LDL^{T}.\] 

I want to split  \( x^{T}Ax \)  into  \( x^{T}LDL^{T}x \) :

 \[If\quad x=\begin{bmatrix}{{{u}}} \\{{{v}}} \\{{{w}}}\end{bmatrix},\quad then\quad L^{T}x=\begin{bmatrix}{{{1}}}&{{{-\frac{1}{2}}}}&{{{0}}} \\{{{0}}}&{{{1}}}&{{{-\frac{2}{3}}}} \\{{{0}}}&{{{0}}}&{{{1}}}\end{bmatrix}\begin{bmatrix}{{{u}}} \\{{{v}}} \\{{{w}}}\end{bmatrix}=\begin{bmatrix}{{{u-\frac{1}{2}v}}} \\{{{v-\frac{2}{3}w}}} \\{{{w}}}\end{bmatrix}.\] 

So  \( x^{T}Ax \)  is a sum of squares with the pivots 2,  \( \frac{3}{2} \) , and  \( \frac{4}{3} \)  as coefficients:

 \[x^{\mathrm{T}}A x=(L^{\mathrm{T}}x)^{\mathrm{T}}D(L^{\mathrm{T}}x)=\mathbf{2}\left(u-\frac{\mathbf{1}}{2}v\right)^{2}+\frac{\mathbf{3}}{2}\left(v-\frac{\mathbf{2}}{3}w\right)^{2}+\frac{\mathbf{4}}{3}(w)^{2}.\] 

Those positive pivots in D multiply perfect squares to make  \( x^{T}Ax \)  positive. Thus condition IV implies condition I, and the proof is complete.

It is beautiful that elimination and completing the square are actually the same. Elimination removes  \( x_{1} \)  from all later equations. Similarly, the first square accounts for all terms in  \( x^{T}Ax \)  involving  \( x_{1} \) . The sum of squares has the pivots outside. The multipliers  \( \ell_{ij} \)  are inside! You can see the numbers  \( -\frac{1}{2} \)  and  \( -\frac{2}{3} \)  inside the squares in the example.

Every diagonal entry  \( a_{ii} \)  must be positive. As we know from the examples, however, it is far from sufficient to look only at the diagonal entries.

The pivots  \( d_{i} \)  are not to be confused with the eigenvalues. For a typical positive definite matrix, they are two completely different sets of positive numbers, In our 3 by 3 example, probably the determinant test is the easiest:

Determinant test  \( \det A_{1}=2,\quad\det A_{2}=3,\quad\det A_{3}=\det A=4. \) 

The pivots are the ratios  \( d_{1}=2 \) ,  \( d_{2}=\frac{3}{2} \) ,  \( d_{3}=\frac{4}{3} \) . Ordinarily the eigenvalue test is the longest computation. For this A we know the  \( \lambda \) 's are all positive:

Eigenvalue test  \( \lambda_{1}=2-\sqrt{2},\quad\lambda_{2}=2,\quad\lambda_{3}=2+\sqrt{2}. \)