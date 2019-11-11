; 相手と自分のリストを作る
; リストに2つの数字を入れる
; 必要に応じてリストに数を追加
; 再帰とcdrとかを使って計算
; 勝ち負けを決める

(setq you (list))
(setq your_sum 0)
(setq ene (list))
(setq ene_sum 0)
(setq num 0)
; ランダムな値を取得
(defun ran()
  (setf *random-state* (make-random-state t))
  (setq bnum (random 13 *random-state*))
  (setq num (+ bnum 1))
)

(defun choice()
  (princ "
")
  (princ you)
  (princ "   your_sum:")
  (princ your_sum)
  (princ "
hitなら1を standなら2を入力:  ")
  (setq want (read))
  (cond
    (
     (= want 1)
     (setq num (ran))
     (setq you (cons num you))
     (setq your_sum(+ your_sum num))
     (cond
      (
       (> your_sum 21)
       (burst 1)
      )
      (
       (<= your_sum 21)
       (choice)
      )
     )
    )
    (
     (= want 2)
     (ene_first)
    )
    (
     (> want 2)
     (choice)
     (< want 1)
     (choice)
    )
  )
)

(defun ene_first()
  (setq num (ran))
  (setq ene (cons num ene))
  (setq ene_sum(+ ene_sum num))
  (setq num (ran))
  (setq ene (cons num ene))
  (setq ene_sum(+ ene_sum num))
  (ene_next)
)

(defun ene_next()
  (cond
    (
     (<= ene_sum 15)
     (setq num (ran))
     (setq ene (cons num ene))
     (setq ene_sum(+ ene_sum num))
     (ene_next)
    )
    (
     (> ene_sum 16)
     (cond
       (
        (<= ene_sum 21)
        (battle)
       )
       (
        (> ene_sum 21)
        (burst 2)
       )
     )
    )
  )
)


(defun battle()
  (princ "
")
  (princ you)
  (princ "  your_sum:")
  (princ your_sum)

  (princ "
")
  (princ ene)
  (princ "  ene_sum:")
  (princ ene_sum)
  (princ "
")
  (cond
    (
     (< your_sum ene_sum)
     (princ "あなたの負け")
    )
    (
     (> your_sum ene_sum)
     (princ "あなたの勝ち")
    )
    (
     (= your_sum ene_sum)
     (princ "引き分け")
    )
  )
)
(defun burst(name)
  (cond
    (
     (= name 1)
     (princ "
")
     (princ "バーストしました")
    )
    (
     (= name 2)
     (princ "
")
     (princ "相手がバーストしました")
    )
  )
)

; 最初の動き
;ranの返り値をnumに代入
(setq num (ran))
;numをyouリストに入れる
(setq you (cons num you))
;your_sumにnumを足す
(setq your_sum(+ your_sum num))
(setq num (ran))
(setq you (cons num you))
(setq your_sum(+ your_sum num))
(choice)


;おまけ
;ran関数の返り値？をyouリストに追加
;(setq you (cons (ran) you))
; (print you)
