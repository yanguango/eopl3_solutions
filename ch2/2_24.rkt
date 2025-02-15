(define-datatype bintree bintree?
  (leaf-node (num integer?))
  (interior-node
   (key symbol?)
   (left bintree?)
   (right bintree?)))

;; bintree-to-list : bintree -> List
;; usage: return a list to present the bintree
(define bintree-to-list
  (lambda (bt)
    (cases bintree bt
          (leaf-node (num) (list 'leaf-node num))
          (interior-node (key left right)
                         (list 'interior-node
                               key
                               (bintree-to-list left)
                               (bintree-to-list right))))))
