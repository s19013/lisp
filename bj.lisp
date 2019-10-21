; 相手と自分のリストを作る
; リストに2つの数字を入れる
; 必要に応じてリストに数を追加
; 再帰とcdrとかを使って計算
; 勝ち負けを決める

(setq you (list))
(setq your_sum 0)
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
     ()
     (choice)
    )
    (
     (= want 2)
     (princ "
")
     (princ you)
     (princ "  your_sum:")
     (princ your_sum)
    )
    (
     (> want 2)
     (choice)
    )
  )
)
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
