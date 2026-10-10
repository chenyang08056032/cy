
Third solution: (by Richard Stanley) The cycle indicator of the symmetric group  \( S_{n} \)  is defined by

 \[Z_{n}(x_{1},\cdots,x_{n})=\sum_{\pi\in S_{n}}x_{1}^{c_{1}(\pi)}\cdots x_{n}^{c_{n}(\pi)},\] 

where  \( c_{i}(\pi) \)  is the number of cycles of  \( \pi \)  of length i. Put

 \[F_{n}=\sum_{\pi\in S_{n}}\sigma(\pi)x^{\nu(\pi)}=Z_{n}(x,-1,1,-1,1,\cdots)\] 

and

 \[f(n)=\sum_{\pi\in S_{n}}\frac{\sigma(\pi)}{\nu(\pi)+1}=\int_{0}^{1}F_{n}(x)dx.\] 

A standard argument in enumerative combinatorics (the Exponential Formula) gives

 \[\sum_{n=0}^{\infty}Z_{n}(x_{1},\cdots,x_{n})\frac{t^{n}}{n!}=\exp\sum_{k=1}^{\infty}x_{k}\frac{t^{k}}{k},\] 

yielding

 \[\begin{aligned}\sum_{n=0}^{\infty}f(n)\frac{t^{n}}{n!}&=\int_{0}^{1}\exp\left(xt-\frac{t^{2}}{2}+\frac{t^{3}}{3}-\cdots\right)dx\\&=\int_{0}^{1}e^{(x-1)t+\log(1+t)}dx\\&=\int_{0}^{1}(1+t)e^{(x-1)t}dx\\&=\frac{1}{t}(1-e^{-t})(1+t).\end{aligned}\] 

Expanding the right side as a Taylor series and comparing coefficients yields the desired result.

Fourth solution (sketch): (by David Savitt) We prove the identity of rational functions

 \[\sum_{\pi\in S_{n}}\frac{\sigma(\pi)}{\nu(\pi)+x}=\frac{(-1)^{n+1}n!(x+n-1)}{x(x+1)\cdots(x+n)}\] 

by induction on n, which for x = 1 implies the desired result. (This can also be deduced as in the other solutions, but in this argument it is necessary to formulate the strong induction hypothesis.)

Let  \( R(n, x) \)  be the right hand side of the above equation. It is easy to verify that

 \[\begin{aligned}R(x,n)&=R(x+1,n-1)+(n-1)!\frac{(-1)^{n+1}}{x}\\&\quad+\sum_{l=2}^{n-1}(-1)^{l-1}\frac{(n-1)!}{(n-l)!}R(x,n-l),\end{aligned}\] 

since the sum telescopes. To prove the desired equality, it suffices to show that the left hand side satisfies the same recurrence. This follows because we can classify each  \( \pi \in S_{n} \)  as either fixing n, being an n-cycle, or having n in an l-cycle for one of  \( l = 2, \ldots, n - 1 \) ; writing the sum over these classes gives the desired recurrence.