;; bnbbb
;; bnbd-
;; bdb--
;; -----
;; -----
(define (problem N10-S640888051)
  (:domain grid)
  (:objects
        A0 - cell
        A1 - cell
        A2 - cell
        A3 - cell
        A4 - cell
        B0 - cell
        B1 - cell
        B2 - cell
        B3 - cell
        C0 - cell
        C1 - cell
        C2 - cell
        BORDER - cell
  )
  (:init
               (proc A0)
               (proc A1)
               (proc A2)
               (proc A3)
               (proc A4)
               (proc B0)
               (proc B1)
               (proc B2)
               (dispenser B3)
               (proc C0)
               (dispenser C1)
               (proc C2)
               (available A0)
               (available A1)
               (available A2)
               (available A3)
               (available A4)
               (available B0)
               (available B1)
               (available B2)
               (reject B3 left)
               (reject B3 right)
               (reject B3 up)
               (reject B3 down)
               (available C0)
               (reject C1 left)
               (reject C1 right)
               (reject C1 up)
               (reject C1 down)
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

               (neighbour down BORDER A4)
               (neighbour up A4 BORDER)

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

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

               (neighbour right BORDER B3)
               (neighbour left B3 BORDER)

               (neighbour down BORDER B3)
               (neighbour up B3 BORDER)

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
              (busy A2)
              (busy A3)
              (busy A4)
              (busy B0)
              (busy B2)
              (busy C0)
              (busy C2)
  ))
)
