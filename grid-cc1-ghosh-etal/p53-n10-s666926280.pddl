;; -------
;; -------
;; b------
;; bn-----
;; nnd----
;; bn-----
;; bbbd---
(define (problem N10-S666926280)
  (:domain grid)
  (:objects
        C0 - cell
        D0 - cell
        D1 - cell
        E0 - cell
        E1 - cell
        E2 - cell
        F0 - cell
        F1 - cell
        G0 - cell
        G1 - cell
        G2 - cell
        G3 - cell
        BORDER - cell
  )
  (:init
               (proc C0)
               (proc D0)
               (proc D1)
               (proc E0)
               (proc E1)
               (dispenser E2)
               (proc F0)
               (proc F1)
               (proc G0)
               (proc G1)
               (proc G2)
               (dispenser G3)
               (available C0)
               (available D0)
               (available D1)
               (available E0)
               (available E1)
               (reject E2 left)
               (reject E2 right)
               (reject E2 up)
               (reject E2 down)
               (available F0)
               (available F1)
               (available G0)
               (available G1)
               (available G2)
               (reject G3 left)
               (reject G3 right)
               (reject G3 up)
               (reject G3 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right BORDER C0)
               (neighbour left C0 BORDER)

               (neighbour up BORDER C0)
               (neighbour down C0 BORDER)

               (neighbour down D0 C0)
               (neighbour up C0 D0)

               (neighbour left BORDER D0)
               (neighbour right D0 BORDER)

               (neighbour right D1 D0)
               (neighbour left D0 D1)

               (neighbour down E0 D0)
               (neighbour up D0 E0)

               (neighbour right BORDER D1)
               (neighbour left D1 BORDER)

               (neighbour up BORDER D1)
               (neighbour down D1 BORDER)

               (neighbour down E1 D1)
               (neighbour up D1 E1)

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

               (neighbour up BORDER E2)
               (neighbour down E2 BORDER)

               (neighbour down BORDER E2)
               (neighbour up E2 BORDER)

               (neighbour left BORDER F0)
               (neighbour right F0 BORDER)

               (neighbour right F1 F0)
               (neighbour left F0 F1)

               (neighbour down G0 F0)
               (neighbour up F0 G0)

               (neighbour right BORDER F1)
               (neighbour left F1 BORDER)

               (neighbour down G1 F1)
               (neighbour up F1 G1)

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

               (neighbour up BORDER G2)
               (neighbour down G2 BORDER)

               (neighbour down BORDER G2)
               (neighbour up G2 BORDER)

               (neighbour right BORDER G3)
               (neighbour left G3 BORDER)

               (neighbour up BORDER G3)
               (neighbour down G3 BORDER)

               (neighbour down BORDER G3)
               (neighbour up G3 BORDER)

  )
  (:goal (and 
              (busy C0)
              (busy D0)
              (busy F0)
              (busy G0)
              (busy G1)
              (busy G2)
  ))
)
