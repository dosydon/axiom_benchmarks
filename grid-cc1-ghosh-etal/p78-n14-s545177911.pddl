;; --------
;; --------
;; --------
;; --d-----
;; dbbd----
;; bnnb----
;; -bnnb---
;; bbnb----
(define (problem N14-S545177911)
  (:domain grid)
  (:objects
        D2 - cell
        E0 - cell
        E1 - cell
        E2 - cell
        E3 - cell
        F0 - cell
        F1 - cell
        F2 - cell
        F3 - cell
        G1 - cell
        G2 - cell
        G3 - cell
        G4 - cell
        H0 - cell
        H1 - cell
        H2 - cell
        H3 - cell
        BORDER - cell
  )
  (:init
               (dispenser D2)
               (dispenser E0)
               (proc E1)
               (proc E2)
               (dispenser E3)
               (proc F0)
               (proc F1)
               (proc F2)
               (proc F3)
               (proc G1)
               (proc G2)
               (proc G3)
               (proc G4)
               (proc H0)
               (proc H1)
               (proc H2)
               (proc H3)
               (reject D2 left)
               (reject D2 right)
               (reject D2 up)
               (reject D2 down)
               (reject E0 left)
               (reject E0 right)
               (reject E0 up)
               (reject E0 down)
               (available E1)
               (available E2)
               (reject E3 left)
               (reject E3 right)
               (reject E3 up)
               (reject E3 down)
               (available F0)
               (available F1)
               (available F2)
               (available F3)
               (available G1)
               (available G2)
               (available G3)
               (available G4)
               (available H0)
               (available H1)
               (available H2)
               (available H3)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER D2)
               (neighbour right D2 BORDER)

               (neighbour right BORDER D2)
               (neighbour left D2 BORDER)

               (neighbour up BORDER D2)
               (neighbour down D2 BORDER)

               (neighbour down E2 D2)
               (neighbour up D2 E2)

               (neighbour left BORDER E0)
               (neighbour right E0 BORDER)

               (neighbour right E1 E0)
               (neighbour left E0 E1)

               (neighbour up BORDER E0)
               (neighbour down E0 BORDER)

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

               (neighbour left BORDER G1)
               (neighbour right G1 BORDER)

               (neighbour right G2 G1)
               (neighbour left G1 G2)

               (neighbour down H1 G1)
               (neighbour up G1 H1)

               (neighbour right G3 G2)
               (neighbour left G2 G3)

               (neighbour down H2 G2)
               (neighbour up G2 H2)

               (neighbour right G4 G3)
               (neighbour left G3 G4)

               (neighbour down H3 G3)
               (neighbour up G3 H3)

               (neighbour right BORDER G4)
               (neighbour left G4 BORDER)

               (neighbour up BORDER G4)
               (neighbour down G4 BORDER)

               (neighbour down BORDER G4)
               (neighbour up G4 BORDER)

               (neighbour left BORDER H0)
               (neighbour right H0 BORDER)

               (neighbour right H1 H0)
               (neighbour left H0 H1)

               (neighbour up BORDER H0)
               (neighbour down H0 BORDER)

               (neighbour down BORDER H0)
               (neighbour up H0 BORDER)

               (neighbour right H2 H1)
               (neighbour left H1 H2)

               (neighbour down BORDER H1)
               (neighbour up H1 BORDER)

               (neighbour right H3 H2)
               (neighbour left H2 H3)

               (neighbour down BORDER H2)
               (neighbour up H2 BORDER)

               (neighbour right BORDER H3)
               (neighbour left H3 BORDER)

               (neighbour down BORDER H3)
               (neighbour up H3 BORDER)

  )
  (:goal (and 
              (busy E1)
              (busy E2)
              (busy F0)
              (busy F3)
              (busy G1)
              (busy G4)
              (busy H0)
              (busy H1)
              (busy H3)
  ))
)
