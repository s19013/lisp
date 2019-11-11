
(defun ran()
  (setf *random-state* (make-random-state t))
  (setq bnum (random 50 *random-state*))
  (setq rnum (+ bnum 70))
)
(defun ene_ran()
  (setf *random-state* (make-random-state t))
  (cond
    (
     (> limit 100)
     (setq enum (random 30 *random-state*))
     (setq enenum (+ enum 10))
    )
    (
     (< limit 60)
     (setq enum (random 15 *random-state*))
     (setq enenum (+ enum 4))
    )
    (
     (< limit 20)
     (setq enum (random 6 *random-state*))
     (setq enenum (+ enum 1))
    )
  )
)

(defun ene(name)
  (set num (ene_ran))
  (setq limit (- limit num))
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
  (you)
  (ene 1)
  (ene 2)
  (ene 3)
)

(defun you()
  (princ "何回振りますか")
  (setq want (read))
  (setq num want)
  (setq limit (- limit num))
  (if (<= limit 0)
    (loos 0))
)

(defun loos(name)
  (cond
    (
     (= name 0)
     (princ "あなたの負けです")
    )
    (
     (= name 1)
     (princ "c1の負けです")
    )
    (
     (= name 2)
     (princ "c2の負けです")
    )
    (
     (= name 3)
     (princ "c3の負けです")
    )
  )
  (exit)
)
(setq num 0)
(setq enenum 0)
(setq limit (ran))
(main)
