;; d-b--
;; bnbnb
;; ---bd
;; -----
;; -----
(define (problem N7-S960863280)
  (:domain grid)
  (:objects
        A0 - cell
        A2 - cell
        B0 - cell
        B1 - cell
        B2 - cell
        B3 - cell
        B4 - cell
        C3 - cell
        C4 - cell
        BORDER - cell
  )
  (:init
               (dispenser A0)
               (proc A2)
               (proc B0)
               (proc B1)
               (proc B2)
               (proc B3)
               (proc B4)
               (proc C3)
               (dispenser C4)
               (reject A0 left)
               (reject A0 right)
               (reject A0 up)
               (reject A0 down)
               (available A2)
               (available B0)
               (available B1)
               (available B2)
               (available B3)
               (available B4)
               (available C3)
               (reject C4 left)
               (reject C4 right)
               (reject C4 up)
               (reject C4 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A0)
               (neighbour right A0 BORDER)

               (neighbour right BORDER A0)
               (neighbour left A0 BORDER)

               (neighbour up BORDER A0)
               (neighbour down A0 BORDER)

               (neighbour down B0 A0)
               (neighbour up A0 B0)

               (neighbour left BORDER A2)
               (neighbour right A2 BORDER)

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

               (neighbour down BORDER B0)
               (neighbour up B0 BORDER)

               (neighbour right B2 B1)
               (neighbour left B1 B2)

               (neighbour up BORDER B1)
               (neighbour down B1 BORDER)

               (neighbour down BORDER B1)
               (neighbour up B1 BORDER)

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour down BORDER B2)
               (neighbour up B2 BORDER)

               (neighbour right B4 B3)
               (neighbour left B3 B4)

               (neighbour up BORDER B3)
               (neighbour down B3 BORDER)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour right BORDER B4)
               (neighbour left B4 BORDER)

               (neighbour up BORDER B4)
               (neighbour down B4 BORDER)

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
              (busy B0)
              (busy B2)
              (busy B4)
              (busy C3)
  ))
)
