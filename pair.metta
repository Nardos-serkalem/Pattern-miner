(: pair (-> (List $t) (List $t) (List (List $t)))) 
(= (pair (Cons $x $xs) (Cons $y $ys))
   (Cons (Cons $x $y) (pair $xs $ys))) 

;;testcase
!(pair (Cons a (Cons b (Cons c (Cons d Nil)))) (Cons 1 (Cons 2 (Cons 3 (Cons 4 Nil)))))
