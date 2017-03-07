;; ------
;; ------
;; ------
;; b-----
;; bdbd--
;; bbbnb-
(define (problem N8-S125906747)
  (:domain grid)
  (:objects
        D0 - cell
        E0 - cell
        E1 - cell
        E2 - cell
        E3 - cell
        F0 - cell
        F1 - cell
        F2 - cell
        F3 - cell
        F4 - cell
        BORDER - cell
  )
  (:init
               (proc D0)
               (proc E0)
               (dispenser E1)
               (proc E2)
               (dispenser E3)
               (proc F0)
               (proc F1)
               (proc F2)
               (proc F3)
               (proc F4)
               (available D0)
               (available E0)
               (reject E1 left)
               (reject E1 right)
               (reject E1 up)
               (reject E1 down)
               (available E2)
               (reject E3 left)
               (reject E3 right)
               (reject E3 up)
               (reject E3 down)
               (available F0)
               (available F1)
               (available F2)
               (available F3)
               (available F4)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER D0)
               (neighbour right D0 BORDER)

               (neighbour right BORDER D0)
               (neighbour left D0 BORDER)

               (neighbour up BORDER D0)
               (neighbour down D0 BORDER)

               (neighbour down E0 D0)
               (neighbour up D0 E0)

               (neighbour left BORDER E0)
               (neighbour right E0 BORDER)

               (neighbour right E1 E0)
               (neighbour left E0 E1)

               (neighbour down F0 E0)
               (neighbour up E0 F0)

               (neighbour right E2 E1)
               (neighbour left E1 E2)

               (neighbour up BORDER E1)
               (neighbour down E1 BORDER)

               (neighbour down F1 E1)
               (neighbour up E1 F1)

               (neighbour right E3 E2)
               (neighbour left E2 E3)

               (neighbour up BORDER E2)
               (neighbour down E2 BORDER)

               (neighbour down F2 E2)
               (neighbour up E2 F2)

               (neighbour right BORDER E3)
               (neighbour left E3 BORDER)

               (neighbour up BORDER E3)
               (neighbour down E3 BORDER)

               (neighbour down F3 E3)
               (neighbour up E3 F3)

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

               (neighbour right F4 F3)
               (neighbour left F3 F4)

               (neighbour down BORDER F3)
               (neighbour up F3 BORDER)

               (neighbour right BORDER F4)
               (neighbour left F4 BORDER)

               (neighbour up BORDER F4)
               (neighbour down F4 BORDER)

               (neighbour down BORDER F4)
               (neighbour up F4 BORDER)

  )
  (:goal (and 
              (busy D0)
              (busy E0)
              (busy E2)
              (busy F0)
              (busy F1)
              (busy F2)
              (busy F4)
  ))
)
