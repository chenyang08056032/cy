
You must notice that the word “dimensional” is used in two different ways. We speak about a four-dimensional vector, meaning a vector in  \( R^{4} \) . Now we have defined a four-dimensional subspace; an example is the set of vectors in  \( R^{6} \)  whose first and last components are zero. The members of this four-dimensional subspace are six-dimensional vectors like  \( (0,5,1,3,4,0) \) .

One final note about the language of linear algebra. We never use the terms “basis of a matrix” or “rank of a space” or “dimension of a basis.” These phrases have no meaning. It is the dimension of the column space that equals the rank of the matrix, as we prove in the coming section.

## Problem Set 2.3

Problems 1–10 are about linear independence and linear dependence.

1. Show that  \( v_{1} \) ,  \( v_{2} \) ,  \( v_{3} \)  are independent but  \( v_{1} \) ,  \( v_{2} \) ,  \( v_{3} \) ,  \( v_{4} \)  are dependent:

 \[v_{1}=\begin{bmatrix}1\\ 0\\ 0\end{bmatrix}\qquad v_{2}=\begin{bmatrix}1\\ 1\\ 0\end{bmatrix}\qquad v_{3}=\begin{bmatrix}1\\ 1\\ 1\end{bmatrix}\qquad v_{4}=\begin{bmatrix}2\\ 3\\ 4\end{bmatrix}.\] 

Solve  \( c_{1}v_{1}+\cdots+c_{4}v_{4}=0 \)  or Ac=0. The v's go in the columns of A.

2. Find the largest possible number of independent vectors among

 \[v_{1}=\begin{bmatrix}{{{1}}} \\{{{-1}}} \\{{{0}}} \\{{{0}}}\end{bmatrix}\quad v_{2}=\begin{bmatrix}{{{1}}} \\{{{0}}} \\{{{-1}}} \\{{{0}}}\end{bmatrix}\quad v_{3}=\begin{bmatrix}{{{1}}} \\{{{0}}} \\{{{0}}} \\{{{-1}}}\end{bmatrix}\quad v_{4}=\begin{bmatrix}{{{0}}} \\{{{1}}} \\{{{-1}}} \\{{{0}}}\end{bmatrix}\quad v_{5}=\begin{bmatrix}{{{0}}} \\{{{1}}} \\{{{0}}} \\{{{-1}}}\end{bmatrix}\quad v_{6}=\begin{bmatrix}{{{0}}} \\{{{0}}} \\{{{1}}} \\{{{-1}}}\end{bmatrix}.\] 

This number is the ___ of the space spanned by the v's.

3. Prove that if a = 0, d = 0, or f = 0 (3 cases), the columns of U are dependent:

 \[U=\begin{bmatrix}{{{a}}}&{{{b}}}&{{{c}}} \\{{{0}}}&{{{d}}}&{{{e}}} \\{{{0}}}&{{{0}}}&{{{f}}}\end{bmatrix}.\] 

4. If a, d, f in Problem 3 are all nonzero, show that the only solution to Ux = 0 is x = 0. Then U has independent columns.

5. Decide the dependence or independence of

(a) the vectors  \( (1,3,2) \) ,  \( (2,1,3) \) , and  \( (3,2,1) \) .

(b) the vectors  \( (1, -3, 2) \) ,  \( (2, 1, -3) \) , and  \( (-3, 2, 1) \) .