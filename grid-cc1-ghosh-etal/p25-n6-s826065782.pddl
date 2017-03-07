;; --bb-
;; --bd-
;; -bb--
;; -b---
;; -----
(define (problem N6-S826065782)
  (:domain grid)
  (:objects
        A2 - cell
        A3 - cell
        B2 - cell
        B3 - cell
        C1 - cell
        C2 - cell
        D1 - cell
        BORDER - cell
  )
  (:init
               (proc A2)
               (proc A3)
               (proc B2)
               (dispenser B3)
               (proc C1)
               (proc C2)
               (proc D1)
               (available A2)
               (available A3)
               (available B2)
               (reject B3 left)
               (reject B3 right)
               (reject B3 up)
               (reject B3 down)
               (available C1)
               (available C2)
               (available D1)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A2)
               (neighbour right A2 BORDER)

               (neighbour right A3 A2)
               (neighbour left A2 A3)

               (neighbour up BORDER A2)
               (neighbour down A2 BORDER)

               (neighbour down B2 A2)
               (neighbour up A2 B2)

               (neighbour right BORDER A3)
               (neighbour left A3 BORDER)

               (neighbour up BORDER A3)
               (neighbour down A3 BORDER)

               (neighbour down B3 A3)
               (neighbour up A3 B3)

               (neighbour left BORDER B2)
               (neighbour right B2 BORDER)

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

               (neighbour right BORDER B3)
               (neighbour left B3 BORDER)

               (neighbour down BORDER B3)
               (neighbour up B3 BORDER)

               (neighbour left BORDER C1)
               (neighbour right C1 BORDER)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

               (neighbour up BORDER C1)
               (neighbour down C1 BORDER)

               (neighbour down D1 C1)
               (neighbour up C1 D1)

               (neighbour right BORDER C2)
               (neighbour left C2 BORDER)

               (neighbour down BORDER C2)
               (neighbour up C2 BORDER)

               (neighbour left BORDER D1)
               (neighbour right D1 BORDER)

               (neighbour right BORDER D1)
               (neighbour left D1 BORDER)

               (neighbour down BORDER D1)
               (neighbour up D1 BORDER)

  )
  (:goal (and 
              (busy A2)
              (busy A3)
              (busy B2)
              (busy C1)
              (busy C2)
              (busy D1)
  ))
)
