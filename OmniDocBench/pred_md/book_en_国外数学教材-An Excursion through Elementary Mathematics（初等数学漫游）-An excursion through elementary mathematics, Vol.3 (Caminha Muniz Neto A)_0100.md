
 \[\frac{1-2x+2x^{2}}{(1-x)^{2}(1-2x)}=\frac{A}{(1-x)^{2}}+\frac{B}{1-x}+\frac{C}{1-2x}.\] 

(d) Expand each summand of the right hand side above as a power series to conclude that  \( a_{n}=2^{n+1}-(n+1) \)  for  \( n\geq0 \) .

3. Given  \( k, m \in N \) , use generating functions to compute the number of integer solutions of the equation  \( a_{1} + a_{2} + \cdots + a_{k} = m \) , such that  \( a_{i} \geq 1 \)  for  \( 1 \leq i \leq k \) .

4. Use generating functions to compute the number of nonnegative integer solutions of the equation  \( a_{1} + a_{2} + a_{3} + a_{4} = 20 \) , satisfying  \( a_{1} \geq 2 \)  and  \( a_{3} \leq 7 \) .

5. A particle moves on the cartesian plane in such a way that from point  \( (a, b) \)  it can go to either  \( (a + 1, b) \)  or  \( (a, b + 1) \) . Given  \( n \in N \) , let  \( a_{n} \)  be the number of distinct ways the particle has to go from  \( A_{0}(0, 0) \)  to  \( A_{n}(n, n) \) , without ever touching a point  \( (x, y) \)  situated above the bisector of odd quadrants (i.e., one such point for which  \( y > x \) ). In this respect, do the following items:

(a) Let  \( A_{k}(k,k) \) , with  \( 0 \leq k < n \) . Prove that there are exactly  \( a_{k}a_{n-1-k} \)  distinct trajectories for the particle in which  \( A_{k} \)  is the last point (before  \( A_{n} \) ) on the line y = x.

(b) Conclude that  \( a_{n} = \sum_{k=0}^{n-1} a_{k} a_{n-1-k} \)  and, hence, that  \( a_{n} = C_{n} \)  for  \( n \geq 1 \) , where  \( C_{n} \)  is the n-th Catalan number.

For the coming problem, the reader may find it convenient to read again the paragraph that precedes Example 1.15.

6. For  \( n \in N \) , we let  \( a_{n} \)  denote the number of partitions of n in natural summands, none of which exceeds 3. The purpose of this problem is to compute  \( a_{n} \)  as a function of n, and to this end do the following items:

(a) Show that, for  \( |x| < 1 \) , one has

 \[\sum_{n\geq1}a_{n}x^{n}=\frac{1}{(1-x)(1-x^{2})(1-x^{3})}.\] 

(b) Find a, b, c, d ∈ R for which

 \[\frac{1}{(1-x)(1-x^{2})(1-x^{3})}=\frac{a}{(1-x)^{3}}+\frac{b}{(1-x)^{2}}+\frac{c}{1-x^{2}}+\frac{d}{1-x^{3}}.\] 

(c) Conclude that

 \[a_{n}=\left\{\begin{aligned}&\frac{1}{6}\binom{n+2}{2}+\frac{1}{4}(n+1)+\frac{7}{12},if6\mid n\\&\frac{1}{6}\binom{n+2}{2}+\frac{1}{4}(n+1)+\frac{1}{4},if2\mid nbut3\nmid n\\&\frac{1}{6}\binom{n+2}{2}+\frac{1}{4}(n+1)+\frac{1}{3},if2\nmid nbut3\mid n\\&\frac{1}{6}\binom{n+2}{2}+\frac{1}{4}(n+1),if2,3\nmid n\end{aligned}\right..\]