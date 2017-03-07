;; --b---
;; dbnbd-
;; -bnd--
;; bnb---
;; bbnb--
;; --bb--
(define (problem N15-S836223639)
  (:domain grid)
  (:objects
        A2 - cell
        B0 - cell
        B1 - cell
        B2 - cell
        B3 - cell
        B4 - cell
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
        F2 - cell
        F3 - cell
        BORDER - cell
  )
  (:init
               (proc A2)
               (dispenser B0)
               (proc B1)
               (proc B2)
               (proc B3)
               (dispenser B4)
               (proc C1)
               (proc C2)
               (dispenser C3)
               (proc D0)
               (proc D1)
               (proc D2)
               (proc E0)
               (proc E1)
               (proc E2)
               (proc E3)
               (proc F2)
               (proc F3)
               (available A2)
               (reject B0 left)
               (reject B0 right)
               (reject B0 up)
               (reject B0 down)
               (available B1)
               (available B2)
               (available B3)
               (reject B4 left)
               (reject B4 right)
               (reject B4 up)
               (reject B4 down)
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
               (available E3)
               (available F2)
               (available F3)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
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

               (neighbour up BORDER B0)
               (neighbour down B0 BORDER)

               (neighbour down BORDER B0)
               (neighbour up B0 BORDER)

               (neighbour right B2 B1)
               (neighbour left B1 B2)

               (neighbour up BORDER B1)
               (neighbour down B1 BORDER)

               (neighbour down C1 B1)
               (neighbour up B1 C1)

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

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

               (neighbour down BORDER B4)
               (neighbour up B4 BORDER)

               (neighbour left BORDER C1)
               (neighbour right C1 BORDER)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

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

               (neighbour up BORDER D0)
               (neighbour down D0 BORDER)

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

               (neighbour down F2 E2)
               (neighbour up E2 F2)

               (neighbour right BORDER E3)
               (neighbour left E3 BORDER)

               (neighbour up BORDER E3)
               (neighbour down E3 BORDER)

               (neighbour down F3 E3)
               (neighbour up E3 F3)

               (neighbour left BORDER F2)
               (neighbour right F2 BORDER)

               (neighbour right F3 F2)
               (neighbour left F2 F3)

               (neighbour down BORDER F2)
               (neighbour up F2 BORDER)

               (neighbour right BORDER F3)
               (neighbour left F3 BORDER)

               (neighbour down BORDER F3)
               (neighbour up F3 BORDER)

  )
  (:goal (and 
              (busy A2)
              (busy B1)
              (busy B3)
              (busy C1)
              (busy D0)
              (busy D2)
              (busy E0)
              (busy E1)
              (busy E3)
              (busy F2)
              (busy F3)
  ))
)
