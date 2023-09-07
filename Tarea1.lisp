(defun cuadro()
(princ "Dame la base:")
(setq x (read))
(setq resultado (* x x)))

(defun rectangulo()
(princ "Dame la base: ")
(setq x (read))
(princ "Dame la altura: ")
(setq y (read))
(setq resultado (* x y)))

(defun triangulo()
(princ "Dame la base: ")
(setq x (read))
(princ "Dame la altura: ")
(setq y (read))
(setq resultado ( / (* x y) 2 )))

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

