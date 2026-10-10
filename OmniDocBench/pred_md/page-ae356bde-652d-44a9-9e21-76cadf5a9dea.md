
This model in [35] is equivalent to our construction when the sign is flipped. Notice that

 \[U_{i}=Z_{8i+1}Z_{8i+3}Z_{8i+5}Z_{8i+7}\] 

is a symmetric operator, we have

 \[\left(-\sum_{I}\tilde{P}_{I,I+1}\right)\prod_{i=1}^{[L/8]}U_{i}=\begin{cases}\prod_{i=1}^{[L/8]}U_{i}\left(-\sum_{I}P_{I,I+1}\right)&L\equiv0\mod8\\\prod_{i=1}^{[L/8]}U_{i}\left(-\sum_{I}P_{I,I+1}-\bar{P}_{L/4-1,L/4}-\bar{P}_{L/4,L/4+1}\right)&L\equiv4\mod8\end{cases}\] 

where

 \[\begin{align*}P_{I,I+1}&=\frac{1}{4}(1+Z_{4I-3}X_{4I-1}Z_{4I+1})(1+Z_{4I-1}X_{4I+1}Z_{4I+3}),\\\bar{P}_{L/4-1,L/4}&=\frac{1}{4}(1+Z_{L-7}X_{L-5}Z_{L-3})(1-Z_{L-5}X_{L-3}Z_{L-1}),\\\bar{P}_{L/4,1}&=\frac{1}{4}(1-Z_{L-3}X_{L-1}Z_{1})(1+Z_{L-1}X_{1}Z_{3}).\end{align*}\] 

Thus the local projector is  \( P_{I,I+1} \)  with exceptions on the boundary, which correspond to local symmetric defects. Since a phase is at the thermodynamic limit, the phase realized in [35] is equivalent to

 \[H=-\sum_{I}P_{I,I+1}.\] 

The component of  \( P_{I,I+1} \)  in each sector can be expanded as

 \[\begin{aligned}P_{e}=\frac{1}{4}\begin{vmatrix}ee&e&s&s&r^{2}&r^{2}&sr^{2}&sr^{2}\\e&1&1&-1&1&&&\\s&1&1&-1&1&&&\\r^{2}&r^{2}&&&-1&-1&1&-1\\sr^{2}&sr^{2}&&&1&1&-1&1\\\end{vmatrix},\quad P_{s}=\frac{1}{4}\begin{vmatrix}es&se&sr^{2}&r^{2}&r^{2}&sr^{2}\\e&1&1&-1&1&&\\s&e&1&-1&1&&\\sr^{2}&r^{2}&&&-1&-1&1\\r^{2}&sr^{2}&&&1&1&-1&1\\\end{vmatrix},\\P_{r^{2}}=\frac{1}{4}\begin{vmatrix}e&r^{2}&r^{2}&e&s&sr^{2}&sr^{2}&s\\r^{2}&e&1&1&1&-1&&\\s&r^{2}&e&1&1&-1&&\\sr^{2}&s&1&1&-1&1&&\\sr^{2}&s&1&1&-1&1&&\\\end{vmatrix},\quad P_{sr^{2}}=\frac{1}{4}\begin{vmatrix}e&sr^{2}&sr^{2}&e&s&r^{2}&r^{2}&s\\e&sr^{2}&&&1&1&1&-1\\s&r^{2}&e&1&1&-1&&\\sr^{2}&s&1&1&-1&1&&\\sr^{2}&s&1&1&-1&1&&\\\end{vmatrix}.\end{aligned}\] 

Define

 \[\begin{align*}m_{e}&=\frac{\left|e\ e\ s\ s\ r^{2}\ r^{2}\ sr^{2}\ sr^{2}\right|}{e\ \left|1\ 1\ -1\ -1\ \right|},\quad m_{s}=\frac{\left|e\ s\ s\ e\ sr^{2}\ r^{2}\ r^{2}\ sr^{2}\right|}{s\ \left|1\ 1\ -1\ 1\ \right|},\\m_{r^{2}}&=\frac{\left|e\ r^{2}\ r^{2}\ e\ s\ sr^{2}\ sr^{2}\ sr^{2}\ s\right|}{r^{2}\ \left|1\ 1\ 1\ -1\ \right|},\quad m_{sr^{2}}=\frac{\left|e\ sr^{2}\ sr^{2}\ e\ s\ r^{2}\ r^{2}\ s\right|}{sr^{2}\ \left|1\ 1\ 1\ -1\ \right|}.\end{align*}\] 

Then

 \[P=\frac{1}{4}m^{\dagger}m.\] 

We can then extract the cocycle gauge by m:

 \[\omega(r^{2},r^{2})=\omega(sr^{2},r^{2})=\omega(r^{2},s)=\omega(sr^{2},s)=-1,\quad\omega(\mathrm{o t h e r s})=1.\] 

Thus the Hamiltonian of [35], for either L = 0 mod 8 or L = 4 mod 8, matches our model locally

 \[H=-\frac{1}{4}\sum_{i}m_{i,i+1}^{\dagger}m_{i,i+1}.\] 

And the MPO  \( A_{\sigma} \)  acts on ground state as  \( \mathrm{Tr}(A_{\sigma})|e\rangle = 2|e\rangle \) .

The third model is constructed similarly. After applying the CZ gate, the ground state is stabilized by the generator

 \[-X_{2n-1}=1,\quad-Z_{2n-2}X_{2n}Z_{2n+2}=1.\]