;; -------
;; -------
;; --bb---
;; dbnb---
;; -b-----
;; bnd----
;; bb-----
(define (problem N10-S598547056)
  (:domain grid)
  (:objects
        C2 - cell
        C3 - cell
        D0 - cell
        D1 - cell
        D2 - cell
        D3 - cell
        E1 - cell
        F0 - cell
        F1 - cell
        F2 - cell
        G0 - cell
        G1 - cell
        BORDER - cell
  )
  (:init
               (proc C2)
               (proc C3)
               (dispenser D0)
               (proc D1)
               (proc D2)
               (proc D3)
               (proc E1)
               (proc F0)
               (proc F1)
               (dispenser F2)
               (proc G0)
               (proc G1)
               (available C2)
               (available C3)
               (reject D0 left)
               (reject D0 right)
               (reject D0 up)
               (reject D0 down)
               (available D1)
               (available D2)
               (available D3)
               (available E1)
               (available F0)
               (available F1)
               (reject F2 left)
               (reject F2 right)
               (reject F2 up)
               (reject F2 down)
               (available G0)
               (available G1)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER C2)
               (neighbour right C2 BORDER)

               (neighbour right C3 C2)
               (neighbour left C2 C3)

               (neighbour up BORDER C2)
               (neighbour down C2 BORDER)

               (neighbour down D2 C2)
               (neighbour up C2 D2)

               (neighbour right BORDER C3)
               (neighbour left C3 BORDER)

               (neighbour up BORDER C3)
               (neighbour down C3 BORDER)

               (neighbour down D3 C3)
               (neighbour up C3 D3)

               (neighbour left BORDER D0)
               (neighbour right D0 BORDER)

               (neighbour right D1 D0)
               (neighbour left D0 D1)

               (neighbour up BORDER D0)
               (neighbour down D0 BORDER)

               (neighbour down BORDER D0)
               (neighbour up D0 BORDER)

               (neighbour right D2 D1)
               (neighbour left D1 D2)

               (neighbour up BORDER D1)
               (neighbour down D1 BORDER)

               (neighbour down E1 D1)
               (neighbour up D1 E1)

               (neighbour right D3 D2)
               (neighbour left D2 D3)

               (neighbour down BORDER D2)
               (neighbour up D2 BORDER)

               (neighbour right BORDER D3)
               (neighbour left D3 BORDER)

               (neighbour down BORDER D3)
               (neighbour up D3 BORDER)

               (neighbour left BORDER E1)
               (neighbour right E1 BORDER)

               (neighbour right BORDER E1)
               (neighbour left E1 BORDER)

               (neighbour down F1 E1)
               (neighbour up E1 F1)

               (neighbour left BORDER F0)
               (neighbour right F0 BORDER)

               (neighbour right F1 F0)
               (neighbour left F0 F1)

               (neighbour up BORDER F0)
               (neighbour down F0 BORDER)

               (neighbour down G0 F0)
               (neighbour up F0 G0)

               (neighbour right F2 F1)
               (neighbour left F1 F2)

               (neighbour down G1 F1)
               (neighbour up F1 G1)

               (neighbour right BORDER F2)
               (neighbour left F2 BORDER)

               (neighbour up BORDER F2)
               (neighbour down F2 BORDER)

               (neighbour down BORDER F2)
               (neighbour up F2 BORDER)

               (neighbour left BORDER G0)
               (neighbour right G0 BORDER)

               (neighbour right G1 G0)
               (neighbour left G0 G1)

               (neighbour down BORDER G0)
               (neighbour up G0 BORDER)

               (neighbour right BORDER G1)
               (neighbour left G1 BORDER)

               (neighbour down BORDER G1)
               (neighbour up G1 BORDER)

  )
  (:goal (and 
              (busy C2)
              (busy C3)
              (busy D1)
              (busy D3)
              (busy E1)
              (busy F0)
              (busy G0)
              (busy G1)
  ))
)
