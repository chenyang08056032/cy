
Hint: Observe that if  \( k \geq 1 \)  and  \(  f(x)  \)  is integer-valued for all sufficiently large x, then  \(  \Delta f(x)  \)  is also integer-valued for all sufficiently large x. Represent  \(  f(x)  \)  in the form (11.1) and use induction on k.

5. Let  \(  f(x)  \)  be a polynomial of degree k with complex coefficients. Prove that if  \(  f(x)  \)  is an integer for all sufficiently large integers x, then  \(  f(x)  \)  is an integer for all integers x.

6. Prove that if  \(  f(x)  \)  is an integer-valued polynomial of degree k with leading coefficient  \( a_{k} \) , then

 \[|a_{k}|\geq\frac{1}{k!}.\] 

7. Let  \(  f(x)  \)  be an integer-valued polynomial, and define

 \[d=\gcd\{f(x):x\in\mathbf{N}_{0}\}\] 

and

 \[d^{\prime}=\gcd\{f(x):x\in\mathbf{Z}\}.\] 

Let  \( u_{0}, u_{1}, \ldots, u_{k} \)  be integers such that

 \[f(x)=\sum_{i=0}^{k}u_{i}\binom{x}{i}.\] 

Prove that

 \[d=d^{\prime}=(u_{0},u_{1},\ldots,u_{k}).\] 

8. Prove that if

 \[f(x)=\sum_{i=0}^{k}u_{i}\binom{x}{i},\] 

then

 \[f_{1}(x)=f(x+1)=u_{k}\binom{x}{k}+\sum_{i=0}^{k-1}(u_{i}+u_{i+1})\binom{x}{i}.\] 

Prove that

 \[\begin{aligned}\gcd(u_{0},u_{1},\cdots,u_{k-1},u_{k})\\=\quad\gcd(u_{0}+u_{1},u_{1}+u_{2},\cdots,u_{k-1}+u_{k},u_{k}).\end{aligned}\] 

9. Let  \(  f(x)  \)  be an integer-valued polynomial and let  \( m \in Z \) . We define the polynomial  \(  f_{m}(x) = f(x + m)  \) . Prove that  \(  f(x)  \)  and  \(  f_{m}(x)  \)  are polynomials of the same degree and with the same leading coefficient. Let  \(  A(f) = \{f(i)\}_{i=0}^{\infty}  \) . Prove that  \(  \gcd(A(f)) = \gcd(A(f_{m}))  \) .