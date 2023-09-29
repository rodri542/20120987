# PROGRAMACION LOGICA Y FUNCIONAL 
<<<<<<< HEAD

 ## Funciones en clisp

 En Lisp, las funciones se definen utilizando la construcción (defun nombre () ...), donde nombre es el nombre de la función y () contiene los parámetros de la función. Las funciones pueden tomar cero o más argumentos y pueden realizar cálculos, procesamiento de datos o cualquier tarea específica.

 ```lisp

(defun cuadro()
  (princ "Dame la base:")
  (setq x (read))
  (setq resultado (* x x)))

 ```
 En el ejemplo anterior, se define la función cuadro que no toma ningún argumento (() está vacío). La función solicita al usuario la base de un cuadro, lee la entrada del usuario y calcula el área del cuadro.

 ## Escritura de Operaciones en Lisp

Las operaciones en Lisp se realizan mediante funciones y operadores incorporados. Por ejemplo, la multiplicación se realiza con *, la división con /, la exponenciación con expt, y así sucesivamente. Las operaciones pueden ser anidadas y se evalúan de manera recursiva.


 ```lisp

(setq resultado (* x x))

 ```

 En este ejemplo, se calcula el cuadrado de la variable x y se almacena en la variable resultado utilizando el operador *.

### Tareas del documento
  1. [Tarea1-Suma de dos numeros](#tarea1-suma-de-dos-numeros)
  2. [Tarea2-Areas y perimetro de figuras geometricas](#tarea2-areas-y-perimetro-de-figuras-geometricas)
  3. [Tarea3-Descabechamiento](#tarea3-descabechamiento)
  - [Tarea3-Ejercicios con condicionantes](#tarea3-ejercicios-con-condicionantes)
  - [Tarea -Figuras Geometricas con Lambdas](#tarea--figuras-geometricas-con-lambdas)

# Tareas ->

## Tarea1-Suma de dos numeros
Se piden 2 numeros al usuario, los suma e imprime el resultado

``` lisp 

(defun sumaNumero()
(princ "Dame un numero")
(setq num1 (read))
(princ "Dame un segundo numero: ")
(setq num2 (read))
(setq resultado (+ num1 num2))
(write resultado)
)


```

## Tarea2-Areas y perimetro de figuras geometricas 

En esta tarea se solicita que se realicen 10 funciones para sacar el area y 10 para sacar los volumenes de diferentes figuras geometricas

``` lisp 

(defun cuadro()
  (princ "Dame la base:")   ; Solicita la base del cuadro al usuario
  (setq x (read))           ; Lee la entrada del usuario y almacena en x
  (setq resultado (* x x))) ; Calcula el área del cuadro (base * base)

(defun rectangulo()
  (princ "Dame la base: ")  ; Solicita la base del rectángulo al usuario
  (setq x (read))           ; Lee la entrada del usuario y almacena en x
  (princ "Dame la altura: ") ; Solicita la altura del rectángulo al usuario
  (setq y (read))           ; Lee la entrada del usuario y almacena en y
  (setq resultado (* x y))) ; Calcula el área del rectángulo (base * altura)

(defun triangulo()
  (princ "Dame la base: ")  ; Solicita la base del triángulo al usuario
  (setq x (read))           ; Lee la entrada del usuario y almacena en x
  (princ "Dame la altura: ") ; Solicita la altura del triángulo al usuario
  (setq y (read))           ; Lee la entrada del usuario y almacena en y
  (setq resultado (/ (* x y) 2 ))) ; Calcula el área del triángulo (base * altura / 2)

(defun circulo()
(princ "Dame el radio: ")
(setq x (read))
(setq resultado ( * (expt x 2) 3.1416)))

(defun trapecio()
(princ "Dame un numero: ")
(setq x (read))
(princ "Dame un numero: ")
(setq y (read))
(princ "Dame un numero: ")
(setq z (read))
(setq resultado ( / ( * (+ x y) z ) 2 )))

(defun paralelogramo()
(princ "Dame un numero: ")
(setq x (read))
(princ "Dame un numero: ")
(setq y (read))
(setq resultado (* x y)))

(defun rombo()
(princ "Dame un numero: ")
(setq x (read))
(princ "Dame un numero: ")
(setq y (read))
(setq resultado ( / (* x y) 2 )))

(defun pentagonoregular()
(princ "Dame un numero")
(setq x (read))
(princ "Dame un numero")
(setq y (read))
(setq resultado ( / (* x y) 2 )))

(defun hexagonoregular()
(princ "Dame un numero: ")
(setq x (read))
(princ "Dame un numero: ")
(setq y (read))
(setq resultado ( / (* x y) 2 )))

(defun circulosectorial()
(princ "Dame un numero: ")
(setq x (read))
(setq resultado (expt (* (/ x 360) 3.1416) 2 )))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;volumenes


(defun cubo()
(princ "Dame un numero: ")
(setq x (read))
(setq resultado (expt x 3)))

(defun paralelepipedo()
(princ "Dame un numero: ")
(setq x (read))
(princ "Dame un numero: ")
(setq y (read))
(princ "Dame un numero: ")
(setq z (read))
(setq resultado (* * x y z)))

(defun prismarectangular()
(princ "Dame un numero: ")
(setq x (read))
(princ "Dame un numero: ")
(setq y (read))
(princ "Dame un numero: ")
(setq z (read))
(setq resultado (* * x y z)))

(defun esfera()
(princ "Dame un numero: ")
(setq x (read))
(setq resultado (* (* (/ 4 3)3.1416 ) x 3)))

(defun cilindro(x y)
(princ "Dame un numero: ")
(setq x (read))
(princ "Dame un numero: ")
(setq y (read))
(setq resultado (* (* 3.1416 (expt x 2) y))))

(defun cono()
(princ "Dame un numero: ")
(setq x (read))
(princ "Dame un numero: ")
(setq y (read))
(princ "Dame un numero: ")
(setq z (read))
(setq resultado (* (* ( * (/ 1 3) 3.1415) (expt x 2)) y )))

(defun piramidecuadrada()
(princ "Dame un numero: ")
(setq x (read))
(princ "Dame un numero: ")
(setq y (read))
(setq resultado (* * (/ 1 3) (expt x ) y )))

(defun tetraedro()
(princ "Dame un numero: ")
(setq x (read))
(princ "Dame un numero: ")
(setq y (read))
(setq resultado (* * (/ 1 3) x y )))

(defun cilindrohueco()
(princ "Dame un numero: ")
(setq x (read))
(princ "Dame un numero: ")
(setq y (read))
(princ "Dame un numero: ")
(setq z (read))
(setq resultado (* * 3.1415 (- (expt x 2) (expt y 2) ) z )))

(defun cilindrooblicuo()
(princ "Dame un numero: ")
(setq x (read))
(princ "Dame un numero: ")
(setq y (read))
(setq resultado (* x y)))

```

## Tarea3-Descabechamiento

``` lisp

  (defun busca (lista)
  (princ (car lista))                   ; Imprime el primer elemento de la lista
  (princ " ")
  (if (not (null lista))                ; Comprueba si la lista no está vacía
      (busca (cdr lista))               ; Llama recursivamente a la función con el resto de la lista
  )
  (format t "~%")                       ; Imprime una nueva línea
  (princ "dame un numero a buscar ")    ; Solicita al usuario un número para buscar
  (setq x (read))                       ; Lee la entrada del usuario y almacena en la variable x
  (if (member x lista)                  ; Comprueba si x está en la lista
      (princ "Si esta el numero")       ; Si está en la lista, imprime este mensaje
      (princ "no existe el numero"))    ; Si no está en la lista, imprime este mensaje
)

```

## Tarea4-Ejercicios con condicionantes

 Resolver los siguientes problemas utilizando if, case, when, unless, cond 

### Ejercicios

1. Una tienda que vende pantalones Dickies al menudeo y al mayoreo tiene
   las siguientes tarifas, si se compran menos de 5 pantalones estos se
   cobran a su precio normal, en caso de que se copren 5 o mas pero
   menos de 12 , se les descuenta el 15% en cada pantalon, si se compran
   mas de 12 se les descuenta 30% en cada pantalon.  Escriba un programa
   que pida como dato de entrada el numero de pantalones que se desean
   comprar y con ello imprima el total a pagar por la compra hecha.

    ``` lisp

    (defun pantalon()
    (princ "Dame la cantidad de pantalones Dickies a comprar $1,000 cu: ")

    (setq x (read))                                       ; Lee la cantidad de pantalones ingresada por el usuario
    (cond 
    ((> x 5)
        (format t "Su total es: "(* 1000 x)))              ; Calcula el total sin descuento para más de 5 pantalones

    ((and (>= x 5) (<= x 12))
        (format t "Su total es: "(*(* 1000 x) 0.085)))     ; Calcula el total con un descuento del 8.5% para 5 a 12 pantalones

        ((< x 12)
        (format t "Su total es: "(*(* 1000 x) 0.070)))     ; Calcula el total con un descuento del 7% para menos de 12 pantalones

        (t
        (format t "El número no es un número válido."))))  ; Mensaje de error si la cantidad no es válida

    ```

    
2. Escriba un programa para determinar si un solicitante puede lograr un
   préstamo. Deberá pedir los siguientes datos para cada solicitante:
   Nombre, historia crediticia(‘b’buena o ‘m’ mala), cantidad pedida,
   salario anual, y valor de otras propiedades.  El banco solo
   considerará a los solicitantes con un estado de crédito bueno.  De
   aquellos, solo aceptara los que tengan mas de 6 puntos.  Los puntos
   se obtienen como sigue: 5 puntos si el salario es 50% del préstamo o
   más.  3 puntos si el salario es por lo menos 25% pero menos de 50%
   del préstamo.  1 punto si el salario es por lo menos 10% pero menos
   de 25% del préstamo.  5 puntos si se tiene otra propiedad del doble
   del préstamo o mas.  3 puntos si se tiene otra propiedad igual al
   préstamo pero menor del doble.

   ``` lisp


   ```


3. Escriba un programa que pida una letra minúscula, el programa deberá
   imprimir si la letra es una vocal (a,e,i,o,u), semivocal (y) o una
   consonante.

   ```lisp


   ```

4. Para determinar si un año es bisiesto o no debe de cumplir las
   siguiente regla: Ser divisible entre 4 y no divisible entre 100 o
   bien divisible entre 400.  Escriba un programa que pida como entrada
   el año e imprima si el año es bisiesto o no.

   ``` lisp

   ```

5. Escriba un programa que pida el numero de mes (del 1 al 12 ) e
   imprima el numero de dias que tiene el mes, donde:

   • El mes 2 tiene 28 dias
   • Los meses 4,6,9 y 11 tienen 30 dias
   • Los meses 1,3,5,7,8,10 y 12 tienen 31 dias

   Si da un mes diferente a los anteriores debera imprimir el mensaje
   “MES ERRONEO”.

   ```lisp


   ```




## Tarea5 -Figuras Geometricas con Lambdas

AL igual que la primer tarea de las figuras geometricas está se encarga de solicitar los numeros y encontrar las areas y volumenes de las figuras pero ahora utilizando lambdas simplificando asi el codigo

```lisp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;lambdas

(defvar cuadrado (lambda (x) (* x x)))
(defvar multiplicacion (lambda (x y) (* x y)))
(defvar divicion360 (lambda (x y) (/ x 360)))
(defvar divicion2 (lambda (x) (/ x 2)))
(defvar divicion (lambda (x y) (/ x y)))
(defvar sumacion (lambda (x y) (+ x y)))
(defvar restacion (lambda (x y) (- x y)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;areas
(defun cuadro()
(princ "dame un numero ")
(setq x(read))
(funcall cuadrado x))

(defun rectangulo()
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(funcall multiplicacion x y))

(defun triangulo()
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(funcall divicion2 (funcall multiplicacion x y)))

(defun circulo()
(princ "dame un numero ")
(setq x(read))
(funcall multiplicacion (funcall cuadrado x) 3.1416))

(defun trapecio()
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(princ "dame un numero ")
(setq z(read))
(funcall divicion2 (funcall multiplicacion (funcall sumacion x y) z )))

(defun paralelogramo()
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(funcall multiplicacion x y))

(defun rombo()
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(funcall divicion2 (funcall multiplicacion x y)))

(defun pentagonoregular()
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(funcall divicion2 (funcall multiplicacion x y)))

(defun hexagonoregular()
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(funcall divicion2 (funcall multiplicacion x y)))

(defun circulosectorial()
(princ "dame un numero ")
(setq x(read))
(funcall cuadrado (funcall multiplicacion (funcall divicion360 x) 3.1416 )))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;volumenes
(defun cubo(x)
(princ "dame un numero ")
(setq x(read))
(funcall multiplicacion x (funcall cuadrado x)))

(defun paralelepipedo()
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(princ "dame un numero ")
(setq z(read))
(funcall multiplicacion z (funcall multiplicacion x y)))

(defun prismarectangular(x y z)
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(princ "dame un numero ")
(setq z(read))
(funcall multiplicacion z (funcall multiplicacion x y)))

(defun esfera(x)
(princ "dame un numero ")
(setq x(read))
(funcall multiplicacion x (funcall multiplicacion  3.1416 (funcall divicion2 4 3))))

(defun cilindro(x y)
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(funcall multiplicacion y (funcall multiplicacion 3.1416 (funcall cuadrado x))))

(defun cono()
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(princ "dame un numero ")
(setq z(read))
(funcall multiplicacion y (funcall multiplicacion (funcall cuadrado x) (funcall multiplicacion 3.1416 (funcall divicion 1 3)))))

(defun piramidecuadrada()
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(funcall multiplicacion y (funcall multiplicacion (funcall divicion 1 3)(funcall cuadrado x))))

(defun tetraedro()
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))

(funcall multiplicacion y (funcall multiplicacion x (funcall divicion 1 3))))

(defun cilindrohueco()
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(princ "dame un numero ")
(setq x(read))
(funcall multiplicacion z (funcall multiplicacion 3.1416 (funcall restacion (funcall cuadrado x)(funcall cuadrado y)))))

(defun cilindrooblicuo()
(princ "dame un numero ")
(setq x(read))
(princ "dame un numero ")
(setq y(read))
(funcall multiplicacion x y))

```
=======
 ## Tarea 1 areas y perimetros de figuras geometricas
 ### 
>>>>>>> 4473b16 (Mensaje descriptivo del commit)
