;; bnbbd
;; -bnb-
;; --d--
;; -----
;; -----
(define (problem N7-S20337322)
  (:domain grid)
  (:objects
        A0 - cell
        A1 - cell
        A2 - cell
        A3 - cell
        A4 - cell
        B1 - cell
        B2 - cell
        B3 - cell
        C2 - cell
        BORDER - cell
  )
  (:init
               (proc A0)
               (proc A1)
               (proc A2)
               (proc A3)
               (dispenser A4)
               (proc B1)
               (proc B2)
               (proc B3)
               (dispenser C2)
               (available A0)
               (available A1)
               (available A2)
               (available A3)
               (reject A4 left)
               (reject A4 right)
               (reject A4 up)
               (reject A4 down)
               (available B1)
               (available B2)
               (available B3)
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

               (neighbour down BORDER A0)
               (neighbour up A0 BORDER)

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

               (neighbour left BORDER B1)
               (neighbour right B1 BORDER)

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

               (neighbour down BORDER B3)
               (neighbour up B3 BORDER)

               (neighbour left BORDER C2)
               (neighbour right C2 BORDER)

               (neighbour right BORDER C2)
               (neighbour left C2 BORDER)

               (neighbour down BORDER C2)
               (neighbour up C2 BORDER)

  )
  (:goal (and 
              (busy A0)
              (busy A2)
              (busy A3)
              (busy B1)
              (busy B3)
  ))
)
