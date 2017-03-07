;; -------
;; -------
;; -dd----
;; bnn----
;; nbbn---
;; nnbd---
;; bnbbb--
(define (problem N15-S915153076)
  (:domain grid)
  (:objects
        C1 - cell
        C2 - cell
        D0 - cell
        D1 - cell
        D2 - cell
        E0 - cell
        E1 - cell
        E2 - cell
        E3 - cell
        F0 - cell
        F1 - cell
        F2 - cell
        F3 - cell
        G0 - cell
        G1 - cell
        G2 - cell
        G3 - cell
        G4 - cell
        BORDER - cell
  )
  (:init
               (dispenser C1)
               (dispenser C2)
               (proc D0)
               (proc D1)
               (proc D2)
               (proc E0)
               (proc E1)
               (proc E2)
               (proc E3)
               (proc F0)
               (proc F1)
               (proc F2)
               (dispenser F3)
               (proc G0)
               (proc G1)
               (proc G2)
               (proc G3)
               (proc G4)
               (reject C1 left)
               (reject C1 right)
               (reject C1 up)
               (reject C1 down)
               (reject C2 left)
               (reject C2 right)
               (reject C2 up)
               (reject C2 down)
               (available D0)
               (available D1)
               (available D2)
               (available E0)
               (available E1)
               (available E2)
               (available E3)
               (available F0)
               (available F1)
               (available F2)
               (reject F3 left)
               (reject F3 right)
               (reject F3 up)
               (reject F3 down)
               (available G0)
               (available G1)
               (available G2)
               (available G3)
               (available G4)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER C1)
               (neighbour right C1 BORDER)

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

               (neighbour down F0 E0)
               (neighbour up E0 F0)

               (neighbour right E2 E1)
               (neighbour left E1 E2)

               (neighbour down F1 E1)
               (neighbour up E1 F1)

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

               (neighbour left BORDER F0)
               (neighbour right F0 BORDER)

               (neighbour right F1 F0)
               (neighbour left F0 F1)

               (neighbour down G0 F0)
               (neighbour up F0 G0)

               (neighbour right F2 F1)
               (neighbour left F1 F2)

               (neighbour down G1 F1)
               (neighbour up F1 G1)

               (neighbour right F3 F2)
               (neighbour left F2 F3)

               (neighbour down G2 F2)
               (neighbour up F2 G2)

               (neighbour right BORDER F3)
               (neighbour left F3 BORDER)

               (neighbour down G3 F3)
               (neighbour up F3 G3)

               (neighbour left BORDER G0)
               (neighbour right G0 BORDER)

               (neighbour right G1 G0)
               (neighbour left G0 G1)

               (neighbour down BORDER G0)
               (neighbour up G0 BORDER)

               (neighbour right G2 G1)
               (neighbour left G1 G2)

               (neighbour down BORDER G1)
               (neighbour up G1 BORDER)

               (neighbour right G3 G2)
               (neighbour left G2 G3)

               (neighbour down BORDER G2)
               (neighbour up G2 BORDER)

               (neighbour right G4 G3)
               (neighbour left G3 G4)

               (neighbour down BORDER G3)
               (neighbour up G3 BORDER)

               (neighbour right BORDER G4)
               (neighbour left G4 BORDER)

               (neighbour up BORDER G4)
               (neighbour down G4 BORDER)

               (neighbour down BORDER G4)
               (neighbour up G4 BORDER)

  )
  (:goal (and 
              (busy D0)
              (busy E1)
              (busy E2)
              (busy F2)
              (busy G0)
              (busy G2)
              (busy G3)
              (busy G4)
  ))
)
