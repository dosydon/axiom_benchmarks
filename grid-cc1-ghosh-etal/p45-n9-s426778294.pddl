;; d-b-
;; bbnd
;; nn--
;; bbb-
(define (problem N9-S426778294)
  (:domain grid)
  (:objects
        A0 - cell
        A2 - cell
        B0 - cell
        B1 - cell
        B2 - cell
        B3 - cell
        C0 - cell
        C1 - cell
        D0 - cell
        D1 - cell
        D2 - cell
        BORDER - cell
  )
  (:init
               (dispenser A0)
               (proc A2)
               (proc B0)
               (proc B1)
               (proc B2)
               (dispenser B3)
               (proc C0)
               (proc C1)
               (proc D0)
               (proc D1)
               (proc D2)
               (reject A0 left)
               (reject A0 right)
               (reject A0 up)
               (reject A0 down)
               (available A2)
               (available B0)
               (available B1)
               (available B2)
               (reject B3 left)
               (reject B3 right)
               (reject B3 up)
               (reject B3 down)
               (available C0)
               (available C1)
               (available D0)
               (available D1)
               (available D2)
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

               (neighbour down C0 B0)
               (neighbour up B0 C0)

               (neighbour right B2 B1)
               (neighbour left B1 B2)

               (neighbour up BORDER B1)
               (neighbour down B1 BORDER)

               (neighbour down C1 B1)
               (neighbour up B1 C1)

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour down BORDER B2)
               (neighbour up B2 BORDER)

               (neighbour right BORDER B3)
               (neighbour left B3 BORDER)

               (neighbour up BORDER B3)
               (neighbour down B3 BORDER)

               (neighbour down BORDER B3)
               (neighbour up B3 BORDER)

               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right C1 C0)
               (neighbour left C0 C1)

               (neighbour down D0 C0)
               (neighbour up C0 D0)

               (neighbour right BORDER C1)
               (neighbour left C1 BORDER)

               (neighbour down D1 C1)
               (neighbour up C1 D1)

               (neighbour left BORDER D0)
               (neighbour right D0 BORDER)

               (neighbour right D1 D0)
               (neighbour left D0 D1)

               (neighbour down BORDER D0)
               (neighbour up D0 BORDER)

               (neighbour right D2 D1)
               (neighbour left D1 D2)

               (neighbour down BORDER D1)
               (neighbour up D1 BORDER)

               (neighbour right BORDER D2)
               (neighbour left D2 BORDER)

               (neighbour up BORDER D2)
               (neighbour down D2 BORDER)

               (neighbour down BORDER D2)
               (neighbour up D2 BORDER)

  )
  (:goal (and 
              (busy A2)
              (busy B0)
              (busy B1)
              (busy D0)
              (busy D1)
              (busy D2)
  ))
)
