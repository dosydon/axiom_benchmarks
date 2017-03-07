;; -------
;; -------
;; --d-d--
;; --nbb--
;; --bnb--
;; bbnbb--
;; dbbbn--
(define (problem N15-S765858762)
  (:domain grid)
  (:objects
        C2 - cell
        C4 - cell
        D2 - cell
        D3 - cell
        D4 - cell
        E2 - cell
        E3 - cell
        E4 - cell
        F0 - cell
        F1 - cell
        F2 - cell
        F3 - cell
        F4 - cell
        G0 - cell
        G1 - cell
        G2 - cell
        G3 - cell
        G4 - cell
        BORDER - cell
  )
  (:init
               (dispenser C2)
               (dispenser C4)
               (proc D2)
               (proc D3)
               (proc D4)
               (proc E2)
               (proc E3)
               (proc E4)
               (proc F0)
               (proc F1)
               (proc F2)
               (proc F3)
               (proc F4)
               (dispenser G0)
               (proc G1)
               (proc G2)
               (proc G3)
               (proc G4)
               (reject C2 left)
               (reject C2 right)
               (reject C2 up)
               (reject C2 down)
               (reject C4 left)
               (reject C4 right)
               (reject C4 up)
               (reject C4 down)
               (available D2)
               (available D3)
               (available D4)
               (available E2)
               (available E3)
               (available E4)
               (available F0)
               (available F1)
               (available F2)
               (available F3)
               (available F4)
               (reject G0 left)
               (reject G0 right)
               (reject G0 up)
               (reject G0 down)
               (available G1)
               (available G2)
               (available G3)
               (available G4)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER C2)
               (neighbour right C2 BORDER)

               (neighbour right BORDER C2)
               (neighbour left C2 BORDER)

               (neighbour up BORDER C2)
               (neighbour down C2 BORDER)

               (neighbour down D2 C2)
               (neighbour up C2 D2)

               (neighbour left BORDER C4)
               (neighbour right C4 BORDER)

               (neighbour right BORDER C4)
               (neighbour left C4 BORDER)

               (neighbour up BORDER C4)
               (neighbour down C4 BORDER)

               (neighbour down D4 C4)
               (neighbour up C4 D4)

               (neighbour left BORDER D2)
               (neighbour right D2 BORDER)

               (neighbour right D3 D2)
               (neighbour left D2 D3)

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

               (neighbour down E4 D4)
               (neighbour up D4 E4)

               (neighbour left BORDER E2)
               (neighbour right E2 BORDER)

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

               (neighbour up BORDER F1)
               (neighbour down F1 BORDER)

               (neighbour down G1 F1)
               (neighbour up F1 G1)

               (neighbour right F3 F2)
               (neighbour left F2 F3)

               (neighbour down G2 F2)
               (neighbour up F2 G2)

               (neighbour right F4 F3)
               (neighbour left F3 F4)

               (neighbour down G3 F3)
               (neighbour up F3 G3)

               (neighbour right BORDER F4)
               (neighbour left F4 BORDER)

               (neighbour down G4 F4)
               (neighbour up F4 G4)

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

               (neighbour down BORDER G4)
               (neighbour up G4 BORDER)

  )
  (:goal (and 
              (busy D3)
              (busy D4)
              (busy E2)
              (busy E4)
              (busy F0)
              (busy F1)
              (busy F3)
              (busy F4)
              (busy G1)
              (busy G2)
              (busy G3)
  ))
)
