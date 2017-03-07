;; bbn
;; dbn
;; bbd
(define (problem N7-S45048494)
  (:domain grid)
  (:objects
        A0 - cell
        A1 - cell
        A2 - cell
        B0 - cell
        B1 - cell
        B2 - cell
        C0 - cell
        C1 - cell
        C2 - cell
        BORDER - cell
  )
  (:init
               (proc A0)
               (proc A1)
               (proc A2)
               (dispenser B0)
               (proc B1)
               (proc B2)
               (proc C0)
               (proc C1)
               (dispenser C2)
               (available A0)
               (available A1)
               (available A2)
               (reject B0 left)
               (reject B0 right)
               (reject B0 up)
               (reject B0 down)
               (available B1)
               (available B2)
               (available C0)
               (available C1)
               (reject C2 left)
               (reject C2 right)
               (reject C2 up)
               (reject C2 down)
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

               (neighbour down B2 A2)
               (neighbour up A2 B2)

               (neighbour left BORDER B0)
               (neighbour right B0 BORDER)

               (neighbour right B1 B0)
               (neighbour left B0 B1)

               (neighbour down C0 B0)
               (neighbour up B0 C0)

               (neighbour right B2 B1)
               (neighbour left B1 B2)

               (neighbour down C1 B1)
               (neighbour up B1 C1)

               (neighbour right BORDER B2)
               (neighbour left B2 BORDER)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right C1 C0)
               (neighbour left C0 C1)

               (neighbour down BORDER C0)
               (neighbour up C0 BORDER)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

               (neighbour down BORDER C1)
               (neighbour up C1 BORDER)

               (neighbour right BORDER C2)
               (neighbour left C2 BORDER)

               (neighbour down BORDER C2)
               (neighbour up C2 BORDER)

  )
  (:goal (and 
              (busy A0)
              (busy A1)
              (busy B1)
              (busy C0)
              (busy C1)
  ))
)
