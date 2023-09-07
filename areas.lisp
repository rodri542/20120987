(defun cuadro(x)
(* x x))

(defun rectangulo(x y)
(* x y))

(defun triangulo(x y)
( / (* x y) 2 ))

(defun circulo(x)
( * (expt x 2) 3.1416))

(defun trapecio(x y z)
( / ( * (+ x y) z ) 2 ))

(defun paralelogramo(x y)
(* x y))

(defun rombo(x y)
( / (* x y) 2 ))

(defun pentagonoregular(x y)
( / (* x y) 2 ))

(defun hexagonoregular(x y)
( / (* x y) 2 ))

(defun circulosectorial(x y)
(expt (* (/ x 360) 3.1416) 2 ))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;volumenes
(defun cubo(x)
(expt x 3))

(defun paralelepipedo(x y z)
(* * x y z))

(defun prismarectangular(x y z)
(* * x y z))

(defun esfera(x)
(* (* (/ 4 3)3.1416 ) x 3))

(defun cilindro(x y)
(* (* 3.1416 (expt x 2) y)))

(defun cono(x y z)
(* (* ( * (/ 1 3) 3.1415) (expt x 2)) y ))

(defun piramidecuadrada(x y)
(* * (/ 1 3) (expt x ) y ))

(defun tetraedro(x y)
(* * (/ 1 3) x y ))

(defun cilindrohueco(x y z)
(* * 3.1415 (- (expt x 2) (expt y 2) ) z ))

(defun cilindrooblicuo(x y)
(* x y))

