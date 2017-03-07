;; bnbb
;; bbnb
;; d-db
;; ----
(define (problem N9-S325128932)
  (:domain grid)
  (:objects
        A0 - cell
        A1 - cell
        A2 - cell
        A3 - cell
        B0 - cell
        B1 - cell
        B2 - cell
        B3 - cell
        C0 - cell
        C2 - cell
        C3 - cell
        BORDER - cell
  )
  (:init
               (proc A0)
               (proc A1)
               (proc A2)
               (proc A3)
               (proc B0)
               (proc B1)
               (proc B2)
               (proc B3)
               (dispenser C0)
               (dispenser C2)
               (proc C3)
               (available A0)
               (available A1)
               (available A2)
               (available A3)
               (available B0)
               (available B1)
               (available B2)
               (available B3)
               (reject C0 left)
               (reject C0 right)
               (reject C0 up)
               (reject C0 down)
               (reject C2 left)
               (reject C2 right)
               (reject C2 up)
               (reject C2 down)
               (available C3)
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

               (neighbour left BORDER B0)
               (neighbour right B0 BORDER)

               (neighbour right B1 B0)
               (neighbour left B0 B1)

               (neighbour down C0 B0)
               (neighbour up B0 C0)

               (neighbour right B2 B1)
               (neighbour left B1 B2)

               (neighbour down BORDER B1)
               (neighbour up B1 BORDER)

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

               (neighbour right BORDER B3)
               (neighbour left B3 BORDER)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right BORDER C0)
               (neighbour left C0 BORDER)

               (neighbour down BORDER C0)
               (neighbour up C0 BORDER)

               (neighbour left BORDER C2)
               (neighbour right C2 BORDER)

               (neighbour right C3 C2)
               (neighbour left C2 C3)

               (neighbour down BORDER C2)
               (neighbour up C2 BORDER)

               (neighbour right BORDER C3)
               (neighbour left C3 BORDER)

               (neighbour down BORDER C3)
               (neighbour up C3 BORDER)

  )
  (:goal (and 
              (busy A0)
              (busy A2)
              (busy A3)
              (busy B0)
              (busy B1)
              (busy B3)
              (busy C3)
  ))
)
