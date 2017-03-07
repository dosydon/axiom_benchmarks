;; -------------
;; -------------
;; -------------
;; -------------
;; --dbbn-------
;; --dbnbnb-----
;; ---dbnbb-----
;; ----bbb------
;; -------------
;; -------------
;; -------------
;; -------------
;; -------------
(define (problem N15-S984193411)
  (:domain grid)
  (:objects
        E2 - cell
        E3 - cell
        E4 - cell
        E5 - cell
        F2 - cell
        F3 - cell
        F4 - cell
        F5 - cell
        F6 - cell
        F7 - cell
        G3 - cell
        G4 - cell
        G5 - cell
        G6 - cell
        G7 - cell
        H4 - cell
        H5 - cell
        H6 - cell
        BORDER - cell
  )
  (:init
               (dispenser E2)
               (proc E3)
               (proc E4)
               (proc E5)
               (dispenser F2)
               (proc F3)
               (proc F4)
               (proc F5)
               (proc F6)
               (proc F7)
               (dispenser G3)
               (proc G4)
               (proc G5)
               (proc G6)
               (proc G7)
               (proc H4)
               (proc H5)
               (proc H6)
               (reject E2 left)
               (reject E2 right)
               (reject E2 up)
               (reject E2 down)
               (available E3)
               (available E4)
               (available E5)
               (reject F2 left)
               (reject F2 right)
               (reject F2 up)
               (reject F2 down)
               (available F3)
               (available F4)
               (available F5)
               (available F6)
               (available F7)
               (reject G3 left)
               (reject G3 right)
               (reject G3 up)
               (reject G3 down)
               (available G4)
               (available G5)
               (available G6)
               (available G7)
               (available H4)
               (available H5)
               (available H6)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER E2)
               (neighbour right E2 BORDER)

               (neighbour right E3 E2)
               (neighbour left E2 E3)

               (neighbour up BORDER E2)
               (neighbour down E2 BORDER)

               (neighbour down F2 E2)
               (neighbour up E2 F2)

               (neighbour right E4 E3)
               (neighbour left E3 E4)

               (neighbour up BORDER E3)
               (neighbour down E3 BORDER)

               (neighbour down F3 E3)
               (neighbour up E3 F3)

               (neighbour right E5 E4)
               (neighbour left E4 E5)

               (neighbour up BORDER E4)
               (neighbour down E4 BORDER)

               (neighbour down F4 E4)
               (neighbour up E4 F4)

               (neighbour right BORDER E5)
               (neighbour left E5 BORDER)

               (neighbour up BORDER E5)
               (neighbour down E5 BORDER)

               (neighbour down F5 E5)
               (neighbour up E5 F5)

               (neighbour left BORDER F2)
               (neighbour right F2 BORDER)

               (neighbour right F3 F2)
               (neighbour left F2 F3)

               (neighbour down BORDER F2)
               (neighbour up F2 BORDER)

               (neighbour right F4 F3)
               (neighbour left F3 F4)

               (neighbour down G3 F3)
               (neighbour up F3 G3)

               (neighbour right F5 F4)
               (neighbour left F4 F5)

               (neighbour down G4 F4)
               (neighbour up F4 G4)

               (neighbour right F6 F5)
               (neighbour left F5 F6)

               (neighbour down G5 F5)
               (neighbour up F5 G5)

               (neighbour right F7 F6)
               (neighbour left F6 F7)

               (neighbour up BORDER F6)
               (neighbour down F6 BORDER)

               (neighbour down G6 F6)
               (neighbour up F6 G6)

               (neighbour right BORDER F7)
               (neighbour left F7 BORDER)

               (neighbour up BORDER F7)
               (neighbour down F7 BORDER)

               (neighbour down G7 F7)
               (neighbour up F7 G7)

               (neighbour left BORDER G3)
               (neighbour right G3 BORDER)

               (neighbour right G4 G3)
               (neighbour left G3 G4)

               (neighbour down BORDER G3)
               (neighbour up G3 BORDER)

               (neighbour right G5 G4)
               (neighbour left G4 G5)

               (neighbour down H4 G4)
               (neighbour up G4 H4)

               (neighbour right G6 G5)
               (neighbour left G5 G6)

               (neighbour down H5 G5)
               (neighbour up G5 H5)

               (neighbour right G7 G6)
               (neighbour left G6 G7)

               (neighbour down H6 G6)
               (neighbour up G6 H6)

               (neighbour right BORDER G7)
               (neighbour left G7 BORDER)

               (neighbour down BORDER G7)
               (neighbour up G7 BORDER)

               (neighbour left BORDER H4)
               (neighbour right H4 BORDER)

               (neighbour right H5 H4)
               (neighbour left H4 H5)

               (neighbour down BORDER H4)
               (neighbour up H4 BORDER)

               (neighbour right H6 H5)
               (neighbour left H5 H6)

               (neighbour down BORDER H5)
               (neighbour up H5 BORDER)

               (neighbour right BORDER H6)
               (neighbour left H6 BORDER)

               (neighbour down BORDER H6)
               (neighbour up H6 BORDER)

  )
  (:goal (and 
              (busy E3)
              (busy E4)
              (busy F3)
              (busy F5)
              (busy F7)
              (busy G4)
              (busy G6)
              (busy G7)
              (busy H4)
              (busy H5)
              (busy H6)
  ))
)
