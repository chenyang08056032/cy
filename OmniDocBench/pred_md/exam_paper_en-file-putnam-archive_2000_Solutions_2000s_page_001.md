
# Solutions to the 61st William Lowell Putnam Mathematical Competition Saturday, December 2, 2000

Manjul Bhargava, Kiran Kedlaya, and Lenny Ng

A−1 The possible values comprise the interval  \( (0, A^{2}) \) .

To see that the values must lie in this interval, note that

 \[\left(\sum_{j=0}^{m}x_{j}\right)^{2}=\sum_{j=0}^{m}x_{j}^{2}+\sum_{0\leq j<k\leq m}2x_{j}x_{k},\] 

so \(\sum_{j=0}^{m}x_{j}^{2}\leq A^{2}-2x_{0}x_{1}\). Letting \(m\to\infty\), we have \(\sum_{j=0}^{\infty}x_{j}^{2}\leq A^{2}-2x_{0}x_{1}<A^{2}\).

To show that all values in \((0,A^{2})\) can be obtained, we use geometric progressions with \(x_{1}/x_{0}=x_{2}/x_{1}=\cdots=d\) for variable \(d\). Then \(\sum_{j=0}^{\infty}x_{j}=x_{0}/(1-d)\) and

 \[\sum_{j=0}^{\infty}x_{j}^{2}=\frac{x_{0}^{2}}{1-d^{2}}=\frac{1-d}{1+d}\left(\sum_{j=0}^{\infty}x_{j}\right)^{2}.\] 

As \(d\) increases from 0 to 1, \((1-d)/(1+d)\) decreases from 1 to 0. Thus if we take geometric progressions with \(\sum_{j=0}^{\infty}x_{j}=A\), \(\sum_{j=0}^{\infty}x_{j}^{2}\) ranges from 0 to \(A^{2}\). Thus the possible values are indeed those in the interval \((0,A^{2})\), as claimed.

A–2 First solution: Let \(a\) be an even integer such that \(a^{2}+1\) is not prime. (For example, choose \(a\equiv2\pmod{5}\), so that \(a^{2}+1\) is divisible by 5.) Then we can write \(a^{2}+1\) as a difference of squares \(x^{2}-b^{2}\), by factoring \(a^{2}+1\) as \(rs\) with \(r\geq s>1\), and setting \(x=(r+s)/2\), \(b=(r-s)/2\). Finally, put \(n=x^{2}-1\), so that \(n=a^{2}+b^{2}\), \(n+1=x^{2}\), \(n+2=x^{2}+1\).

Second solution: It is well-known that the equation  \( x^{2}-2y^{2}=1 \)  has infinitely many solutions (the so-called “Pell” equation). Thus setting  \( n=2y^{2} \)  (so that  \( n=y^{2}+y^{2} \) ,  \( n+1=x^{2}+0^{2} \) ,  \( n+2=x^{2}+1^{2} \) ) yields infinitely many n with the desired property.

Third solution: As in the first solution, it suffices to exhibit x such that  \( x^{2}-1 \)  is the sum of two squares. We will take  \( x=3^{2^{n}} \) , and show that  \( x^{2}-1 \)  is the sum of two squares by induction on n: if  \( 3^{2^{n}}-1=a^{2}+b^{2} \) , then

 \[\begin{align*}(3^{2^{n+1}}-1)&=(3^{2^{n}}-1)(3^{2^{n}}+1)\\&=(3^{2^{n-1}}a+b)^{2}+(a-3^{2^{n-1}}b)^{2}.\end{align*}\] 

Fourth solution (by Jonathan Weinstein): Let  \( n = 4k^{4} + 4k^{2} = (2k^{2})^{2} + (2k)^{2} \)  for any integer k. Then  \( n + 1 = (2k^{2} + 1)^{2} + 0^{2} \)  and  \( n + 2 = (2k^{2} + 1)^{2} + 1^{2} \) .

## A−3 The maximum area is  \( 3\sqrt{5} \) .

We deduce from the area of  \( P_{1}P_{3}P_{5}P_{7} \)  that the radius of the circle is  \( \sqrt{5/2} \) . An easy calculation using the Pythagorean Theorem then shows that the rectangle  \( P_{2}P_{4}P_{6}P_{8} \)  has sides  \( \sqrt{2} \)  and  \( 2\sqrt{2} \) . For notational ease, denote the area of a polygon by putting brackets around the name of the polygon.

By symmetry, the area of the octagon can be expressed as

 \[\left[P_{2}P_{4}P_{6}P_{8}\right]+2\left[P_{2}P_{3}P_{4}\right]+2\left[P_{4}P_{5}P_{6}\right].\] 

Note that  \( [P_{2}P_{3}P_{4}] \)  is  \( \sqrt{2} \)  times the distance from  \( P_{3} \)  to  \( P_{2}P_{4} \) , which is maximized when  \( P_{3} \)  lies on the midpoint of arc  \( P_{2}P_{4} \) ; similarly,  \( [P_{4}P_{5}P_{6}] \)  is  \( \sqrt{2}/2 \)  times the distance from  \( P_{5} \)  to  \( P_{4}P_{6} \) , which is maximized when  \( P_{5} \)  lies on the midpoint of arc  \( P_{4}P_{6} \) . Thus the area of the octagon is maximized when  \( P_{3} \)  is the midpoint of arc  \( P_{2}P_{4} \)  and  \( P_{5} \)  is the midpoint of arc  \( P_{4}P_{6} \) . In this case, it is easy to calculate that  \( [P_{2}P_{3}P_{4}] = \sqrt{5} - 1 \)  and  \( [P_{4}P_{5}P_{6}] = \sqrt{5}/2 - 1 \) , and so the area of the octagon is  \( 3\sqrt{5} \) .

A–4 To avoid some improper integrals at 0, we may as well replace the left endpoint of integration by some \(\varepsilon > 0\). We now use integration by parts:

 \[\begin{aligned}\int_{\varepsilon}^{B}\sin x\sin x^{2}dx&=\int_{\varepsilon}^{B}\frac{\sin x}{2x}\sin x^{2}(2xdx)\\&=-\frac{\sin x}{2x}\cos x^{2}\bigg|_{\varepsilon}^{B}\\&+\int_{\varepsilon}^{B}\left(\frac{\cos x}{2x}-\frac{\sin x}{2x^{2}}\right)\cos x^{2}dx.\end{aligned}\] 

Now  \( \frac{\sin x}{2x}\cos x^{2} \)  tends to 0 as  \( B \rightarrow \infty \) , and the integral of  \( \frac{\sin x}{2x^{2}}\cos x^{2} \)  converges absolutely by comparison with  \( 1/x^{2} \) . Thus it suffices to note that

 \[\begin{aligned}\int_{\varepsilon}^{B}\frac{\cos x}{2x}\cos x^{2}dx&=\int_{\varepsilon}^{B}\frac{\cos x}{4x^{2}}\cos x^{2}(2xdx)\\&=\left.\frac{\cos x}{4x^{2}}\sin x^{2}\right|_{\varepsilon}^{B}\\&-\int_{\varepsilon}^{B}\frac{2x\cos x-\sin x}{4x^{3}}\sin x^{2}dx,\end{aligned}\] 

and that the final integral converges absolutely by comparison to  \( 1/x^{3} \) .

An alternate approach is to first rewrite \(\sin x \sin x^{2}\) as \(\frac{1}{2}(\cos(x^{2}-x)-\cos(x^{2}+x))\). Then

 \[\begin{aligned}\int_{\varepsilon}^{B}\cos(x^{2}+x)dx=&-\left.\frac{\sin(x^{2}+x)}{2x+1}\right|_{\varepsilon}^{B}\\&-\int_{\varepsilon}^{B}\frac{2\sin(x^{2}+x)}{(2x+1)^{2}}dx\end{aligned}\]