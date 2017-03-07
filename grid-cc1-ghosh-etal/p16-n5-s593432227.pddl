;; -b-
;; nbd
;; bb-
(define (problem N5-S593432227)
  (:domain grid)
  (:objects
        A1 - cell
        B0 - cell
        B1 - cell
        B2 - cell
        C0 - cell
        C1 - cell
        BORDER - cell
  )
  (:init
               (proc A1)
               (proc B0)
               (proc B1)
               (dispenser B2)
               (proc C0)
               (proc C1)
               (available A1)
               (available B0)
               (available B1)
               (reject B2 left)
               (reject B2 right)
               (reject B2 up)
               (reject B2 down)
               (available C0)
               (available C1)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A1)
               (neighbour right A1 BORDER)

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

               (neighbour up BORDER B0)
               (neighbour down B0 BORDER)

               (neighbour down C0 B0)
               (neighbour up B0 C0)

               (neighbour right B2 B1)
               (neighbour left B1 B2)

               (neighbour down C1 B1)
               (neighbour up B1 C1)

               (neighbour right BORDER B2)
               (neighbour left B2 BORDER)

               (neighbour up BORDER B2)
               (neighbour down B2 BORDER)

               (neighbour down BORDER B2)
               (neighbour up B2 BORDER)

               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right C1 C0)
               (neighbour left C0 C1)

               (neighbour down BORDER C0)
               (neighbour up C0 BORDER)

               (neighbour right BORDER C1)
               (neighbour left C1 BORDER)

               (neighbour down BORDER C1)
               (neighbour up C1 BORDER)

  )
  (:goal (and 
              (busy A1)
              (busy B1)
              (busy C0)
              (busy C1)
  ))
)
