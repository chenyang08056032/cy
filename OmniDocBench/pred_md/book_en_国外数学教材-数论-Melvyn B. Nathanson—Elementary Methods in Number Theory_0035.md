
and

 \[\frac{a}{b}=\frac{r_{0}}{r_{1}}=q_{0}+\frac{r_{2}}{r_{1}}=q_{0}+\frac{1}{\frac{r_{1}}{r_{2}}}=q_{0}+\frac{1}{q_{1}}=\langle q_{0},q_{1}\rangle.\] 

Let  \( n \geq 2 \) , and assume that the theorem is true for integers a and  \( b \geq 1 \)  whose Euclidean algorithm has length n. Let a and  \( b \geq 1 \)  be integers whose Euclidean algorithm has length  \( n + 1 \)  and whose sequence of partial quotients is  \( \langle q_{0}, q_{1}, \ldots, q_{n} \rangle \) . Let

 \[\begin{aligned}r_{0}\quad&=\quad r_{1}q_{0}+r_{2}\\r_{1}\quad&=\quad r_{2}q_{1}+r_{3}\\\vdots\quad&\\r_{n-1}\quad&=\quad r_{n}q_{n-1}+r_{n+1}\\r_{n}\quad&=\quad r_{n+1}q_{n}.\end{aligned}\] 

be the  \( n+1 \)  equations in the Euclidean algorithm for  \( a=r_{0} \)  and  \( b=r_{1} \) . The Euclidean algorithm for the positive integers  \( r_{1} \)  and  \( r_{2} \)  has length n with sequence of partial quotients  \( q_{1},\ldots,q_{n} \) . It follows from the induction hypothesis that

 \[\frac{r_{1}}{r_{2}}=\langle q_{1},\cdots,q_{n}\rangle\] 

and so

 \[\frac{a}{b}=\frac{r_{0}}{r_{1}}=q_{0}+\frac{1}{\frac{r_{1}}{r_{2}}}=q_{0}+\frac{1}{\langle q_{1},\cdots,q_{n}\rangle}=\langle q_{0},q_{1},\cdots,q_{n}\rangle.\] 

This completes the proof.

It is also true that the representation of a rational number as a finite simple continued fraction is essentially unique (Exercise 8).

## Exercises

1. Use the Euclidean algorithm to compute the greatest common divisor of 35 and 91, and to express  \( (35, 91) \)  as a linear combination of 35 and 91. Compute the simple continued fraction for 91/35.

2. Use the Euclidean algorithm to write the greatest common divisor of 4534 and 1876 as a linear combination of 4534 and 1876. Compute the simple continued fraction for 4534/1876.

3. Use the Euclidean algorithm to compute the greatest common divisor of 1197 and 14280, and to express (1197, 14280) as a linear combination of 1197 and 14280.