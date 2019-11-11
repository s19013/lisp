
(defun ran()
  (setf *random-state* (make-random-state t))
  (setq bnum (random 20 *random-state*))
  (setq rnum (+ bnum 70))
  (setq limit rnum)
  ; (return-from rnum)
)

(defun ene_ran()
  (setf *random-state* (make-random-state t))
  (cond
    (
     (< limit 20)
     (setq enum (random 6 *random-state*))
     (setq enenum (+ enum 1))
    )
    (
      (< limit 60)
      (setq enum (random 15 *random-state*))
      (setq enenum (+ enum 4))
    )
    (
     (< limit 100)
     (setq enum (random 20 *random-state*))
     (setq enenum (+ enum 7))
    )
    (
     (> limit 100)
     (setq enum (random 30 *random-state*))
     (setq enenum (+ enum 10))
    )
  )
;   (princ "enum:")
;   (princ enum)
;   (princ "
; enenum:")
;   (princ enenum)
  ; (return enenum)
)



(defun ene(name)
  (setq num (ene_ran))
  (setq limit (- limit num))
  (cond
    (
     (= name 1)
     (princ "
")
     (princ "
com1は")
     (princ num)
     (princ "回振った")
    )
    (
     (= name 2)
     (princ "
")
     (princ "
com2は")
     (princ num)
     (princ "回振った")
    )
    (
     (= name 3)
     (princ "
")
     (princ "
com3は")
     (princ num)
     (princ "回振った")
    )
  )
  (if (<= limit 0)
    (cond
      (
       (= name 1)
       (loos 1)
      )
      (
       (= name 2)
       (loos 2)
      )
      (
       (= name 3)
       (loos 3)
      )
    )
  )
  (if (= name 3)
    (main)
  )
)

(defun main()
  (ene 1)
  (you)
  (ene 2)
  (ene 3)
)

(defun you()
  (princ "
何回振りますか")
  (setq want (read))
  (setq num want)
  (setq limit (- limit num))
  (if (<= limit 0)
    (loos 0))
)

(defun loos(name)
  (princ "
爆発した")
  (cond
    (
     (= name 0)
     (princ "
あなたの負けです")
    )
    (
     (= name 1)
     (princ "
c1の負けです")
    )
    (
     (= name 2)
     (princ "
c2の負けです")
    )
    (
     (= name 3)
     (princ "
c3の負けです")
    )
  )
  (exit)
)

(setq num 0)
(setq enenum 0)
(setq want 0)
(setq limit 0)
(ran)

; (setq limit (ran))
; (princ (ene_ran))
(main)
