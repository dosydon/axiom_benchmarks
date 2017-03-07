;; bnbbd-----
;; bnnbn-----
;; dbbnb-----
;; -db-------
;; ----------
;; ----------
;; ----------
;; ----------
;; ----------
;; ----------
(define (problem N14-S680088009)
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
        B4 - cell
        C0 - cell
        C1 - cell
        C2 - cell
        C3 - cell
        C4 - cell
        D1 - cell
        D2 - cell
        BORDER - cell
  )
  (:init
               (proc A0)
               (proc A1)
               (proc A2)
               (proc A3)
               (dispenser A4)
               (proc B0)
               (proc B1)
               (proc B2)
               (proc B3)
               (proc B4)
               (dispenser C0)
               (proc C1)
               (proc C2)
               (proc C3)
               (proc C4)
               (dispenser D1)
               (proc D2)
               (available A0)
               (available A1)
               (available A2)
               (available A3)
               (reject A4 left)
               (reject A4 right)
               (reject A4 up)
               (reject A4 down)
               (available B0)
               (available B1)
               (available B2)
               (available B3)
               (available B4)
               (reject C0 left)
               (reject C0 right)
               (reject C0 up)
               (reject C0 down)
               (available C1)
               (available C2)
               (available C3)
               (available C4)
               (reject D1 left)
               (reject D1 right)
               (reject D1 up)
               (reject D1 down)
               (available D2)
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

               (neighbour down B4 A4)
               (neighbour up A4 B4)

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

               (neighbour right B4 B3)
               (neighbour left B3 B4)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour right BORDER B4)
               (neighbour left B4 BORDER)

               (neighbour down C4 B4)
               (neighbour up B4 C4)

               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right C1 C0)
               (neighbour left C0 C1)

               (neighbour down BORDER C0)
               (neighbour up C0 BORDER)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

               (neighbour down D1 C1)
               (neighbour up C1 D1)

               (neighbour right C3 C2)
               (neighbour left C2 C3)

               (neighbour down D2 C2)
               (neighbour up C2 D2)

               (neighbour right C4 C3)
               (neighbour left C3 C4)

               (neighbour down BORDER C3)
               (neighbour up C3 BORDER)

               (neighbour right BORDER C4)
               (neighbour left C4 BORDER)

               (neighbour down BORDER C4)
               (neighbour up C4 BORDER)

               (neighbour left BORDER D1)
               (neighbour right D1 BORDER)

               (neighbour right D2 D1)
               (neighbour left D1 D2)

               (neighbour down BORDER D1)
               (neighbour up D1 BORDER)

               (neighbour right BORDER D2)
               (neighbour left D2 BORDER)

               (neighbour down BORDER D2)
               (neighbour up D2 BORDER)

  )
  (:goal (and 
              (busy A0)
              (busy A2)
              (busy A3)
              (busy B0)
              (busy B3)
              (busy C1)
              (busy C2)
              (busy C4)
              (busy D2)
  ))
)
