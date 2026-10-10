
converges absolutely, and  \( \int_{0}^{B}\cos(x^{2}-x) \)  can be treated similarly.

A–5 Let \(a, b, c\) be the distances between the points. Then the area of the triangle with the three points as vertices is \(abc/4r\). On the other hand, the area of a triangle whose vertices have integer coordinates is at least \(1/2\) (for example, by Pick's Theorem). Thus \(abc/4r \geq 1/2\), and so

 \[\max\{a,b,c\}\geq(abc)^{1/3}\geq(2r)^{1/3}>r^{1/3}.\] 

A–6 Recall that if \(f(x)\) is a polynomial with integer coefficients, then \(m-n\) divides \(f(m)-f(n)\) for any integers \(m\) and \(n\). In particular, if we put \(b_{n}=a_{n+1}-a_{n}\), then \(b_{n}\) divides \(b_{n+1}\) for all \(n\). On the other hand, we are given that \(a_{0}=a_{m}=0\), which implies that \(a_{1}=a_{m+1}\) and so \(b_{0}=b_{m}\). If \(b_{0}=0\), then \(a_{0}=a_{1}=\cdots=a_{m}\) and we are done. Otherwise, \(|b_{0}|=|b_{1}|=|b_{2}|=\cdots\), so \(b_{n}=\pm b_{0}\) for all \(n\).

Now  \( b_{0}+\cdots+b_{m-1}=a_{m}-a_{0}=0 \) , so half of the integers  \( b_{0},\ldots,b_{m-1} \)  are positive and half are negative. In particular, there exists an integer 0<k<m such that  \( b_{k-1}=-b_{k} \) , which is to say,  \( a_{k-1}=a_{k+1} \) . From this it follows that  \( a_{n}=a_{n+2} \)  for all  \( n\geq k-1 \) ; in particular, for m=n, we have

 \[a_{0}=a_{m}=a_{m+2}=f(f(a_{0}))=a_{2}.\] 

B−1 Consider the seven triples \((a,b,c)\) with \(a,b,c\in\{0,1\}\) not all zero. Notice that if \(r_{j},s_{j},t_{j}\) are not all even, then four of the sums \(ar_{j}+bs_{j}+ct_{j}\) with \(a,b,c\in\{0,1\}\) are even and four are odd. Of course the sum with \(a=b=c=0\) is even, so at least four of the seven triples with \(a,b,c\) not all zero yield an odd sum. In other words, at least 4N of the tuples \((a,b,c,j)\) yield odd sums. By the pigeonhole principle, there is a triple \((a,b,c)\) for which at least 4N/7 of the sums are odd.

B–2 Since  \( \gcd(m,n) \)  is an integer linear combination of m and n, it follows that

 \[\frac{gcd(m,n)}{n}\binom{n}{m}\] 

is an integer linear combination of the integers

 \[\frac{m}{n}\binom{n}{m}=\binom{n-1}{m-1}\mathrm{a n d}\frac{n}{n}\binom{n}{m}=\binom{n}{m}\] 

and hence is itself an integer.

B–3 Put  \( f_{k}(t)=\frac{d_{f}t^{k}}{dt^{k}} \) . Recall Rolle's theorem: if  \( f(t) \)  is differentiable, then between any two zeroes of  \( f(t) \)  there exists a zero of  \( f'(t) \) . This also applies when the zeroes are not all distinct: if f has a zero of multiplicity m at t=x, then  \( f' \)  has a zero of multiplicity at least m-1 there.
Therefore, if  \( 0 \leq a_{0} \leq a_{1} \leq \cdots \leq a_{r} < 1 \)  are the roots of  \( f_{k} \)  in  \( [0,1) \) , then  \( f_{k+1} \)  has a root in each of the intervals  \( (a_{0},a_{1}),(a_{1},a_{2}),\ldots,(a_{r-1},a_{r}) \) , so long as we adopt the convention that the empty interval  \( (t,t) \)  actually contains the point t itself. There is also a root in the “wraparound” interval  \( (a_{r},a_{0}) \) . Thus  \( N_{k+1} \geq N_{k} \) .

 \[f_{4k}(t)=\frac{1}{2i}\sum_{j=1}^{N}j^{4k}a_{j}(z^{j}-z^{-j})\] 

is equal to  \( z^{-N} \)  times a polynomial of degree 2N. Hence as a function of z, it has at most 2N roots; therefore  \( f_{k}(t) \)  has at most 2N roots in [0,1]. That is,  \( N_{k} \leq 2N \)  for all N.

To establish that \(N_{k} \rightarrow 2N\), we make precise the observation that

 \[f_{k}(t)=\sum_{j=1}^{N}j^{4k}a_{j}\sin(2\pi jt)\] 

is dominated by the term with \(j=N\). At the points \(t=(2i+1)/(2N)\) for \(i=0,1,\ldots,N-1\), we have \(N^{4k}a_{N}\sin(2\pi Nt)=\pm N^{4k}a_{N}\). If \(k\) is chosen large enough so that

 \[|a_{N}|N^{4k}>|a_{1}|1^{4k}+\cdots+|a_{N-1}|(N-1)^{4k},\] 

then  \( f_{k}((2i+1)/2N) \)  has the same sign as  \( a_{N}\sin(2\pi Nat) \) , which is to say, the sequence  \( f_{k}(1/2N), f_{k}(3/2N), \ldots \)  alternates in sign. Thus between these points (again including the “wraparound” interval) we find 2N sign changes of  \( f_{k} \) . Therefore  \( \lim_{k\to\infty}N_{k}=2N \) .

B–4 For t real and not a multiple of  \( \pi \) , write  \( g(t) = \frac{f(\cos t)}{\sin t} \) . Then  \( g(t + \pi) = g(t) \) ; furthermore, the given equation implies that

 \[g(2t)=\frac{f(2\cos^{2}t-1)}{\sin(2t)}=\frac{2(\cos t)f(\cos t)}{\sin(2t)}=g(t).\] 

In particular, for any integer n and k, we have

 \[g(1+n\pi/2^{k})=g(2^{k}+n\pi)=g(2^{k})=g(1).\] 

Since \(f\) is continuous, \(g\) is continuous where it is defined; but the set \(\{1+n\pi/2^{k}|n,k\in\mathbb{Z}\}\) is dense in the reals, and so \(g\) must be constant on its domain. Since \(g(-t)=-g(t)\) for all \(t\), we must have \(g(t)=0\) when \(t\) is not a multiple of \(\pi\). Hence \(f(x)=0\) for \(x\in(-1,1)\). Finally, setting \(x=0\) and \(x=1\) in the given equation yields \(f(-1)=f(1)=0\).

B–5 We claim that all integers N of the form  \( 2^{k} \) , with k a positive integer and  \( N > \max\{S_{0}\} \) , satisfy the desired conditions.