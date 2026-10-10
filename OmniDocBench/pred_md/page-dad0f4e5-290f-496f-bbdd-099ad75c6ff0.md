
hence  \( p \sqcap_{G_{m}} q \) , as  \( \sqsupseteq_{m}^{n} \)  is  \( \sqcap \) -preserving. Conversely, if  \( p \sqcap_{G_{m}} q \)  then we have  \( r \in G_{m+1} \)  with p, q > r, as  \( \sqsupseteq_{m+1}^{n} \)  is edge-witnessing, showing that  \( \sqcap_{G_{m}} \subseteq \wedge_{m} \) . Thus P is a K-poset that is K-subabsorbing, by construction. ☐

## 3.3. Compatiblity. Throughout the rest of this section we assume that

(1) K is a fixed subcategory of the graph category G.

(2) P is a K-regular K-subabsorbing K-poset.

In particular, P is regular so  \( S^{P} \)  is Hausdorff, by [BBV23, Corollary 2.40]. As K-morphisms are co-injective, each level  \( P_{n} \)  is a minimal cap, by [BBV23, Proposition 1.21], which thus yields a minimal open cover  \( \{p_{S}: p \in P_{n}\} \)  of  \( S^{P} \) , by [BBV23, Proposition 2.8]. In particular,  \( p_{S} \neq \emptyset \) , for all  \( p \in P \) , i.e. P is also a prime  \( \omega \) -poset.

We are interested in continuous maps on  \( S^{P} \)  that are compatible with the given subcategory K. First, for any finite  \( \beth\subseteqP\timesP \) , let  \( \beth^{C} \)  denote the basic open subset of  \( C_{S^{P}}^{S^{P}} \)  corresponding to the open subset  \( \beth^{S} \)  of strong refiners defined in (2.3), i.e.

 \[\beth^{\mathbf{C}}=\{\phi\in\mathbf{C}_{\mathbf{S}^{\mathbf{P}}}^{\mathbf{S}^{\mathbf{P}}}:\beth\subseteq\beth_{\phi}\}=\{\phi\in\mathbf{C}_{\mathbf{S}^{\mathbf{P}}}^{\mathbf{S}^{\mathbf{P}}}:\forall p,q(q\sqsupseteq p\Rightarrow q_{\mathbf{S}}\supseteq\phi[\overline{{p_{\mathbf{S}}}}])\}.\] 

Definition 3.14. The K-compatible functions on  \( S^{P} \)  are given by

 \[\mathbf{C}_{\mathbf{K}}=\bigcap_{m\in\omega}\bigcup_{n\geq m}\bigcup_{\beth\in\mathbf{K}_{n}^{m}}\beth^{\mathbf{C}}=\{\phi\in\mathbf{C}_{\mathbf{S}^{\mathbf{P}}}^{\mathbf{S}^{\mathbf{P}}}:\forall m\in\omega\exists\beth\subseteq\mathbf{K}_{n}^{m}(\beth\subseteq\beth_{\phi})\}.\] 

Corollary 2.32 tells us that  \( C_{K} \)  has another basis consisting of open sets  \( \leftarrow_{K} \) , for relations  \( \leftarrow\subseteqP_{n}\timesP_{n} \)  defined on levels of P, where

 \[\leftarrow_{\mathbf{K}}=\leftarrow_{\mathbf{C}}\cap\mathbf{C}_{\mathbf{K}}=\{\phi\in\mathbf{C}_{\mathbf{K}}:\phi\subseteq\leftarrow_{\mathbf{S}}\}.\] 

However, many of these basic sets can be empty and our interest in K-like relations stems from the fact that these are the only ones for which  \( \leftarrow_{S} \)  can contain any  \( \phi \in C_{K} \) . We can even revert to a relation below  \( \leftarrow \)  which not just K-like but widely K-subfactorisable (note every widely K-subfactorisable  \( \leftarrow \)  is K-like, by Lemma 3.8, as P is K-subabsorbing).

Let us denote the widely K-subfactorisable relations on any  \( G \in K \)  by

 \[G^{\mathbf{K}}=\{\leftarrow\subseteq G\times G:\forall\;\geqslant\in\mathbf{K}_{H}^{G}\;(\;\leqslant\circ\;\leftarrow\circ\;\Rightarrow\;\mathrm{subfactors}\;\mathrm{into}\;\mathrm{some}\;\beth,\;\exists\;\in\mathbf{K}_{I}^{H}\})\}.\] 

Lemma 3.15. For any m,  \( m' \in \omega \) ,  \( \leftarrow \subseteq P_{m} \times P_{m'} \) ,  \( \leftarrow' \subseteq P_{m'} \times P_{m'} \)  and  \( \phi \in \leftarrow_{K} \cap \leftarrow'_{K} \) , we have some  \( n > \max(m, m') \)  and  \( \leftarrow \subseteq P_{n}^{K} \)  with  \( \phi \in \leftarrow_{K} \) ,  \( \leftarrow \leq \leftarrow \)  and  \( \leftarrow \leq \leftarrow' \) .

Proof. By Proposition 2.31, we have k > m with  \( \leftarrow_{k}^{\phi} \leftarrow_{k} \)  and  \( \leftarrow_{k}^{\phi} \leftarrow_{k} \) . By Proposition 3.11, we have P-subamalgamable  \( \geq \in K_{l}^{k} \) . As  \( \phi \in C_{K} \) , we have  \( \beth \in K_{n}^{l} \)  with  \( \beth \subseteq \beth_{\phi} \) . By Propositions 2.19 and 2.36,  \( \phi \subseteq (\beth \circ \leq_{n}^{l})_{S} \)  and  \( \beth \circ \leq_{n}^{l} \subseteq \leftarrow_{l}^{\phi} \) . Now set

 \[\leftarrow^{\prime}=\leftarrow\circ\gg\circ\beth\subseteq_{n}^{l}\circ\ll^{\prime}\circ\gg\quad and\quad\leftarrow=\leq_{l}^{k}\circ\gg\circ\beth\subseteq_{n}^{l}\circ\ll\circ\gg_{l}^{k}.\] 

As  \( \beth\circ\leq_{n}^{l}\subseteq\leftarrow^{\prime} \) , it follows that  \( \leftarrow^{\prime} \)  is also a K-like relation satisfying  \( \phi\subseteq\leftarrow_{S}^{\prime} \) . The same then applies to the even larger relation  \( \leftarrow \) , which is also widely K-subfactorisable, by Lemma 3.3. As  \( \beth\circ\leq_{n}^{l}\subseteq\leftarrow_{l}^{\phi}\subseteq\leq_{l}^{k}\circ\leftarrow_{k}^{\phi}\circ\geq_{l}^{k} \)  and  \( \leftarrow_{k}^{\phi}\leftarrow_{k} \) ,

 \[\leftarrow\subseteq\leq_{l}^{k}\circ\geq_{l}^{k}\circ\leq_{l}^{k}\circ\leftarrow_{k}^{\phi}\circ\geq_{l}^{k}\circ\leq_{l}^{k}\circ\geq_{l}^{k}\subseteq\leq_{l}^{k}\circ\wedge_{k}\circ\leftarrow_{k}^{\phi}\circ\wedge_{k}\circ\geq_{l}^{k}\subseteq\leq_{l}^{m}\circ\leftarrow\circ\geq_{l}^{m}.\] 

This shows that  \( \leftarrow\subseteq\leftarrow \)  and, likewise,  \( \leftarrow\subseteq\leftarrow^{\prime} \)  as well.

Corollary 3.16. The open sets  \( \{\leftarrow_{K}:n\in\omega and\leftarrow\inP_{n}^{K}\} \)  form a basis for  \( C_{K} \) .

Proof. This is immediate from Lemma 3.15 once we note  \( \leftarrow\subseteq\leftarrow \)  implies  \( \leftarrow_{K}\subseteq\leftarrow_{K} \) .