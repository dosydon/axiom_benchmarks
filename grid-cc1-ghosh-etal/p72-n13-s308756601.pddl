;; ------
;; ------
;; -d----
;; dnbnb-
;; dbnbn-
;; -bbnbb
(define (problem N13-S308756601)
  (:domain grid)
  (:objects
        C1 - cell
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
        F1 - cell
        F2 - cell
        F3 - cell
        F4 - cell
        F5 - cell
        BORDER - cell
  )
  (:init
               (dispenser C1)
               (dispenser D0)
               (proc D1)
               (proc D2)
               (proc D3)
               (proc D4)
               (dispenser E0)
               (proc E1)
               (proc E2)
               (proc E3)
               (proc E4)
               (proc F1)
               (proc F2)
               (proc F3)
               (proc F4)
               (proc F5)
               (reject C1 left)
               (reject C1 right)
               (reject C1 up)
               (reject C1 down)
               (reject D0 left)
               (reject D0 right)
               (reject D0 up)
               (reject D0 down)
               (available D1)
               (available D2)
               (available D3)
               (available D4)
               (reject E0 left)
               (reject E0 right)
               (reject E0 up)
               (reject E0 down)
               (available E1)
               (available E2)
               (available E3)
               (available E4)
               (available F1)
               (available F2)
               (available F3)
               (available F4)
               (available F5)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER C1)
               (neighbour right C1 BORDER)

               (neighbour right BORDER C1)
               (neighbour left C1 BORDER)

               (neighbour up BORDER C1)
               (neighbour down C1 BORDER)

               (neighbour down D1 C1)
               (neighbour up C1 D1)

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

               (neighbour right D3 D2)
               (neighbour left D2 D3)

               (neighbour up BORDER D2)
               (neighbour down D2 BORDER)

               (neighbour down E2 D2)
               (neighbour up D2 E2)

               (neighbour right D4 D3)
               (neighbour left D3 D4)

               (neighbour up BORDER D3)
               (neighbour down D3 BORDER)

               (neighbour down E3 D3)
               (neighbour up D3 E3)

               (neighbour right BORDER D4)
               (neighbour left D4 BORDER)

               (neighbour up BORDER D4)
               (neighbour down D4 BORDER)

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

               (neighbour down F2 E2)
               (neighbour up E2 F2)

               (neighbour right E4 E3)
               (neighbour left E3 E4)

               (neighbour down F3 E3)
               (neighbour up E3 F3)

               (neighbour right BORDER E4)
               (neighbour left E4 BORDER)

               (neighbour down F4 E4)
               (neighbour up E4 F4)

               (neighbour left BORDER F1)
               (neighbour right F1 BORDER)

               (neighbour right F2 F1)
               (neighbour left F1 F2)

               (neighbour down BORDER F1)
               (neighbour up F1 BORDER)

               (neighbour right F3 F2)
               (neighbour left F2 F3)

               (neighbour down BORDER F2)
               (neighbour up F2 BORDER)

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

               (neighbour up BORDER F5)
               (neighbour down F5 BORDER)

               (neighbour down BORDER F5)
               (neighbour up F5 BORDER)

  )
  (:goal (and 
              (busy D2)
              (busy D4)
              (busy E1)
              (busy E3)
              (busy F1)
              (busy F2)
              (busy F4)
              (busy F5)
  ))
)
