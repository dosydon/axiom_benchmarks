;; dbb
;; -bb
;; ---
(define (problem N4-S496156382)
  (:domain grid)
  (:objects
        A0 - cell
        A1 - cell
        A2 - cell
        B1 - cell
        B2 - cell
        BORDER - cell
  )
  (:init
               (dispenser A0)
               (proc A1)
               (proc A2)
               (proc B1)
               (proc B2)
               (reject A0 left)
               (reject A0 right)
               (reject A0 up)
               (reject A0 down)
               (available A1)
               (available A2)
               (available B1)
               (available B2)
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

               (neighbour down BORDER A0)
               (neighbour up A0 BORDER)

               (neighbour right A2 A1)
               (neighbour left A1 A2)

               (neighbour up BORDER A1)
               (neighbour down A1 BORDER)

               (neighbour down B1 A1)
               (neighbour up A1 B1)

               (neighbour right BORDER A2)
               (neighbour left A2 BORDER)

               (neighbour up BORDER A2)
               (neighbour down A2 BORDER)

               (neighbour down B2 A2)
               (neighbour up A2 B2)

               (neighbour left BORDER B1)
               (neighbour right B1 BORDER)

               (neighbour right B2 B1)
               (neighbour left B1 B2)

               (neighbour down BORDER B1)
               (neighbour up B1 BORDER)

               (neighbour right BORDER B2)
               (neighbour left B2 BORDER)

               (neighbour down BORDER B2)
               (neighbour up B2 BORDER)

  )
  (:goal (and 
              (busy A1)
              (busy A2)
              (busy B1)
              (busy B2)
  ))
)
