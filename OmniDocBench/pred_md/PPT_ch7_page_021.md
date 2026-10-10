
Parallel processing of products on the computer is facilitated by a variant of (3) for computing C = AB, which is used by standard algorithms (such as in Lapack). In this method, A is used as given, B is taken in terms of its column vectors, and the product is computed columnwise; thus,

 \[(5)\mathbf{A}\mathbf{B}=\mathbf{A}[\mathbf{b}_{1}\mathbf{\varepsilon}\mathbf{b}_{2}\ldots\mathbf{\varepsilon}\mathbf{b}_{p}]=[\mathbf{A}\mathbf{b}_{1}\mathbf{\varepsilon}\mathbf{A}\mathbf{b}_{2}\ldots\mathbf{\varepsilon}\mathbf{A}\mathbf{b}_{p}].\] 

Columns of B are then assigned to different processors (individually or several to each processor), which simultaneously compute the columns of the product matrix  \( Ab_{1} \) ,  \( Ab_{2} \) , etc.