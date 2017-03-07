;; bbb
;; bd-
;; b--
(define (problem N5-S568456985)
  (:domain grid)
  (:objects
        A0 - cell
        A1 - cell
        A2 - cell
        B0 - cell
        B1 - cell
        C0 - cell
        BORDER - cell
  )
  (:init
               (proc A0)
               (proc A1)
               (proc A2)
               (proc B0)
               (dispenser B1)
               (proc C0)
               (available A0)
               (available A1)
               (available A2)
               (available B0)
               (reject B1 left)
               (reject B1 right)
               (reject B1 up)
               (reject B1 down)
               (available C0)
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

               (neighbour down BORDER A2)
               (neighbour up A2 BORDER)

               (neighbour left BORDER B0)
               (neighbour right B0 BORDER)

               (neighbour right B1 B0)
               (neighbour left B0 B1)

               (neighbour down C0 B0)
               (neighbour up B0 C0)

               (neighbour right BORDER B1)
               (neighbour left B1 BORDER)

               (neighbour down BORDER B1)
               (neighbour up B1 BORDER)

               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right BORDER C0)
               (neighbour left C0 BORDER)

               (neighbour down BORDER C0)
               (neighbour up C0 BORDER)

  )
  (:goal (and 
              (busy A0)
              (busy A1)
              (busy A2)
              (busy B0)
              (busy C0)
  ))
)
