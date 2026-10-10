
# Solutions to the 64th William Lowell Putnam Mathematical Competition Saturday, December 6, 2003

Manjul Bhargava, Kiran Kedlaya, and Lenny Ng

A1 There are n such sums. More precisely, there is exactly one such sum with k terms for each of  \( k = 1, \ldots, n \)  (and clearly no others). To see this, note that if  \( n = a_{1} + a_{2} + \cdots + a_{k} \)  with  \( a_{1} \leq a_{2} \leq \cdots \leq a_{k} \leq a_{1} + 1 \) , then

 \[\begin{aligned}ka_{1}&=a_{1}+a_{1}+\cdots+a_{1}\\&\leq n\leq a_{1}+(a_{1}+1)+\cdots+(a_{1}+1)\\&=ka_{1}+k-1.\end{aligned}\] 

However, there is a unique integer  \( a_{1} \)  satisfying these inequalities, namely  \( a_{1} = \lfloor n/k \rfloor \) . Moreover, once  \( a_{1} \)  is fixed, there are k different possibilities for the sum  \( a_{1} + a_{2} + \cdots + a_{k} \) : if i is the last integer such that  \( a_{i} = a_{1} \) , then the sum equals  \( ka_{1} + (i - 1) \) . The possible values of i are  \( 1, \ldots, k \) , and exactly one of these sums comes out equal to n, proving our claim.

Note: In summary, there is a unique partition of n with k terms that is “as equally spaced as possible”. One can also obtain essentially the same construction inductively: except for the all-ones sum, each partition of n is obtained by “augmenting” a unique partition of n - 1.

A2 First solution: Assume without loss of generality that  \( a_{i}+b_{i}>0 \)  for each i (otherwise both sides of the desired inequality are zero). Then the AM-GM inequality gives

 \[\begin{align*}\left(\frac{a_{1}\cdots a_{n}}{(a_{1}+b_{1})\cdots(a_{n}+b_{n})}\right)^{1/n}\\ \leq\frac{1}{n}\left(\frac{a_{1}}{a_{1}+b_{1}}+\cdots+\frac{a_{n}}{a_{n}+b_{n}}\right),\end{align*}\] 

and likewise with the roles of \(a\) and \(b\) reversed. Adding these two inequalities and clearing denominators yields the desired result.

Second solution: Write the desired inequality in the form

 \[(a_{1}+b_{1})\cdots(a_{n}+b_{n})\geq[(a_{1}\cdots a_{n})^{1/n}+(b_{1}\cdots b_{n})^{1/n}]^{n},\] 

expand both sides, and compare the terms on both sides in which k of the terms are among the  \( a_{i} \) . On the left, one has the product of each k-element subset of  \( \{1,\ldots,n\} \) ; on the right, one has

 \[{n\choose k}(a_{1}\cdots a_{n})^{k/n}\cdots(b_{1}\cdots b_{n})^{(n-k)/n},\] 

which is precisely  \( \binom{n}{k} \)  times the geometric mean of the terms on the left. Thus AM-GM shows that the terms under consideration on the left exceed those on the right; adding these inequalities over all k yields the desired result.
Third solution: Since both sides are continuous in each  \( a_{i} \) , it is sufficient to prove the claim with  \( a_{1}, \ldots, a_{n} \)  all positive (the general case follows by taking limits as some of the  \( a_{i} \)  tend to zero). Put  \( r_{i} = b_{i}/a_{i} \) ; then the given inequality is equivalent to

 \[(1+r_{1})^{1/n}\cdots(1+r_{n})^{1/n}\geq1+(r_{1}\cdots r_{n})^{1/n}.\] 

In terms of the function

 \[f(x)=\log(1+e^{x})\] 

and the quantities  \( s_{i} = \log r_{i} \) , we can rewrite the desired inequality as

 \[\frac{1}{n}(f(s_{1})+\cdots+f(s_{n}))\geq f\left(\frac{s_{1}+\cdots+s_{n}}{n}\right).\] 

This will follow from Jensen’s inequality if we can verify that f is a convex function; it is enough to check that  \( f''(x) > 0 \)  for all x. In fact,

 \[f^{\prime}(x)=\frac{e^{x}}{1+e^{x}}=1-\frac{1}{1+e^{x}}\] 

is an increasing function of x, so  \( f''(x) > 0 \)  and Jensen's inequality thus yields the desired result. (As long as the  \( a_i \)  are all positive, equality holds when  \( s_1 = \cdots = s_n \) , i.e., when the vectors  \( (a_1, \ldots, a_n) \)  and  \( (b_1, \ldots, b_n) \) . Of course other equality cases crop up if some of the  \( a_i \)  vanish, i.e., if  \( a_1 = b_1 = 0 \) .)

Fourth solution: We apply induction on n, the case n = 1 being evident. First we verify the auxiliary inequality

 \[(a^{n}+b^{n})(c^{n}+d^{n})^{n-1}\geq(ac^{n-1}+bd^{n-1})^{n}\] 

for  \( a, b, c, d \geq 0 \) . The left side can be written as

 \[\begin{aligned}a^{n}c^{n(n-1)}&+b^{n}d^{n(n-1)}\\&+\sum_{i=1}^{n-1}\binom{n-1}{i}b^{n}c^{ni}d^{n(n-1-i)}\\&+\sum_{i=1}^{n-1}\binom{n-1}{i-1}a^{n}c^{n(i-1)}d^{n(n-i)}.\end{aligned}\] 

Applying the weighted AM-GM inequality between matching terms in the two sums yields

 \[\begin{align*}(a^{n}+b^{n})(c^{n}+d^{n})^{n-1}&\geq a^{n} c^{n(n-1)}+b^{n} d^{n(n-1)}\\&+\sum_{i=1}^{n-1}\binom{n}{i}a^{i} b^{n-i}c^{(n-1)i}d^{(n-1)(n-i)},\end{align*}\]