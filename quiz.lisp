
(setf *random-state* (make-random-state t))
(setq x (random 11 *random-state*))
(defun fff()
(princ "
数字当て: ")
(setq y (read))
;; cond = if & else
    (cond ((= x y) (princ "ok"))
        ((/= x y) (princ "ng")(fff))
    )
)
(fff)

;;ランダムな数を作るには以下の二行の文が必要
;; (setf *random-state* (make-random-state t))
;;0から10
;; (setq x (random 11 *random-state*))
 
