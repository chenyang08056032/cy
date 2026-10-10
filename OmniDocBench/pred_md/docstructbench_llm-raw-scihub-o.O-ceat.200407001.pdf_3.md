
 \[\Lambda_{\mathrm{r}}(\mathrm{r})\quad=\quad\lambda_{\mathrm{b e d}}(\mathrm{r})+\mathrm{K}_{1}\quad\mathrm{P e}_{0}\quad\frac{\mathrm{u}_{\mathrm{e}}}{\bar{\mathrm{u}}_{0}}\quad\mathrm{f}(\mathrm{R}-\mathrm{r})\lambda_{\mathrm{r}}\] 

The damping function  \( f(R-r) \)  remains the same as for the mass transfer (Eq.(11)), while the slope parameter and the damping parameter are slightly modified to, respectively,

 \[\mathbf{K}_{1}=\frac{1}{8}\] 

 \[\mathbf{K}_{2}=0.44+4\exp\left(-\frac{\mathbf{Re}_{0}}{70}\right)\] 

The heat release by adsorption, see [19] for  \( \Delta H_{ad} \) , is derived in the last term on the right-hand side of Eq.(14) from the change of solids load with time. This very term couples the energy with the mass balance, so that both have to be solved simultaneously in order to account for thermal effects. Heat transfer resistances to or in the particles are neglected. The terms  \( \delta_{\mathrm{bed}}(\mathrm{r}) \)  and  \( \lambda_{\mathrm{bed}}(\mathrm{r}) \)  in Eqs. (8), (10), (15) and (17) describe the isotropic effective diffusivity and thermal conductivity of the bed without fluid flow. Boundary and initial conditions for Eqs. (7) and (14) are recapitulated in Tab. 1.

On the basis of the above described general model various reductions are possible by neglecting thermal effects, the radial coordinate or gas-to-particle and intraparticle mass transfer resistances. From such reduced versions the following has been considered in more detail in the present work:

1) plug-flow model (1-D) with local equilibrium between the gas and the solids,

2) plug-flow model (1-D) with mass transfer resistance to the solids,

3) 2-D maldistribution model with local equilibrium,

4) 2-D maldistribution model with mass transfer resistance to the solids.

In our terminology “plug flow” means that every influence of the radial coordinate is neglected, including the influence of the wall on porosity and flow velocity. However, axial dispersion, as expressed by the dispersion coefficient  \( D_{ax} \) , is accounted for, so that the equation

 \[\bar{\psi}\frac{\partial\mathbf{Y}}{\partial\mathbf{t}}=\mathbf{D}_{\mathrm{a x}}\left(\frac{\partial^{2}\mathbf{Y}}{\partial\mathbf{z}^{2}}-\bar{\mathbf{u}}_{0}\frac{\partial\mathbf{Y}}{\partial\mathbf{z}}-[1-\bar{\psi}]\frac{\partial\mathbf{X}}{\partial\mathbf{t}}\frac{\mathbf{p}_{\mathrm{p}}}{\mathbf{p}_{\mathrm{f}}}\right.\] 

applies to the isothermal plug flow models (models 1 and 2). Eq. (20) is the classical, conventional way to model packed bed adsorbers. Local equilibrium corresponds, in terms of the two-layers model from [19], to the limiting case of  \( \beta_{f} \rightarrow \infty \)  and  \( \beta_{p} \rightarrow \infty \) . At this limit, equilibrium is considered to be sufficient for calculating the response of the solid phase to changes of the concentration in the fluid. Model 4 is our complete, highest order model, as previously outlined and in exact correspondence to [13–18]. Mainly this model has been evaluated for both isothermal and non-isothermal conditions.

## 4 Numerical Solution and its Validation

The partial differential equation or equations of the various models have been solved by the method of lines. The numerical calculations were conducted for different mesh densities, and the results accepted when the change of calculated gas moisture content values was lower than 0.05 % of the maximal difference of gas moisture content appearing in the packed bed. When the error was bigger, the mesh was made denser. Since the width of the concentration front is, in many cases, not much smaller than the length of the bed, equidistant meshes have been used in the axial direction. In the maldistribution models (models 3 and 4 in the previous section) meshes that were denser near the wall than in the center of the tube have been applied.

To check the numerical procedure, respective results have been compared with available analytical solutions. One of such a solution is attributed to Anzelius [1] and refers to model 2 after the classification of section 3, additionally reduced by neglecting axial dispersion ( \( D_{ax} = 0 \) ). Furthermore, it is assumed that the sorption equilibrium is throughout linear (“Henry’s law”), and that the bed is long. The mass transfer resistance is attributed to the fluid phase. Then, axial profiles can be derived to

 \[\frac{\mathrm{C}}{\mathrm{C}_{\mathrm{in}}}=\frac{1}{2}\mathrm{erfc}\left(\sqrt{\xi}-\sqrt{\tau}\right)\] 

with

 \[\xi=6\frac{\beta_{\mathrm{f}}}{\mathrm{d}_{\mathrm{p}}}\frac{\mathrm{z}}{\mathrm{u}}\frac{1-\psi}{\psi}\] 

and

 \[\tau=6\frac{\beta_{\mathrm{f}}}{\mathrm{d}_{\mathrm{p}}\mathrm{K}}\left(\mathrm{t}-\frac{\mathrm{z}}{\mathrm{u}}\right)\] 

In Eq. (21) the concentration of adsorbate in the gas phase, C, is used instead of the content, Y, assuming an ini-

Table 1. Boundary and initial conditions for models.

<table><tr><td rowspan="2">t &gt; 0</td><td rowspan="2">0 ≤ r ≤ R</td><td>z = 0</td><td></td><td>Y = Y_{in} or u_{0}(Y_{in} - Y) = -D_{ax} \frac{\partial Y}{\partial z}</td><td>T = T_{in}</td></tr><tr><td>z = L</td><td>\frac{\partial X}{\partial z} = 0</td><td>\frac{\partial Y}{\partial z} = 0</td><td>\frac{\partial T}{\partial z} = 0</td></tr><tr><td rowspan="2">t &gt; 0</td><td rowspan="2">0 ≤ z ≤ L</td><td>r = 0</td><td>\frac{\partial X}{\partial r} = 0</td><td>\frac{\partial Y}{\partial r} = 0</td><td>\frac{\partial T}{\partial r} = 0</td></tr><tr><td>r = R</td><td>\frac{\partial X}{\partial r} = 0</td><td>\frac{\partial Y}{\partial r} = 0</td><td>T = T_{w}</td></tr><tr><td>t = 0</td><td>0 ≤ r ≤ R</td><td>0 ≤ z ≤ L</td><td>X(r,z) = X_{0}</td><td>Y(r,z) = Y_{0}</td><td>T(r,z) = T_{0}</td></tr></table>