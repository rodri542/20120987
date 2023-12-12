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
(defun letra ()
(setq pnts 0)
(format t "Dame una letra minuscula. ~%")
(setq letra (read-char))
(cond
  ((or (char= letra #\a) (char= letra #\e) (char= letra #\i) (char= letra #\o) (char= letra #\u))
   (format t "Tu letra, ~a, es una vocal.~%" letra))

  ((char= letra #\y)
   (format t "Tu letra, ~a, es una semivocal.~%" letra))

  ((or (char= letra #\1) (char= letra #\2) (char= letra #\3) (char= letra #\4) (char= letra #\5) (char= letra #\6) (char= letra #\7) (char= letra #\8) (char= letra #\9) (char= letra #\0))
   (format t "Ingresaste, ~a, que es un numero.~%" letra))

  (t
   (format t "Tu letra, ~a, es una consonante.~%" letra))
   )
)

   ```

4. Para determinar si un año es bisiesto o no debe de cumplir las
   siguiente regla: Ser divisible entre 4 y no divisible entre 100 o
   bien divisible entre 400.  Escriba un programa que pida como entrada
   el año e imprima si el año es bisiesto o no.

   ``` lisp
(defun anio ()
  (format t "Dame un año y te diré si es bisiesto. ~%")
  (setq anio (read))
  (cond
    ((and (= (mod anio 4) 0) (not (= (mod anio 100) 0)))
     (format t "~a es bisiesto.~%" anio))

    ((= (mod anio 400) 0)
     (format t "~a es bisiesto.~%" anio))

    (t
     (format t "~a no es bisiesto.~%" anio)))
  )

   ```

5. Escriba un programa que pida el numero de mes (del 1 al 12 ) e
   imprima el numero de dias que tiene el mes, donde:

   • El mes 2 tiene 28 dias
   • Los meses 4,6,9 y 11 tienen 30 dias
   • Los meses 1,3,5,7,8,10 y 12 tienen 31 dias

   Si da un mes diferente a los anteriores debera imprimir el mensaje
   “MES ERRONEO”.

   ```lisp
   
(defun mes ()
(format t "Dame un mes, en numero. ~%")
(setq mes (read))
(cond
  ((= mes 2)
   (format t "Tu mes, ~a, tiene 28 dias.~%" mes))

  ((or (= mes 4) (= mes 6) (= mes 9) (= mes 11))
   (format t "Tu mes, ~a, tiene 30 dias.~%" mes))

  ((or (= mes 1) (= mes 3) (= mes 5) (= mes 7) (= mes 8) (= mes 10) (= mes 12))
   (format t "Tu mes, ~a, tiene 31 dias.~%" mes))

  (t
   (format t "Introduciste algo que no es un mes.~%"))
   )
)

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



## Proyecto CHATBOT - Cancer de pancreas y minecraft
Se hizo el chatbot para conocer mucho acerca de minecraft, el cancer de pancreas y se agregaron templates para conversación más fluida.

``` swi-prolog

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Definición de mobs en Minecraft
mob(zombie).
mob(esqueleto).
mob(creeper).
mob(enderman).
mob(araña).
mob(bruja).
mob(ghast).
mob(endermite).
mob(lobos).
mob(guardian).
mob(husky).
mob(pato).

% Definición de biomas en Minecraft
bioma(bosque).
bioma(llanura).
bioma(desierto).
bioma(montaña).
bioma(jungla).
bioma(oceano).
bioma(tundra).
bioma(bosque_oscuro).
bioma(bioma_nieve).
bioma(bioma_mushroom).
bioma(bioma_taal).
bioma(bioma_river).

% Definición de los elementos básicos
elemento(madera).
elemento(tronco).
elemento(hojas).
elemento(palos).
elemento(manzanas).
elemento(tablones).
elemento(piedra).
elemento(adoquin).
elemento(mineral_carbon).
elemento(mineral_hierro).
elemento(mineral_oro).
elemento(mineral_diamante).
elemento(mineral_lapislazuli).
elemento(mineral_redstone).
elemento(mineral_esmeralda).
elemento(mineral_cuarzo_nether).
elemento(mineral_netherita_antigua).
elemento(cobre_en_bruto).
elemento(fragmento_amatista).

%crafteos
craft(palos, [tablones]).
craft(tablones, [tronco]).
craft(arbol, [tronco, hojas, palos, manzanas]).
craft(tablones, [madera]).
craft(escalerilla, [tablones, tablones, tablones, tablones, tablones]).
craft(adoquin, [piedra]).
craft(carbon, [mineral_carbon]).
craft(lingote_hierro, [mineral_hierro]).
craft(lingote_oro, [mineral_oro]).
craft(diamante, [mineral_diamante]).
craft(tinte_lapislazuli, [mineral_lapislazuli]).
craft(polvo_redstone, [mineral_redstone]).
craft(esmeralda, [mineral_esmeralda]).
craft(cuarzo_nether, [mineral_cuarzo_nether]).
craft(fragmento_netherita, [mineral_netherita_antigua]).
craft(lingote_netherita, [fragmento_netherita]).
craft(valla, [tablones, tablones, tablones]).
craft(puerta_madera, [tablones, tablones]).
craft(trampa, [tablones, tablones, tablones, tablones]).
craft(mesa_trabajo, [tablones, tablones, tablones, tablones]).
craft(libro, [tablones, cuero]).
craft(cuadro, [tablones, tablones, tablones, tablones, pintura]).
craft(cartel, [tablones, tablones, tablones, palos, palos, palos]).
craft(estanteria, [tablones, tablones, tablones, libro]).
craft(cama, [tablones, tablones, tablones, lana, lana, lana]).
craft(letrero, [tablones, tablones, tablones, tablones, palos, palos, palos, palos, palos]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


eliza:-	writeln('Hola , mi nombre es  Eliza tu  chatbot,
	por favor ingresa tu consulta,
	usar solo minúsculas sin . al final:'),
	readln(Input),
	eliza(Input),!.
eliza(Input):- Input == ['Adios'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input):- Input == ['Adios', '.'],
	writeln('Adios. espero poder verte ayudado.'), !.
eliza(Input) :-
	template(Stim, Resp, IndStim),
	match(Stim, Input),
	% si he llegado aquí es que he
	% hallado el template correcto:
	replace0(IndStim, Input, 0, Resp, R),
	writeln(R),
	readln(Input1),
	eliza(Input1), !.





template([hola, mi, nombre, es, s(_), '.'], ['Hola', 0, 'como', estas, tu, '?'], [4]).
template([buendia, mi, nombre, es, s(_), '.'], ['buen dia', 'Como', estas, tu, 0, '?'], [4]).

template([hola, ',', mi, nombre, es, s(_), '.'], ['Hola', 0, 'Como', estas, tu, '?'], [5]).
template([buendia, ',', mi, nombre, es, s(_), '.'], ['Buendia', 'Como', estas, tu, 0, '?'], [5]).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%5Templates

template([hola, yo, soy, s(_),'.'], [y, quien, es, 0, '?'], [3]). 

template([hola, yo, tengo, s(_), anios, '.'], [de, verdad, tienes, 0, '?'], [3]).

template([yo, s(_), soy, el,hijo, de, s(_),'.'], [el,padre,de, 0, es, 1, '.'], [1, 6]).  

template([hola,quien, eres,'?'], [Hola, yo, soy, Eliza],[]). 

template([dime, que, es, lo,que,sabes,'?'], ["Yo se mucho de minecraft, del cancer de pancreas y se todo de ti :D"], []).



template([hola], ['¡Hola! ¿Cómo estás hoy?'], []).

template([estoy, bien, gracias, y, tú], ['Me alegra escuchar que estás bien. Yo también estoy bien, gracias por preguntar. ¿Cómo ha sido tu día hasta ahora?'], []).

template([mi, día, ha, sido, bueno], ['Eso suena genial. ¿Hubo algo en particular que hizo que tu día fuera tan bueno?'], []).

template([sí, tuve, un, buen, día, en, el, trabajo], ['¡Eso es fantástico! ¿Hay algo específico que destacarías sobre tu jornada laboral?'], []).

template([sí, logré, completar, un, proyecto, importante], ['¡Increíble logro! Debe ser gratificante. ¿En qué consistía el proyecto?'], []).

template([era, un, proyecto, de, desarrollo, de, software], ['Interesante. Soy curioso acerca de la programación. ¿Qué lenguaje de programación usaste?'], []).

template([utilicé, principalmente, Python, y, JavaScript], ['Dos lenguajes muy versátiles. ¿Tienes algún proyecto favorito en el que hayas trabajado recientemente?'], []).

template([sí, estoy, desarrollando, una, aplicación, web], ['¡Excelente! ¿De qué trata la aplicación web que estás desarrollando?'], []).

template([es, una, plataforma, para, compartir, recetas, de, cocina], ['Suena delicioso. ¿Cuál es tu receta favorita hasta ahora?'], []).

template([me, encanta, preparar, lasaña], ['¡La lasaña es increíble! ¿Tienes algún toque especial en tu receta de lasaña?'], []).

template([sí, le, agrego, una, capa, extra, de, queso, mozzarella], ['¡Eso suena delicioso! ¡Amo el queso mozzarella! ¿Tienes algún otro truco culinario que quieras compartir?'], []).

template([sí, también, me, gusta, experimentar, con, especias], ['Genial. Experimentar con especias puede hacer que los platos sean realmente únicos. ¿Tienes alguna especia favorita?'], []).

template([mi, favorita, es, el, comino], ['¡Buena elección! El comino agrega un toque delicioso. Cambiando de tema, ¿puedo saber más sobre ti? ¿Cómo te describirías en pocas palabras?'], []).

template([soy, una, persona, creativa, y, apasionada, por, la, tecnología], ['Eso suena fascinante. La creatividad y la tecnología van de la mano. ¿En qué áreas específicas te apasiona trabajar?'], []).

template([me, encanta, el, diseño, gráfico, y, la, inteligencia, artificial], ['Dos campos muy emocionantes. ¿Hay algún proyecto en particular en el que estés trabajando actualmente que puedas compartir?'], []).

template([sí, estoy, desarrollando, un, modelo, de, reconocimiento, facial], ['¡Interesante! El reconocimiento facial tiene aplicaciones diversas. ¿Cómo te metiste en ese proyecto?'], []).

template([siempre, he, encontrado, fascinante, el, poder, de, la, visión, por, computadora], ['Completamente de acuerdo. La visión por computadora es asombrosa. Cambiando de tema nuevamente, ¿hay algo más que te gustaría saber o compartir?'], []).

template([¿cuál, es, tu, hobby, favorito?], ['¡Buena pregunta! Me encanta aprender sobre diferentes culturas y explorar la diversidad culinaria. ¿Y tú?'], []).
template([mi, hobby, favorito, es, la, fotografía], ['¡Eso suena increíble! La fotografía es una forma hermosa de capturar momentos. ¿Tienes alguna foto favorita que hayas tomado recientemente?'], []).

template([sí, tomé, una, foto, espectacular, durante, mis, vacaciones], ['¡Maravilloso! Las fotos de vacaciones son siempre especiales. ¿A dónde fuiste de vacaciones?'], []).

template([fui, a, la, costa, sur, y, disfruté, de, hermosas, playas], ['¡Qué suerte! Las playas del sur son impresionantes. ¿Tienes algún recuerdo especial de ese viaje que quieras compartir?'], []).

template([sí, presencié, una, puesta, de, sol, increíble], ['Las puestas de sol son mágicas. ¿Cómo describirías esa puesta de sol en particular?'], []).

template([era, una, explosión, de, colores, cálidos, que, pintaban, el, cielo], ['¡Qué hermosa descripción! Puedo imaginarlo. Bueno, ha sido genial conocerte más. ¿Hay algo más en lo que pueda ayudarte o que quieras compartir?'], []).

template([no, por, ahora, gracias], ['¡Entendido! Si alguna vez necesitas hablar o tienes más preguntas, estoy aquí. ¡Que tengas un maravilloso día!'], []).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%MINECRAFT

template([quien, creó, minecraft, '?'], ["El creador de minecraft eson dos y son Markus Persson y Jens Bergensten"], []). 

% Template para preguntar por mobs en Minecraft
template([cuáles, son, algunos, mobs, en, Minecraft, '?'], ['En Minecraft, algunos mobs comunes son zombies, esqueletos, creepers, enderman, arañas, brujas y ghasts.'], []).

% Template para preguntar por minerales en Minecraft
template([cuáles, son, algunos, minerales, en, Minecraft, '?'], ['En Minecraft, puedes encontrar minerales como carbón, hierro, oro, diamantes, lapislázuli, redstone, esmeraldas, cuarzo del Nether y netherita antigua.'], []).

% Template para preguntar por materiales en Minecraft
template([cuáles, son, algunos, materiales, en, Minecraft, '?'], ['Algunos materiales en Minecraft incluyen madera, piedra, tablones, adoquín, lana, cama, hierro, oro, diamantes, lapislázuli, polvora de fuego, esmeraldas, cuarzo y netherita.'], []).

% Template para preguntar por crafteos en Minecraft
template([cómo, puedo, hacer, tablones, de, madera, '?'], ['Para hacer tablones de madera, coloca madera en la mesa de trabajo y crea tablones.'], []).

% Template para preguntar por estructuras en Minecraft
template([puedes, decirme, sobre, las, aldeas, en, Minecraft, '?'], ['Las aldeas en Minecraft son comunidades de aldeanos que viven juntos. Puedes encontrar casas, granjas y otros edificios en ellas.'], []).

% Template para preguntar sobre eventos especiales en Minecraft
template([qué, pasa, durante, un, eclipse, solar, en, Minecraft, '?'], ['En Minecraft, no hay eventos de eclipses solares. Sin embargo, hay eventos como la Noche de Brujas y la Noche del Creeper.'], []).

template([los, s(_), son, elementos, en, minecraft,'?'], [flagelemento], [1]).

template([s(_), es, un, bioma, en, minecraft,'?'], [flagbioma], [0]).

template([los, s(_), son, mobs, en, minecraft,'?'], [flagmob], [1]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Hechos sobre los síntomas del cáncer de páncreas
sintoma(cancer_pancreas, dolor_abdominal).
sintoma(cancer_pancreas, perdida_peso).
sintoma(cancer_pancreas, ictericia).
sintoma(cancer_pancreas, cambios_heces).
sintoma(cancer_pancreas, nauseas).
sintoma(cancer_pancreas, pérdida_apetito).
sintoma(cancer_pancreas, debilidad).
sintoma(cancer_pancreas, diabetes_nueva).
sintoma(cancer_pancreas, cambios_color_orina).
sintoma(cancer_pancreas, problemas_digestivos).
sintoma(cancer_pancreas, pérdida_músculo).
sintoma(cancer_pancreas, coágulos_sanguíneos).
sintoma(cancer_pancreas, depresión).
sintoma(cancer_pancreas, fatiga_persistente).

% Hechos sobre las causas y factores de riesgo del cáncer de páncreas
causa(cancer_pancreas, antecedentes_familiares).
causa(cancer_pancreas, tabaquismo).
causa(cancer_pancreas, obesidad).
causa(cancer_pancreas, diabetes).
causa(cancer_pancreas, pancreatitis_cronica).
causa(cancer_pancreas, exposición_radiación).
causa(cancer_pancreas, edad_avanzada).
causa(cancer_pancreas, historia_familiar_cancer_pancreas).
causa(cancer_pancreas, gen_mutado_BRCA2).
causa(cancer_pancreas, dieta_rica_en_grasas).
causa(cancer_pancreas, síndrome_lynch).
causa(cancer_pancreas, consumo_excesivo_alcohol).
causa(cancer_pancreas, infección_helicobacter_pylori).
causa(cancer_pancreas, exposición_amiante).

% tratamientos y medicamentos para el cáncer de páncreas
tratamiento(cancer_pancreas, cirugia).
tratamiento(cancer_pancreas, quimioterapia).
tratamiento(cancer_pancreas, radioterapia).
tratamiento(cancer_pancreas, terapia_dirigida).
tratamiento(cancer_pancreas, quimioterapia_adyuvante).
tratamiento(cancer_pancreas, cirugia_reseccion).
tratamiento(cancer_pancreas, trasplante_pancreas).
tratamiento(cancer_pancreas, ablación_por_radiofrecuencia).
tratamiento(cancer_pancreas, quimioterapia_neoadyuvante).
tratamiento(cancer_pancreas, inmunoterapia).
tratamiento(cancer_pancreas, terapia_fotodinámica).
tratamiento(cancer_pancreas, bloqueadores_acido).
tratamiento(cancer_pancreas, terapia_genica).
tratamiento(cancer_pancreas, cuidados_paliativos).


% Reglas para preguntas y respuestas sobre el cáncer de páncreas
template([qué, es, el, cáncer, de, páncreas, '?'], ['El cáncer de páncreas es un tipo de cáncer que afecta al páncreas, un órgano importante del sistema digestivo.'], [1]).

template([cuáles, son, los, síntomas, del, cáncer, de, páncreas, '?'], ['Los síntomas comunes del cáncer de páncreas incluyen dolor abdominal, pérdida de peso, ictericia y cambios en el color de las heces.'], [2]).

template([cuáles, son, los, factores, de, riesgo, del, cáncer, de, páncreas, '?'], ['Los factores de riesgo del cáncer de páncreas incluyen antecedentes familiares, tabaquismo, obesidad y diabetes.'], [3]).

template([cómo, se, diagnostica, el, cáncer, de, páncreas, '?'], ['El cáncer de páncreas se diagnostica mediante pruebas como imágenes, análisis de sangre y biopsias.'], [4]).

template([cuál, es, el, tratamiento, para, el, cáncer, de, páncreas, '?'], ['El tratamiento para el cáncer de páncreas puede incluir cirugía, quimioterapia y radioterapia, dependiendo del estadio y la extensión del cáncer.'], [5]).

template([cuál, es, el, pronóstico, del, cáncer, de, páncreas, '?'], ['El pronóstico del cáncer de páncreas generalmente es reservado, pero la detección temprana mejora las posibilidades de tratamiento exitoso.'], [6]).


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%








template([hola, _], ['Hola', 'como', estas, tu, '?'], []).
template([buendia, _], ['Buendia', 'Como', estas, tu, '?'], []).

template([yo, s(_), yo, soy, s(_),'.'], [por, que, 0, eres, 1, '?'], [1, 4]).
template([yo, s(_), tu, '.'], [por, que, 0, yo ,'?'], [1]).
template([yo, soy, s(_),'.'], [porque, eres, tu, 0, '?'], [2]).

% pregunta algo que le gusta a eliza
template([te, gustan, las, s(_), _], [flagLike], [3]).
template([te, gustan, los, s(_), _], [flagLike], [3]).

		 % pregunta algo que hace eliza
template([tu, eres, s(_), _], [flagDo], [2]).
% pregunta algo que es eliza
template([que, eres, tu, s(_)], [flagIs], [2]).
template([eres, s(_), '?'], [flagIs], [2]).

template([como, estas, tu, '?'], [yo, estoy, bien, ',', gracias, por, preguntar, '.'], []).

template([yo, pienso, que, _], [bueno, esa, es, tu, opinion], []).
template([porque, _], [esa, no, es, una, buena, razon, '.'], []).
template([yo, tengo, s(_), con, s(_), '.'], ['Tu', tienes, que, lidear, con, tu, 0, y, tu, 1, de, una, forma, madura, '.'], [2, 4]).
template([yo, s(_),  _], [yo, puedo, recomendarte, un, libro, acerca, de, ese,  problema], []).
template([por, favor, s(_), _], ['No', yo, no, puedo, ayudar, ',', yo, solo, soy, una, maquina], []). 
		 template([di, me, un, s(_), _], ['No', yo, no , puedo, ',', soy, mala, para, eso], []).

	  
template(_, [No,lo, se, '.'], []). 

% Lo que le gusta a eliza : flagLike
elizaLikes(X, R):- likes(X), R = ['Claro', a, mi, me, gusta, los, X].
elizaLikes(X, R):- \+likes(X), R = ['No', a, mi, no, me, gusta, los, X].
likes(manzanas).
likes(ponis).
likes(zombies).
likes(computadoras).
like(carros).

% lo que hace eliza: flagDo
elizaDoes(X, R):- does(X), R = ['Yes', yo, X, y, yo, lo, amo].
elizaDoes(X, R):- \+does(X), R = ['No', yo, no,  X ,'.', eso, es, muy, dificil, para, mi].
does(estudiar).
does(cook).
does(work).

% lo que es eliza: flagIs
elizaIs(X, R):- is0(X), R = ['Si', yo, soy, X].
elizaIs(X, R):- \+is0(X), R = ['No', yo, no, soy, X].
is0(tonto).
is0(raro).
is0(lindo).
is0(bien).
is0(faliz).
is0(redundante).

match([],[]).
match([], _):- true.

match([S|Stim],[I|Input]) :-
	atom(S), 
	% si I es un s(X) devuelve falso
	S == I,
	match(Stim, Input),!.

match([S|Stim],[_|Input]) :-
% I es un s(X), lo ignoro y continúo con el resto de la lista
	\+atom(S),
	match(Stim, Input),!.

replace0([], _, _, Resp, R):- append(Resp, [], R),!.

% Eliza likes:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagLike,
	elizaLikes(Atom, R).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




% los elementos en minecraft: flagelemento
eselemento(X, R):- elemento(X), R = ['Si', X, es, un, elemento, en, minecraft,].
eselemento(X, R):- \+elemento(X), R = ['No', X, no, es, un, elemento, en, minecraft,].

%es un elemento:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagelemento,
	eselemento(Atom, R).



% los elementos en minecraft: flagelemento
esmob(X, R):- mob(X), R = ['Si', X, es, un, mob, en, minecraft,].
esmob(X, R):- \+mob(X), R = ['No', X, no, es, un, mob, en, minecraft,].

%es un elemento:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagmob,
	esmob(Atom, R).


% es bioma en minecraft: flagbioma
esbioma(X, R):- bioma(X), R = ['Si', X, es, un, bioma, en, minecraft,].
esbioma(X, R):- \+bioma(X), R = ['No', X, no, es, un, bioma, en, minecraft,].

%es un bioma:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagbioma,
	esbioma(Atom, R).





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% Eliza does:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagDo,
	elizaDoes(Atom, R).

% Eliza is:
replace0([I|_], Input, _, Resp, R):-
	nth0(I, Input, Atom),
	nth0(0, Resp, X),
	X == flagIs,
	elizaIs(Atom, R).

replace0([I|Index], Input, N, Resp, R):-
	length(Index, M), M =:= 0,
	nth0(I, Input, Atom),
	select(N, Resp, Atom, R1), append(R1, [], R),!.

replace0([I|Index], Input, N, Resp, R):-
	nth0(I, Input, Atom),
	length(Index, M), M > 0,
	select(N, Resp, Atom, R1),
	N1 is N + 1,
	replace0(Index, Input, N1, R1, R),!.


```