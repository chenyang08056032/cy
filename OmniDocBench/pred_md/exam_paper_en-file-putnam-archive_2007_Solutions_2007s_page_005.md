
by comparing the sum to an integral. This gives

 \[\begin{align*}n^{n^{2}/2-C_{1}n}e^{-n^{2}/4}&\leq1^{1+c}2^{2+c}\cdots n^{n+c}\\&\leq n^{n^{2}/2+C_{2}n}e^{-n^{2}/4}.\end{align*}\] 

We now interpret \(f(n)\) as counting the number of \(n\)-tuples \((a_{1},\ldots,a_{n})\) of nonnegative integers such that

 \[a_{1}1!+\cdots+a_{n}n!=n!.\] 

For an upper bound on \(f(n)\), we use the inequalities \(0 \leq a_{i} \leq n!/i!\) to deduce that there are at most \(n!/i! + 1 \leq 2(n!/i!)\) choices for \(a_{i}\). Hence

 \[\begin{aligned}f(n)&\leq2^{n}\frac{n!}{1!}\cdots\frac{n!}{n!}\\&=2^{n}2^{1}3^{2}\cdots n^{n-1}\\&\leq n^{n^{2}/2+C_{3}n}e^{-n^{2}/4}.\end{aligned}\] 

For a lower bound on \(f(n)\), we note that if \(0 \leq a_{i} < (n-1)!/i!\) for \(i=2,\ldots,n-1\) and \(a_{n}=0\), then \(0 \leq a_{2}2!+\cdots+a_{n}n!\leq n!\), so there is a unique choice of \(a_{1}\) to complete this to a solution of \(a_{1}1!+\cdots+a_{n}n!=n!\). Hence

 \[\begin{aligned}f(n)&\geq\frac{(n-1)!}{2!}\cdots\frac{(n-1)!}{(n-1)!}\\&=3^{1}4^{2}\cdots(n-1)^{n-3}\\&\geq n^{n^{2}/2+C_{4}n}e^{-n^{2}/4}.\end{aligned}\]