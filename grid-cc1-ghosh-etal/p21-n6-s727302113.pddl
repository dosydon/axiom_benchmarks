;; bbd
;; -nb
;; -bb
(define (problem N6-S727302113)
  (:domain grid)
  (:objects
        A0 - cell
        A1 - cell
        A2 - cell
        B1 - cell
        B2 - cell
        C1 - cell
        C2 - cell
        BORDER - cell
  )
  (:init
               (proc A0)
               (proc A1)
               (dispenser A2)
               (proc B1)
               (proc B2)
               (proc C1)
               (proc C2)
               (available A0)
               (available A1)
               (reject A2 left)
               (reject A2 right)
               (reject A2 up)
               (reject A2 down)
               (available B1)
               (available B2)
               (available C1)
               (available C2)
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

               (neighbour down C1 B1)
               (neighbour up B1 C1)

               (neighbour right BORDER B2)
               (neighbour left B2 BORDER)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

               (neighbour left BORDER C1)
               (neighbour right C1 BORDER)

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
              (busy B2)
              (busy C1)
              (busy C2)
  ))
)
