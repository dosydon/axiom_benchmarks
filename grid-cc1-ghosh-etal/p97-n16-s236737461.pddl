;; ---------
;; ---------
;; ---------
;; ---------
;; ---------
;; -------dd
;; ----nnbnb
;; ---bbnnbn
;; ---nbbbdb
(define (problem N16-S236737461)
  (:domain grid)
  (:objects
        F7 - cell
        F8 - cell
        G4 - cell
        G5 - cell
        G6 - cell
        G7 - cell
        G8 - cell
        H3 - cell
        H4 - cell
        H5 - cell
        H6 - cell
        H7 - cell
        H8 - cell
        I3 - cell
        I4 - cell
        I5 - cell
        I6 - cell
        I7 - cell
        I8 - cell
        BORDER - cell
  )
  (:init
               (dispenser F7)
               (dispenser F8)
               (proc G4)
               (proc G5)
               (proc G6)
               (proc G7)
               (proc G8)
               (proc H3)
               (proc H4)
               (proc H5)
               (proc H6)
               (proc H7)
               (proc H8)
               (proc I3)
               (proc I4)
               (proc I5)
               (proc I6)
               (dispenser I7)
               (proc I8)
               (reject F7 left)
               (reject F7 right)
               (reject F7 up)
               (reject F7 down)
               (reject F8 left)
               (reject F8 right)
               (reject F8 up)
               (reject F8 down)
               (available G4)
               (available G5)
               (available G6)
               (available G7)
               (available G8)
               (available H3)
               (available H4)
               (available H5)
               (available H6)
               (available H7)
               (available H8)
               (available I3)
               (available I4)
               (available I5)
               (available I6)
               (reject I7 left)
               (reject I7 right)
               (reject I7 up)
               (reject I7 down)
               (available I8)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER F7)
               (neighbour right F7 BORDER)

               (neighbour right F8 F7)
               (neighbour left F7 F8)

               (neighbour up BORDER F7)
               (neighbour down F7 BORDER)

               (neighbour down G7 F7)
               (neighbour up F7 G7)

               (neighbour right BORDER F8)
               (neighbour left F8 BORDER)

               (neighbour up BORDER F8)
               (neighbour down F8 BORDER)

               (neighbour down G8 F8)
               (neighbour up F8 G8)

               (neighbour left BORDER G4)
               (neighbour right G4 BORDER)

               (neighbour right G5 G4)
               (neighbour left G4 G5)

               (neighbour up BORDER G4)
               (neighbour down G4 BORDER)

               (neighbour down H4 G4)
               (neighbour up G4 H4)

               (neighbour right G6 G5)
               (neighbour left G5 G6)

               (neighbour up BORDER G5)
               (neighbour down G5 BORDER)

               (neighbour down H5 G5)
               (neighbour up G5 H5)

               (neighbour right G7 G6)
               (neighbour left G6 G7)

               (neighbour up BORDER G6)
               (neighbour down G6 BORDER)

               (neighbour down H6 G6)
               (neighbour up G6 H6)

               (neighbour right G8 G7)
               (neighbour left G7 G8)

               (neighbour down H7 G7)
               (neighbour up G7 H7)

               (neighbour right BORDER G8)
               (neighbour left G8 BORDER)

               (neighbour down H8 G8)
               (neighbour up G8 H8)

               (neighbour left BORDER H3)
               (neighbour right H3 BORDER)

               (neighbour right H4 H3)
               (neighbour left H3 H4)

               (neighbour up BORDER H3)
               (neighbour down H3 BORDER)

               (neighbour down I3 H3)
               (neighbour up H3 I3)

               (neighbour right H5 H4)
               (neighbour left H4 H5)

               (neighbour down I4 H4)
               (neighbour up H4 I4)

               (neighbour right H6 H5)
               (neighbour left H5 H6)

               (neighbour down I5 H5)
               (neighbour up H5 I5)

               (neighbour right H7 H6)
               (neighbour left H6 H7)

               (neighbour down I6 H6)
               (neighbour up H6 I6)

               (neighbour right H8 H7)
               (neighbour left H7 H8)

               (neighbour down I7 H7)
               (neighbour up H7 I7)

               (neighbour right BORDER H8)
               (neighbour left H8 BORDER)

               (neighbour down I8 H8)
               (neighbour up H8 I8)

               (neighbour left BORDER I3)
               (neighbour right I3 BORDER)

               (neighbour right I4 I3)
               (neighbour left I3 I4)

               (neighbour down BORDER I3)
               (neighbour up I3 BORDER)

               (neighbour right I5 I4)
               (neighbour left I4 I5)

               (neighbour down BORDER I4)
               (neighbour up I4 BORDER)

               (neighbour right I6 I5)
               (neighbour left I5 I6)

               (neighbour down BORDER I5)
               (neighbour up I5 BORDER)

               (neighbour right I7 I6)
               (neighbour left I6 I7)

               (neighbour down BORDER I6)
               (neighbour up I6 BORDER)

               (neighbour right I8 I7)
               (neighbour left I7 I8)

               (neighbour down BORDER I7)
               (neighbour up I7 BORDER)

               (neighbour right BORDER I8)
               (neighbour left I8 BORDER)

               (neighbour down BORDER I8)
               (neighbour up I8 BORDER)

  )
  (:goal (and 
              (busy G6)
              (busy G8)
              (busy H3)
              (busy H4)
              (busy H7)
              (busy I4)
              (busy I5)
              (busy I6)
              (busy I8)
  ))
)
