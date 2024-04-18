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
Para realizar este cálculo, se consideró el esquemático de la Figura que se muestra a continuación:

Donde se detallan las resistencias, capacitancias y ramas a tomar en cuenta al establecer el modelo RC. Primeramente se calculó los tiempos de contaminación, iniciando con el $t_{cdr}$:

$t_{cdr} = \left(\frac{R}{2} + \frac{R}{2}\right)(12C + 3C) + 4C\left(\frac{R}{2}\right) + 4C\left(\frac{R}{2}\right) + RC\left(3 + 450\mu\right)$

$t_{cdr} = 15RC + 2RC + 2RC + 19.98 ps$

Donde $19,98 ps$, corresponde al aporte de tiempo que agrega el inversor conectado a la capacitancia parásita en la conexión con la salida de la compuerta compleja.

$t_{cdr} = 146.52 ps$

Seguidamente, se calculó el tiempo $t_{cdf}$:

$t_{cdf} = \left(\frac{R}{2} + \frac{R}{2}\right)(12C + 3C) +  \left(\frac{R}{2}\right)(12C + 3C) $

$t_{cdf} = 15RC + \frac{15}{2}RC + 19.98 ps$

$t_{cdf} = 169.73 ps $

Luego se calcularon los tiempos de propagación, primeramente el $t_{pdr} $:

$t_{pdr} = \left(\frac{R}{2} + \frac{R}{2}\right)(12C + 3C) + 19.98 ps$

$t_{pdr} = \frac{15}{2}RC + \frac{15}{2} RC+ 19.98 ps$

$t_{pdr} = 119.88 ps$

Finalmente se calculó el tiempo $t_{pdf}$

$t_{pdf} = \left(\frac{R}{2} + \frac{R}{4}\right)(12C + 3C) + 19.98 ps$

$t_{pdf} =  \frac{45}{4}RC + \frac{15}{2} RC+ 19.98 ps$

$t_{pdf} = 144.86 ps$

#### Segunda solución: Compuertas simples




##### Método de Elmore para estimación del retardo
Para el cálculo de los tiempos de retardo por el método de Elmore para esta compuerta, se tomó en cuenta el esquemático mostrado a continuación:

En base a este modelo, se calculó cada uno de los tiempos de contaminación y propagación, primeramente el $t_{cdr}$:
$t_{pdr} = \left(\frac{R}{2} + \frac{R}{2}\right)(6C + 3C) + 4C\left(\frac{R}{2}\right)3C + \frac{R}{2}(3C + 2C + 450\mu C)$

$t_{pdr} = 9RC + 2RC + 3RC + (\frac{5}{2}+ 450\mu)RC$

$t_{pdr} = 109.89 ps$

Seguidamente, se calculó el tiempo $t_{pdf}$:

$t_{pdf} = \frac{R}{2}(6C + 3C) + \frac{R}{2}(3C + 450\mu C)$

$t_{pdf} =39.96 ps$

Luego los tiempos de propagación $t_{pdr}$ y $t_{pdf}$:

$t_{pdr} = \frac{R}{2}(6C + 3C) + \frac{RC}{2}(9 + 450\mu C)$

$t_{pdr} = 59.94 ps$

$t_{pdf} = \frac{R}{4}(6C + 3C) + \frac{R}{4}(3C + 450\mu C)$

$t_{pdf} = 19.98 ps$

### Parte 2. Verificación de la funcionalidad lógica y eléctrica de los circuitos mediante simulación

### Parte 3. Implementación de los *Layouts* de los circuitos
