# Tarea 2 del curso de Introducción al diseño de circuitos integrados

## Estudiantes
- Jesús Rojas Vargas
- Brayan Montenegro Elizondo

## Referencias
[1] N. Weste and D. Harris, CMOS VLSI Design: A Circuits and Systems Perspective, 4 edition. Boston: Addison-Wesley, 2010.

[2] Process and Device Specification XH018 - 0.18 μm  Modular Mixed Signal HV CMOS, PDS-01813. Release 7.0.1. XFAB Semiconductor Foundries, Nov. 2017.

[3] R. L. Boylestad, Electronic Devices and Circuit Theory, Pearson Educación, 2002.

## Desarrollo

### Parte 1. Cálculos de esfuerzo lógico, potencia promedio, tiempos de retardo $t_{pdr}$, $t_{pdf}$ y de contaminación $t_{cdr}$, $t_{cdf}$

Este apartado se debe resolver el problema 9.4 de [1] que dice: "Design a static CMOS circuit to compute $F = (A + B)(C + D)$ with least delay. Each input can present a maximum of 30 $\lambda$ of transistor width. The output must drive a load equivalent to 500 $\lambda$ of transistor width. Choose transistor sizes to achieve least 
delay and estimate this delay in $\tau$." Para esto se plantean **dos** posibles soluciones, una con compuerta compleja OAI22 y otra con compuertas simples (NANDs, NORs e inversores). Para cada solución se realiza el análisis de esfuerzo lógico y la determinacion del tiempo de retardo mediante la aproximación de Elmore.

#### Primera solución: Compuerta compleja (OAI22+Inv)

Se comienza determinando el retardo mediante el analisis de esfuerzo lógico. Como la carga a llevar es de 500 $\lambda$ y cada entrada presenta un máximo de 30 $\lambda$ entonces el esfuerzo eléctrico del camino es de: $H=\frac{500}{30}=16.7$, además el esfuerzo de ramificación es de $B=1$ y el número de etapas $N=2$. Se sabe tambien que el esfuerzo logico de camino es $G=2\cdot1$. Con esto se puede determinar el esfuerzo de camino $F=GBH=2\cdot1\cdot16.7=33.3$. Por último, se determina el retardo $D$ como:

$D=2\cdot F^{\frac{1}{2}} + P$, donde $P=4+1=5$.

$D=2\cdot 33.3^{\frac{1}{2}} + 5 = 16.5\tau$. 

En este caso $\tau$ corresponde a $3RC$ que se definió en la primera tarea como aproximadamente $20ps$

Con esto $D=330 ps$.

Para determinar el tamaño del inversor de salida se utiliza la ecuacion:

$C_{in} = \frac{C_{out}\cdot g_i}{\hat{f}}$

$C_{in} = \frac{500 \lambda \cdot 1}{5.77}$

$C_{in} = 87 \lambda$

##### Método de Elmore para estimación del retardo

#### Segunda solución: Compuertas simples

### Parte 2. Verificación de la funcionalidad lógica y eléctrica de los circuitos mediante simulación

### Parte 3. Implementación de los *Layouts* de los circuitos
