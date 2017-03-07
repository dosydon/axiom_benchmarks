;; ------
;; ------
;; ------
;; bdbd--
;; nbn---
;; bnbb--
(define (problem N9-S484906490)
  (:domain grid)
  (:objects
        D0 - cell
        D1 - cell
        D2 - cell
        D3 - cell
        E0 - cell
        E1 - cell
        E2 - cell
        F0 - cell
        F1 - cell
        F2 - cell
        F3 - cell
        BORDER - cell
  )
  (:init
               (proc D0)
               (dispenser D1)
               (proc D2)
               (dispenser D3)
               (proc E0)
               (proc E1)
               (proc E2)
               (proc F0)
               (proc F1)
               (proc F2)
               (proc F3)
               (available D0)
               (reject D1 left)
               (reject D1 right)
               (reject D1 up)
               (reject D1 down)
               (available D2)
               (reject D3 left)
               (reject D3 right)
               (reject D3 up)
               (reject D3 down)
               (available E0)
               (available E1)
               (available E2)
               (available F0)
               (available F1)
               (available F2)
               (available F3)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
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

               (neighbour up BORDER D2)
               (neighbour down D2 BORDER)

               (neighbour down E2 D2)
               (neighbour up D2 E2)

               (neighbour right BORDER D3)
               (neighbour left D3 BORDER)

               (neighbour up BORDER D3)
               (neighbour down D3 BORDER)

               (neighbour down BORDER D3)
               (neighbour up D3 BORDER)

               (neighbour left BORDER E0)
               (neighbour right E0 BORDER)

               (neighbour right E1 E0)
               (neighbour left E0 E1)

               (neighbour down F0 E0)
               (neighbour up E0 F0)

               (neighbour right E2 E1)
               (neighbour left E1 E2)

               (neighbour down F1 E1)
               (neighbour up E1 F1)

               (neighbour right BORDER E2)
               (neighbour left E2 BORDER)

               (neighbour down F2 E2)
               (neighbour up E2 F2)

               (neighbour left BORDER F0)
               (neighbour right F0 BORDER)

               (neighbour right F1 F0)
               (neighbour left F0 F1)

               (neighbour down BORDER F0)
               (neighbour up F0 BORDER)

               (neighbour right F2 F1)
               (neighbour left F1 F2)

               (neighbour down BORDER F1)
               (neighbour up F1 BORDER)

               (neighbour right F3 F2)
               (neighbour left F2 F3)

               (neighbour down BORDER F2)
               (neighbour up F2 BORDER)

               (neighbour right BORDER F3)
               (neighbour left F3 BORDER)

               (neighbour up BORDER F3)
               (neighbour down F3 BORDER)

               (neighbour down BORDER F3)
               (neighbour up F3 BORDER)

  )
  (:goal (and 
              (busy D0)
              (busy D2)
              (busy E1)
              (busy F0)
              (busy F2)
              (busy F3)
  ))
)
