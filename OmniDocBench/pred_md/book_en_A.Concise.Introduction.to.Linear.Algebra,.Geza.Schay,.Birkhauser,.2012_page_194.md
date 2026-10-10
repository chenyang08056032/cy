
 \[S(\mathbf{x})=\begin{bmatrix}x_{2}+x_{3}\\ x_{3}\end{bmatrix}\] 

and

 \[T(\mathbf{x})=\begin{bmatrix}x_{1}-x_{2}\\ x_{1}+x_{3}\end{bmatrix}.\] 

Then  \( Q = S + T \)  and R = cT are the linear transformations given by

 \[Q(\mathbf{x})=\begin{bmatrix}x_{1}+x_{3}\\ x_{1}+2x_{3}\end{bmatrix}\] 

and

 \[R(\mathbf{x})=\begin{bmatrix}c\left(x_{1}-x_{2}\right)\\ c\left(x_{1}+x_{3}\right)\end{bmatrix}.\] 

With Definition 4.2.4 Theorems 4.2.8 and 4.2.9 lead to the following theorem.

Theorem 4.2.10. (The Linear Transformations from U to V Form a Vector Space, Which Is Isomorphic to  \( M_{m,n} \) ). Let  \( L(U,V) \)  denote the set of all linear transformations from an n-dimensional vector space U to an m-dimensional vector space V, and let  \( A = (\mathbf{a}_{1}, \mathbf{a}_{2}, \ldots, \mathbf{a}_{n}) \)  be an ordered basis for U,  \( B = (\mathbf{b}_{1}, \mathbf{b}_{2}, \ldots, \mathbf{b}_{m}) \)  an ordered basis for V, and  \( T_{A,B} \)  the  \( m \times n \)  matrix that represents any  \( T \in L(U,V) \)  relative to these bases. Then

1.  \( L(U,V) \) , together with addition and scalar multiple of transformations as in Definition 4.2.4, is a vector space.

2. The mapping M from  \( L(U,V) \)  to the vector space  \( M_{m,n} \)  of all  \( m \times n \)  matrices \( ^{6} \)  given by  \( M(T) = T_{A,B} \)  is linear and an isomorphism. Hence  \( L(U,V) \)  is mn-dimensional.

Proof. 1.  \( L(U,V) \)  is clearly nonempty: the zero mapping O is in it. Theorem 4.2.9 shows that  \( L(U,V) \)  is closed under addition and multiplication by scalars. The vector space axioms for  \( L(U,V) \)  follow from the corresponding ones in V for every x in  \( \mathbf{y}=T(\mathbf{x}) \) . In particular, the zero element is the zero mapping O, and the element -T is the mapping  \( (-1)T \) .

2. Let  \( S, T \in L(U, V) \)  and a, b any scalars. Then, by Theorem 4.1.3, for all  \( x \in U \) ,  \( \mathbf{y} = T(\mathbf{x}) \)  becomes in terms of coordinates  \( \mathbf{y}_{B} = T_{A,B} \mathbf{x}_{A} = M(T) \mathbf{x}_{A} \) . Similarly  \( \mathbf{y} = (aS + bT)(\mathbf{x}) \)  becomes

 \[\mathbf{y}_{B}=\left(a S+b T\right)_{A,B}\mathbf{x}_{A}=M\left(a S+b T\right)\mathbf{x}_{A}.\]