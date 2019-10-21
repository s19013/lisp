;; (print (+ 1 2))
;; (print (- 1 2)) 
;; (print (* 1 2))
;; (print (/ 1 2))
;; (print (expt 3 2))

;; (print (equal 1 1))
;; (print (equal 1 2))
;; (print (equal 'a 'a))

;; (print (first '(a b c)))
;; (print (car '(a f g)))
;; (print (car '(a b)))

;; (print (rest '(a b c)))

;; 関数定義
;; (defun factorial(n)
;;     (if (n = 0) 1
;;     (* n (factorial (- n 1)))))
;; (print (factorial 5))

;; 変数　と　if
;; (setq x 10)
;; (if (= x 10)
;;     (print "ok"))

;; 入力と変数
;; (setq x (read))
;; (print x)

;; (setq x '(10 20 30))  ;;x=[10 20 30] 
;; (print (car x))
;; (print (cdr x))

;; (setq x (list (list 1 2 3) (list 4 5 6))) ;; x=[[1,2,3][4,5,6]]
;; (print (car (car x)))
;; (print (cdr (car x)))
;; (print (car (cdr x)))
;; (print (car (car (cdr x))))

;; (setq x 1)
;; (setq x (+ x 1))
;; (print x)