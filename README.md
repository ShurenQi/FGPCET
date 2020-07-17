# Fast Generic Polar Complex Exponential Transform
This repository is an implementation of the method in   
"Color image zero-watermarking based on Fast Quaternion Generic Polar Complex Exponential Transform", *Signal Processing: Image Communication*, 2020.  
Code implemented by Shuren Qi ( i@srqi.email ). All rights reserved.  

## Overview
In 2011, the generic polar complex exponential transform (GPCET) was proposed by Hoang et al. [1]. As a generalization of various harmonic function-based moments, GPCET has numerous beneficial mathematical properties such as orthogonality, completeness and rotation-invariance. The main distinctive property of GPCET is that the computed coefficients can put emphasis on certain portions of an image by changing a parameter, which is similar to the time-frequency analysis tools. Later, in [2], Hoang et al. extended and improved the research of [1]; in [3], a fast computation strategy for GPCET based on the recurrence relations and geometrical symmetry was proposed. However, these methods basically rely on zero-order approximation (ZOA) in Cartesian coordinate system, namely direct calculation. Three defects limit its practical application: computationally expensive, numerically unstable and inaccurate.  
When a large number of coefficients are needed or large-sized images are used, the complexity of direct calculation may become excessively high. Since these requirements are common in practical applications, we propose a fast Fourier transform (FFT)-based calculation method in polar coordinate system, namely fast generic polar complex exponential transform (FGPCET). Compared with the direct calculation method, the proposed FGPCET has the following three advantages  
• **Low Complexity.** Suppose *K* order GPCET coefficients need to be calculated and the up-sampling parameter *M* is proportional to the image size *N*. If only multiplication is considered, complexity of the direct calculation is *O(N^2·K^2)* . In contrast, the FGPCET has a lower complexity *O(N^2·logN)*  due to the use of the 2D-FFT.  
• **Numerical Stability.** For the direct calculation, it is numerically unstable due to the unboundedness (very high values near the origin) of the radial kernels. For the FGPCET, the numerical instability is eliminated.  
• **High Precision.** Since the up-sampling is used, i.e., *M>>N* , numerical error and geometric error of the FGPCET are much smaller than those of the direct calculation scheme.  
[1] T.-V. Hoang, S. Tabbone, Generic polar harmonic transforms for invariant image description, in: Proceedings of the 18th IEEE International Conference on Image Processing, 2011, pp. 829–832.  
[2] T.-V. Hoang, S. Tabbone, Generic polar harmonic transforms for invariant image representation, Image Vis. Comput. 32 (8) (2014) 497-509.  
[3] T.-V. Hoang, S. Tabbone, Fast generic polar harmonic transforms, IEEE Trans. Image Process. 23 (7) (2014) 2961-2971.  

