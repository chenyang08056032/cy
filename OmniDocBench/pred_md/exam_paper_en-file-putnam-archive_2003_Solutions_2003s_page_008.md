
where

 \[\begin{aligned}C_{j}=\#\{i<j:\mathrm{sgn}(a_{i})=\mathrm{sgn}(a_{j})\}\\-\#\{i<j:\mathrm{sgn}(a_{i})\neq\mathrm{sgn}(a_{j})\}.\end{aligned}\] 

Consider the partial sum  \( P_{k} = \sum_{j=1}^{k} C_{j} \) . If exactly  \( p_{k} \)  of  \( a_{1}, \ldots, a_{k} \)  are positive, then this sum is equal to

 \[\binom{p_{k}}{2}+\binom{k-p_{k}}{2}-\left[\binom{k}{2}-\binom{p_{k}}{2}-\binom{k-p_{k}}{2}\right],\] 

which expands and simplifies to

 \[-2p_{k}(k-p_{k})+\binom{k}{2}.\] 

For  \( k \leq 2p \)  even, this partial sum would be minimized with  \( p_k = \frac{k}{2} \) , and would then equal  \( -\frac{k}{2} \) ; for  \( k < 2p \)  odd, this partial sum would be minimized with  \( p_k = \frac{k \pm 1}{2} \) , and would then equal  \( -\frac{k-1}{2} \) . Either way,  \( P_k \geq -\left\lfloor \frac{k}{2} \right\rfloor \) . On the other hand, if  \( k > 2p \) , then

 \[-2p_{k}(k-p_{k})+\binom{k}{2}\geq-2p(k-p)+\binom{k}{2}\] 

since  \( p_{k} \)  is at most p. Define  \( Q_{k} \)  to be  \( -\left\lfloor\frac{k}{2}\right\rfloor \)  if  \( k \leq 2p \)  and  \( -2p(k-p) + \binom{k}{2} \)  if  \( k \geq 2p \) , so that  \( P_{k} \geq Q_{k} \) . Note that  \( Q_{1} = 0 \) .

Partial summation gives

 \[\begin{align*}\sum_{j=1}^{n}r_{j}C_{j}&=r_{n}P_{n}+\sum_{j=2}^{n}(r_{j-1}-r_{j})P_{j-1}\\&\geq r_{n}Q_{n}+\sum_{j=2}^{n}(r_{j-1}-r_{j})Q_{j-1}\\&=\sum_{j=2}^{n}r_{j}(Q_{j}-Q_{j-1})\\&=-r_{2}-r_{4}-\cdots-r_{2p}+\sum_{j=2p+1}^{n}(j-1-2p)r_{j}.\end{align*}\] 

It follows that

 \[\begin{align*}\sum_{1\leq i<j\leq n}|a_{i}+a_{j}|&=\sum_{i=1}^{n}(n-i)r_{i}+\sum_{j=1}^{n}r_{j}C_{j}\\&\geq\sum_{i=1}^{2p}(n-i-\lceil i even\rceil)r_{i}\\&\quad+\sum_{i=2p+1}^{n}(n-1-2p)r_{i}\\&=(n-1-2p)\sum_{i=1}^{n}r_{i}\\&\quad+\sum_{i=1}^{2p}(2p+1-i-\lceil i even\rceil)r_{i}\\&\geq(n-1-2p)\sum_{i=1}^{n}r_{i}+p\sum_{i=1}^{2p}r_{i}\\&\geq(n-1-2p)\sum_{i=1}^{n}r_{i}+p\frac{2p}{n}\sum_{i=1}^{n}r_{i},\end{align*}\] 

as desired. The next-to-last and last inequalities each follow from the monotonicity of the  \( r_{i} \) 's, the former by pairing the  \( i^{th} \)  term with the  \( (2p+1-i)^{\text{th}} \) .

Note: Compare the closely related Problem 6 from the 2000 USA Mathematical Olympiad: prove that for any nonnegative real numbers  \( a_{1}, \ldots, a_{n}, b_{1}, \ldots, b_{n} \) , one has

 \[\sum_{i,j=1}^{n}\min\{a_{i}a_{j},b_{i}b_{j}\}\leq\sum_{i,j=1}^{n}\min\{a_{i}b_{j},a_{j}b_{i}\}.\]