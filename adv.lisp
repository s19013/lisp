;; (setq x "first")
;; (print x)
;; (setq x "second")
;; (print x)
(setq time 0)
(defun gamestart()
    (print "どこに行く？")
    (print "1:図書館 2:公園")
    (setq want_to_go (read))
    (cond
    (= want_to_go 1)(librly)
    (= want_to_go 2)(park)
    )    
)
(defun librly()
    (print "図書館に来た")
    (princ "どうしようか")
    
    
    
    ;; (princ "time=")
    ;; (princ time)
    (gamestart)

)

(defun park()
    (princ "公園に来た")
    (princ "")
    (setf *random-state* (make-random-state t))
    (setq event (random 2 *random-state*))
    (cond
    ((= event 0)(princ "
    特に何もなかった
    ")(setq time (+ 1 time)))
    ((= event 1)(princ "
    bに出会った
    ")(setq time (+ 2 time)))
    )
)

(gamestart)
