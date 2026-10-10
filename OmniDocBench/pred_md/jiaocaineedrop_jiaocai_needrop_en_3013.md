
1. 获取已知数据 \( X_{0}, Y_{0}, f, X_{S1}, Y_{S1}, Z_{S1}, \phi_{1}, \omega_{1}, K_{1}, X_{S2}, Y_{S2}, Z_{S2}, \phi_{2}, \omega_{2}, K_{2} \) 

2. 量测像点坐标 \( X_{1}, Y_{1}, X_{2}, Y_{2} \) 

3. 由外方位线元素计算基线分量 \( B_{x}, B_{y}, B_{z} \) 

4. 由外方位角元素计算像空间辅助坐标 \( X_{1}, Y_{1}, Z_{1}, X_{2}, Y_{2}, Z_{2} \) (需要旋转矩阵R)

 \[\boldsymbol{B}_{X}=\boldsymbol{X}_{s2}-\boldsymbol{X}_{s1}=\boldsymbol{N}_{1}\boldsymbol{X}_{1}-\boldsymbol{N}_{2}\boldsymbol{X}_{2}\] 

 \[N_{1}=\frac{B_{x}Z_{2}-B_{z}X_{2}}{X_{1}Z_{2}-X_{2}Z_{1}}\] 

 \[\boldsymbol{B}_{Y}=\boldsymbol{Y}_{s2}-\boldsymbol{Y}_{s1}=\boldsymbol{N}_{1}\boldsymbol{Y}_{1}-\boldsymbol{N}_{2}\boldsymbol{Y}_{2}\] 

 \[\boldsymbol{B}_{z}=\boldsymbol{Z}_{s2}-\boldsymbol{Z}_{s1}=\boldsymbol{N}_{1}\boldsymbol{Z}_{1}-\boldsymbol{N}_{2}\boldsymbol{Z}_{2}\] 

 \[N_{2}=\frac{B_{x}Z_{1}-B_{z}X_{1}}{X_{1}Z_{2}-X_{2}Z_{1}}\] 

5. 计算投影系数 \( N_{1}, N_{2} \) 

6. 计算地面坐标 \( X_{A}, Y_{A}, Z_{A} \) 

## 利用立体像对确定地面点

共线条件严密解法

• 空间后方交会-空间前方交会解法