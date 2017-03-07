;; --nnb
;; --bbd
;; nbnd-
;; bnb--
;; bbbd-
(define (problem N14-S733814185)
  (:domain grid)
  (:objects
        A2 - cell
        A3 - cell
        A4 - cell
        B2 - cell
        B3 - cell
        B4 - cell
        C0 - cell
        C1 - cell
        C2 - cell
        C3 - cell
        D0 - cell
        D1 - cell
        D2 - cell
        E0 - cell
        E1 - cell
        E2 - cell
        E3 - cell
        BORDER - cell
  )
  (:init
               (proc A2)
               (proc A3)
               (proc A4)
               (proc B2)
               (proc B3)
               (dispenser B4)
               (proc C0)
               (proc C1)
               (proc C2)
               (dispenser C3)
               (proc D0)
               (proc D1)
               (proc D2)
               (proc E0)
               (proc E1)
               (proc E2)
               (dispenser E3)
               (available A2)
               (available A3)
               (available A4)
               (available B2)
               (available B3)
               (reject B4 left)
               (reject B4 right)
               (reject B4 up)
               (reject B4 down)
               (available C0)
               (available C1)
               (available C2)
               (reject C3 left)
               (reject C3 right)
               (reject C3 up)
               (reject C3 down)
               (available D0)
               (available D1)
               (available D2)
               (available E0)
               (available E1)
               (available E2)
               (reject E3 left)
               (reject E3 right)
               (reject E3 up)
               (reject E3 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A2)
               (neighbour right A2 BORDER)

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

               (neighbour left BORDER B2)
               (neighbour right B2 BORDER)

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

               (neighbour down BORDER B4)
               (neighbour up B4 BORDER)

               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right C1 C0)
               (neighbour left C0 C1)

               (neighbour up BORDER C0)
               (neighbour down C0 BORDER)

               (neighbour down D0 C0)
               (neighbour up C0 D0)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

               (neighbour up BORDER C1)
               (neighbour down C1 BORDER)

               (neighbour down D1 C1)
               (neighbour up C1 D1)

               (neighbour right C3 C2)
               (neighbour left C2 C3)

               (neighbour down D2 C2)
               (neighbour up C2 D2)

               (neighbour right BORDER C3)
               (neighbour left C3 BORDER)

               (neighbour down BORDER C3)
               (neighbour up C3 BORDER)

               (neighbour left BORDER D0)
               (neighbour right D0 BORDER)

               (neighbour right D1 D0)
               (neighbour left D0 D1)

               (neighbour down E0 D0)
               (neighbour up D0 E0)

               (neighbour right D2 D1)
               (neighbour left D1 D2)

               (neighbour down E1 D1)
               (neighbour up D1 E1)

               (neighbour right BORDER D2)
               (neighbour left D2 BORDER)

               (neighbour down E2 D2)
               (neighbour up D2 E2)

               (neighbour left BORDER E0)
               (neighbour right E0 BORDER)

               (neighbour right E1 E0)
               (neighbour left E0 E1)

               (neighbour down BORDER E0)
               (neighbour up E0 BORDER)

               (neighbour right E2 E1)
               (neighbour left E1 E2)

               (neighbour down BORDER E1)
               (neighbour up E1 BORDER)

               (neighbour right E3 E2)
               (neighbour left E2 E3)

               (neighbour down BORDER E2)
               (neighbour up E2 BORDER)

               (neighbour right BORDER E3)
               (neighbour left E3 BORDER)

               (neighbour up BORDER E3)
               (neighbour down E3 BORDER)

               (neighbour down BORDER E3)
               (neighbour up E3 BORDER)

  )
  (:goal (and 
              (busy A4)
              (busy B2)
              (busy B3)
              (busy C1)
              (busy D0)
              (busy D2)
              (busy E0)
              (busy E1)
              (busy E2)
  ))
)
