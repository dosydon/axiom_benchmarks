;; ---------
;; ---------
;; ---------
;; ---------
;; ---------
;; ---------
;; ----bnnd-
;; -----bbnb
;; ----dbnbb
(define (problem N11-S856193214)
  (:domain grid)
  (:objects
        G4 - cell
        G5 - cell
        G6 - cell
        G7 - cell
        H5 - cell
        H6 - cell
        H7 - cell
        H8 - cell
        I4 - cell
        I5 - cell
        I6 - cell
        I7 - cell
        I8 - cell
        BORDER - cell
  )
  (:init
               (proc G4)
               (proc G5)
               (proc G6)
               (dispenser G7)
               (proc H5)
               (proc H6)
               (proc H7)
               (proc H8)
               (dispenser I4)
               (proc I5)
               (proc I6)
               (proc I7)
               (proc I8)
               (available G4)
               (available G5)
               (available G6)
               (reject G7 left)
               (reject G7 right)
               (reject G7 up)
               (reject G7 down)
               (available H5)
               (available H6)
               (available H7)
               (available H8)
               (reject I4 left)
               (reject I4 right)
               (reject I4 up)
               (reject I4 down)
               (available I5)
               (available I6)
               (available I7)
               (available I8)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER G4)
               (neighbour right G4 BORDER)

               (neighbour right G5 G4)
               (neighbour left G4 G5)

               (neighbour up BORDER G4)
               (neighbour down G4 BORDER)

               (neighbour down BORDER G4)
               (neighbour up G4 BORDER)

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

               (neighbour right BORDER G7)
               (neighbour left G7 BORDER)

               (neighbour up BORDER G7)
               (neighbour down G7 BORDER)

               (neighbour down H7 G7)
               (neighbour up G7 H7)

               (neighbour left BORDER H5)
               (neighbour right H5 BORDER)

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

               (neighbour up BORDER H8)
               (neighbour down H8 BORDER)

               (neighbour down I8 H8)
               (neighbour up H8 I8)

               (neighbour left BORDER I4)
               (neighbour right I4 BORDER)

               (neighbour right I5 I4)
               (neighbour left I4 I5)

               (neighbour up BORDER I4)
               (neighbour down I4 BORDER)

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
              (busy G4)
              (busy H5)
              (busy H6)
              (busy H8)
              (busy I5)
              (busy I7)
              (busy I8)
  ))
)
