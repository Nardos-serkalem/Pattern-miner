(: generate-combinations (-> (List $t) (List $t) (List (List $t))))

(= (generate-combinations list1 list2))
(= (single-element-list ($x) (list $x)))
(= (combine-head-with-list (head -> list)))
    (map ($func (x) (Cons head $x)) $list)

   (case (empty $list1)

      (case (empty $list2) ())
             (map single-element-list $list2)) 
      (case (empty $list2)
             (map single-element-list $list1)
       (append      
     (combine-head-with-list (head $list1) (generate-combinations (tail $list1) $list2))
     (combine-head-with-list (head $list2) (generate-combinations $list1 (tail $list2))))) 
                                 
 ;;list helper
(: (-> (List $t) $t))
(= (head Nil) Nil)
(= (head (Cons $x $xs)) $x)

;;list helper
(: (-> (List $t) (List $t)))
(= (tail Nil) Nil)
(= (tail (Cons $x $xs)) $xs)

;;main function
(= (combine-lists-op ())
  (let ([list1 (Cons $y (Cons $x (Nil)))]  
        [list2 (Cons $a (Cons $b (Cons $c (Nil))))]) 
    (generate-combinations list1 list2))) 
 !(combine-lists-op)
