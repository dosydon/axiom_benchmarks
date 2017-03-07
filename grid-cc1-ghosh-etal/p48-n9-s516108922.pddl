;; ------
;; ------
;; bnd---
;; -bnb--
;; -bnbd-
;; -b----
(define (problem N9-S516108922)
  (:domain grid)
  (:objects
        C0 - cell
        C1 - cell
        C2 - cell
        D1 - cell
        D2 - cell
        D3 - cell
        E1 - cell
        E2 - cell
        E3 - cell
        E4 - cell
        F1 - cell
        BORDER - cell
  )
  (:init
               (proc C0)
               (proc C1)
               (dispenser C2)
               (proc D1)
               (proc D2)
               (proc D3)
               (proc E1)
               (proc E2)
               (proc E3)
               (dispenser E4)
               (proc F1)
               (available C0)
               (available C1)
               (reject C2 left)
               (reject C2 right)
               (reject C2 up)
               (reject C2 down)
               (available D1)
               (available D2)
               (available D3)
               (available E1)
               (available E2)
               (available E3)
               (reject E4 left)
               (reject E4 right)
               (reject E4 up)
               (reject E4 down)
               (available F1)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right C1 C0)
               (neighbour left C0 C1)

               (neighbour up BORDER C0)
               (neighbour down C0 BORDER)

               (neighbour down BORDER C0)
               (neighbour up C0 BORDER)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

               (neighbour up BORDER C1)
               (neighbour down C1 BORDER)

               (neighbour down D1 C1)
               (neighbour up C1 D1)

               (neighbour right BORDER C2)
               (neighbour left C2 BORDER)

               (neighbour up BORDER C2)
               (neighbour down C2 BORDER)

               (neighbour down D2 C2)
               (neighbour up C2 D2)

               (neighbour left BORDER D1)
               (neighbour right D1 BORDER)

               (neighbour right D2 D1)
               (neighbour left D1 D2)

               (neighbour down E1 D1)
               (neighbour up D1 E1)

               (neighbour right D3 D2)
               (neighbour left D2 D3)

               (neighbour down E2 D2)
               (neighbour up D2 E2)

               (neighbour right BORDER D3)
               (neighbour left D3 BORDER)

               (neighbour up BORDER D3)
               (neighbour down D3 BORDER)

               (neighbour down E3 D3)
               (neighbour up D3 E3)

               (neighbour left BORDER E1)
               (neighbour right E1 BORDER)

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

               (neighbour down BORDER E3)
               (neighbour up E3 BORDER)

               (neighbour right BORDER E4)
               (neighbour left E4 BORDER)

               (neighbour up BORDER E4)
               (neighbour down E4 BORDER)

               (neighbour down BORDER E4)
               (neighbour up E4 BORDER)

               (neighbour left BORDER F1)
               (neighbour right F1 BORDER)

               (neighbour right BORDER F1)
               (neighbour left F1 BORDER)

               (neighbour down BORDER F1)
               (neighbour up F1 BORDER)

  )
  (:goal (and 
              (busy C0)
              (busy D1)
              (busy D3)
              (busy E1)
              (busy E3)
              (busy F1)
  ))
)
