;; bb-
;; bb-
;; -d-
(define (problem N4-S516256633)
  (:domain grid)
  (:objects
        A0 - cell
        A1 - cell
        B0 - cell
        B1 - cell
        C1 - cell
        BORDER - cell
  )
  (:init
               (proc A0)
               (proc A1)
               (proc B0)
               (proc B1)
               (dispenser C1)
               (available A0)
               (available A1)
               (available B0)
               (available B1)
               (reject C1 left)
               (reject C1 right)
               (reject C1 up)
               (reject C1 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A0)
               (neighbour right A0 BORDER)

               (neighbour right A1 A0)
               (neighbour left A0 A1)

               (neighbour up BORDER A0)
               (neighbour down A0 BORDER)

               (neighbour down B0 A0)
               (neighbour up A0 B0)

               (neighbour right BORDER A1)
               (neighbour left A1 BORDER)

               (neighbour up BORDER A1)
               (neighbour down A1 BORDER)

               (neighbour down B1 A1)
               (neighbour up A1 B1)

               (neighbour left BORDER B0)
               (neighbour right B0 BORDER)

               (neighbour right B1 B0)
               (neighbour left B0 B1)

               (neighbour down BORDER B0)
               (neighbour up B0 BORDER)

               (neighbour right BORDER B1)
               (neighbour left B1 BORDER)

               (neighbour down C1 B1)
               (neighbour up B1 C1)

               (neighbour left BORDER C1)
               (neighbour right C1 BORDER)

               (neighbour right BORDER C1)
               (neighbour left C1 BORDER)

               (neighbour down BORDER C1)
               (neighbour up C1 BORDER)

  )
  (:goal (and 
              (busy A0)
              (busy A1)
              (busy B0)
              (busy B1)
  ))
)
