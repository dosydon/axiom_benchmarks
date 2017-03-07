;; -bbd-----
;; nbnbb----
;; bnbdbd---
;; bb-------
;; ---------
;; ---------
;; ---------
;; ---------
;; ---------
(define (problem N13-S453758049)
  (:domain grid)
  (:objects
        A1 - cell
        A2 - cell
        A3 - cell
        B0 - cell
        B1 - cell
        B2 - cell
        B3 - cell
        B4 - cell
        C0 - cell
        C1 - cell
        C2 - cell
        C3 - cell
        C4 - cell
        C5 - cell
        D0 - cell
        D1 - cell
        BORDER - cell
  )
  (:init
               (proc A1)
               (proc A2)
               (dispenser A3)
               (proc B0)
               (proc B1)
               (proc B2)
               (proc B3)
               (proc B4)
               (proc C0)
               (proc C1)
               (proc C2)
               (dispenser C3)
               (proc C4)
               (dispenser C5)
               (proc D0)
               (proc D1)
               (available A1)
               (available A2)
               (reject A3 left)
               (reject A3 right)
               (reject A3 up)
               (reject A3 down)
               (available B0)
               (available B1)
               (available B2)
               (available B3)
               (available B4)
               (available C0)
               (available C1)
               (available C2)
               (reject C3 left)
               (reject C3 right)
               (reject C3 up)
               (reject C3 down)
               (available C4)
               (reject C5 left)
               (reject C5 right)
               (reject C5 up)
               (reject C5 down)
               (available D0)
               (available D1)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A1)
               (neighbour right A1 BORDER)

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

               (neighbour up BORDER B0)
               (neighbour down B0 BORDER)

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

               (neighbour right B4 B3)
               (neighbour left B3 B4)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour right BORDER B4)
               (neighbour left B4 BORDER)

               (neighbour up BORDER B4)
               (neighbour down B4 BORDER)

               (neighbour down C4 B4)
               (neighbour up B4 C4)

               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right C1 C0)
               (neighbour left C0 C1)

               (neighbour down D0 C0)
               (neighbour up C0 D0)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

               (neighbour down D1 C1)
               (neighbour up C1 D1)

               (neighbour right C3 C2)
               (neighbour left C2 C3)

               (neighbour down BORDER C2)
               (neighbour up C2 BORDER)

               (neighbour right C4 C3)
               (neighbour left C3 C4)

               (neighbour down BORDER C3)
               (neighbour up C3 BORDER)

               (neighbour right C5 C4)
               (neighbour left C4 C5)

               (neighbour down BORDER C4)
               (neighbour up C4 BORDER)

               (neighbour right BORDER C5)
               (neighbour left C5 BORDER)

               (neighbour up BORDER C5)
               (neighbour down C5 BORDER)

               (neighbour down BORDER C5)
               (neighbour up C5 BORDER)

               (neighbour left BORDER D0)
               (neighbour right D0 BORDER)

               (neighbour right D1 D0)
               (neighbour left D0 D1)

               (neighbour down BORDER D0)
               (neighbour up D0 BORDER)

               (neighbour right BORDER D1)
               (neighbour left D1 BORDER)

               (neighbour down BORDER D1)
               (neighbour up D1 BORDER)

  )
  (:goal (and 
              (busy A1)
              (busy A2)
              (busy B1)
              (busy B3)
              (busy B4)
              (busy C0)
              (busy C2)
              (busy C4)
              (busy D0)
              (busy D1)
  ))
)
