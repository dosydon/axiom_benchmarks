;; --bbb
;; ---nb
;; ---db
;; -----
;; -----
(define (problem N6-S862619099)
  (:domain grid)
  (:objects
        A2 - cell
        A3 - cell
        A4 - cell
        B3 - cell
        B4 - cell
        C3 - cell
        C4 - cell
        BORDER - cell
  )
  (:init
               (proc A2)
               (proc A3)
               (proc A4)
               (proc B3)
               (proc B4)
               (dispenser C3)
               (proc C4)
               (available A2)
               (available A3)
               (available A4)
               (available B3)
               (available B4)
               (reject C3 left)
               (reject C3 right)
               (reject C3 up)
               (reject C3 down)
               (available C4)
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

               (neighbour down BORDER A2)
               (neighbour up A2 BORDER)

               (neighbour right A4 A3)
               (neighbour left A3 A4)

               (neighbour up BORDER A3)
               (neighbour down A3 BORDER)

               (neighbour down B3 A3)
               (neighbour up A3 B3)

               (neighbour right BORDER A4)
               (neighbour left A4 BORDER)

               (neighbour up BORDER A4)
               (neighbour down A4 BORDER)

               (neighbour down B4 A4)
               (neighbour up A4 B4)

               (neighbour left BORDER B3)
               (neighbour right B3 BORDER)

               (neighbour right B4 B3)
               (neighbour left B3 B4)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour right BORDER B4)
               (neighbour left B4 BORDER)

               (neighbour down C4 B4)
               (neighbour up B4 C4)

               (neighbour left BORDER C3)
               (neighbour right C3 BORDER)

               (neighbour right C4 C3)
               (neighbour left C3 C4)

               (neighbour down BORDER C3)
               (neighbour up C3 BORDER)

               (neighbour right BORDER C4)
               (neighbour left C4 BORDER)

               (neighbour down BORDER C4)
               (neighbour up C4 BORDER)

  )
  (:goal (and 
              (busy A2)
              (busy A3)
              (busy A4)
              (busy B4)
              (busy C4)
  ))
)
