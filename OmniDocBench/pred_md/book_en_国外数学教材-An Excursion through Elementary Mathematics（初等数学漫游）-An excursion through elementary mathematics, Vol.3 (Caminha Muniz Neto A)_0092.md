
 \[\begin{aligned}f^{\prime}(x)&=\sum_{n\geq1}na_{n}x^{n-1}=a_{1}+\sum_{n\geq2}na_{n}x^{n-1}\\&=a_{1}+\sum_{n\geq2}(-a_{n-1}+2na_{n-2})x^{n-1}\\&=a_{1}-\sum_{n\geq2}a_{n-1}x^{n-1}+2x\sum_{n\geq2}na_{n-2}x^{n-2}\\&=a_{1}-(f(x)-a_{0})+2x\left(\sum_{n\geq2}(n-2)a_{n-2}x^{n-2}+2\sum_{n\geq2}a_{n-2}x^{n-2}\right)\\&=a_{1}+a_{0}-f(x)+2x(f^{\prime}(x)+2f(x)).\\ \end{aligned}\] 

However, since  \( a_{1} + a_{0} = 0 \) , we get  \( f'(x) = (4x - 1)f(x) + 2xf'(x) \)  or, yet,

 \[(2x-1)f^{\prime}(x)=-(4x-1)f(x).\] 

In order to integrate (i.e., to find the solutions of) the above differential equation, note first that f is positive in some interval  \( (-r, r) \) , for some  \( 0 < r \leq \frac{1}{2} \)  (this comes from the fact that  \( f(0) = a_{0} = 1 > 0 \)  and f, being differentiable, is continuous, hence has the same sign as  \( f(0) \)  in a suitable neighborhood of 0). Thus, for  \( |x| < r \)  we can write

 \[\frac{f^{\prime}(x)}{f(x)}=-\frac{4x-1}{2x-1}=-2-\frac{1}{2x-1}\] 

and then, for  \( |x| < r \leq \frac{1}{2} \) ,

 \[\begin{aligned}\log f(x)&=\log f(t)\Big|_{0}^{x}=\int_{0}^{x}\frac{f^{\prime}(t)}{f(t)}dt\\&=-\int_{0}^{x}\left(2+\frac{1}{2t-1}\right)dt\\&=-2x-\frac{1}{2}\log(1-2x).\end{aligned}\] 

Hence, for  \( |x| < r \leq \frac{1}{2} \)  we have

 \[f(x)=e^{-2x}(1-2x)^{-1/2}.\] 

Step III: firstly, recall that the power series expansion of  \( e^{-2x} \)  is given by letting a = -2 in (3.8), and is valid in the whole real line:

 \[e^{-2x}=\sum_{k\geq0}\frac{(-2)^{k}}{k!}x^{k}.\]