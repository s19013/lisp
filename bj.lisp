; 相手と自分のリストを作る
; リストに2つの数字を入れる
; 必要に応じてリストに数を追加
; 再帰とcdrとかを使って計算
; 勝ち負けを決める

(setq you (list))
; ランダムな値を取得
(defun ran()
  (setf *random-state* (make-random-state t))
  (setq bnum (random 13 *random-state*))
  (setq num (+ bnum 1))
)
(defun choice()
  (princ "
  h/s
  ")
  (setq want (read))
  (cond
    (
     (= want "h")
     (setq you (cons (ran) you))
    )
    (
     (= want)
    )
  )
  )
;ran関数の返り値？をyouリストに追加
(setq you (cons (ran) you))
(setq you (cons (ran) you))
; (print you)
