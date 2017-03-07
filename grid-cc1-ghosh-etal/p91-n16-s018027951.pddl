;; ------
;; ---b--
;; --bnb-
;; bnbnb-
;; bbnbnd
;; -d-dbb
(define (problem N16-S18027951)
  (:domain grid)
  (:objects
        B3 - cell
        C2 - cell
        C3 - cell
        C4 - cell
        D0 - cell
        D1 - cell
        D2 - cell
        D3 - cell
        D4 - cell
        E0 - cell
        E1 - cell
        E2 - cell
        E3 - cell
        E4 - cell
        E5 - cell
        F1 - cell
        F3 - cell
        F4 - cell
        F5 - cell
        BORDER - cell
  )
  (:init
               (proc B3)
               (proc C2)
               (proc C3)
               (proc C4)
               (proc D0)
               (proc D1)
               (proc D2)
               (proc D3)
               (proc D4)
               (proc E0)
               (proc E1)
               (proc E2)
               (proc E3)
               (proc E4)
               (dispenser E5)
               (dispenser F1)
               (dispenser F3)
               (proc F4)
               (proc F5)
               (available B3)
               (available C2)
               (available C3)
               (available C4)
               (available D0)
               (available D1)
               (available D2)
               (available D3)
               (available D4)
               (available E0)
               (available E1)
               (available E2)
               (available E3)
               (available E4)
               (reject E5 left)
               (reject E5 right)
               (reject E5 up)
               (reject E5 down)
               (reject F1 left)
               (reject F1 right)
               (reject F1 up)
               (reject F1 down)
               (reject F3 left)
               (reject F3 right)
               (reject F3 up)
               (reject F3 down)
               (available F4)
               (available F5)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER B3)
               (neighbour right B3 BORDER)

               (neighbour right BORDER B3)
               (neighbour left B3 BORDER)

               (neighbour up BORDER B3)
               (neighbour down B3 BORDER)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour left BORDER C2)
               (neighbour right C2 BORDER)

               (neighbour right C3 C2)
               (neighbour left C2 C3)

               (neighbour up BORDER C2)
               (neighbour down C2 BORDER)

               (neighbour down D2 C2)
               (neighbour up C2 D2)

               (neighbour right C4 C3)
               (neighbour left C3 C4)

               (neighbour down D3 C3)
               (neighbour up C3 D3)

               (neighbour right BORDER C4)
               (neighbour left C4 BORDER)

               (neighbour up BORDER C4)
               (neighbour down C4 BORDER)

               (neighbour down D4 C4)
               (neighbour up C4 D4)

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

               (neighbour up BORDER D1)
               (neighbour down D1 BORDER)

               (neighbour down E1 D1)
               (neighbour up D1 E1)

               (neighbour right D3 D2)
               (neighbour left D2 D3)

               (neighbour down E2 D2)
               (neighbour up D2 E2)

               (neighbour right D4 D3)
               (neighbour left D3 D4)

               (neighbour down E3 D3)
               (neighbour up D3 E3)

               (neighbour right BORDER D4)
               (neighbour left D4 BORDER)

               (neighbour down E4 D4)
               (neighbour up D4 E4)

               (neighbour left BORDER E0)
               (neighbour right E0 BORDER)

               (neighbour right E1 E0)
               (neighbour left E0 E1)

               (neighbour down BORDER E0)
               (neighbour up E0 BORDER)

               (neighbour right E2 E1)
               (neighbour left E1 E2)

               (neighbour down F1 E1)
               (neighbour up E1 F1)

               (neighbour right E3 E2)
               (neighbour left E2 E3)

               (neighbour down BORDER E2)
               (neighbour up E2 BORDER)

               (neighbour right E4 E3)
               (neighbour left E3 E4)

               (neighbour down F3 E3)
               (neighbour up E3 F3)

               (neighbour right E5 E4)
               (neighbour left E4 E5)

               (neighbour down F4 E4)
               (neighbour up E4 F4)

               (neighbour right BORDER E5)
               (neighbour left E5 BORDER)

               (neighbour up BORDER E5)
               (neighbour down E5 BORDER)

               (neighbour down F5 E5)
               (neighbour up E5 F5)

               (neighbour left BORDER F1)
               (neighbour right F1 BORDER)

               (neighbour right BORDER F1)
               (neighbour left F1 BORDER)

               (neighbour down BORDER F1)
               (neighbour up F1 BORDER)

               (neighbour left BORDER F3)
               (neighbour right F3 BORDER)

               (neighbour right F4 F3)
               (neighbour left F3 F4)

               (neighbour down BORDER F3)
               (neighbour up F3 BORDER)

               (neighbour right F5 F4)
               (neighbour left F4 F5)

               (neighbour down BORDER F4)
               (neighbour up F4 BORDER)

               (neighbour right BORDER F5)
               (neighbour left F5 BORDER)

               (neighbour down BORDER F5)
               (neighbour up F5 BORDER)

  )
  (:goal (and 
              (busy B3)
              (busy C2)
              (busy C4)
              (busy D0)
              (busy D2)
              (busy D4)
              (busy E0)
              (busy E1)
              (busy E3)
              (busy F4)
              (busy F5)
  ))
)
