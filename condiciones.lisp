(defun pantalon()
(princ "Dame la cantidad de pantalones Dickies a comprar $1,000 cu: ")
(setq x(read))
(cond 
 ((> x 5)
     (format t "Su total es: "(* 1000 x)))

   ((and (>= x 5) (<= x 12))
     (format t "Su total es: "(*(* 1000 x) 0.085)))

    ((< x 12)
     (format t "Su total es: "(*(* 1000 x) 0.070)))

    (t
     (format t "El número no es un número válido."))))



