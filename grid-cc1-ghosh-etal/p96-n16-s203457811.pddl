;; ---------
;; ---------
;; ---------
;; ------b--
;; ------n-d
;; ------bbb
;; ----nbbd-
;; ----bnnb-
;; ---dbbbb-
(define (problem N16-S203457811)
  (:domain grid)
  (:objects
        D6 - cell
        E6 - cell
        E8 - cell
        F6 - cell
        F7 - cell
        F8 - cell
        G4 - cell
        G5 - cell
        G6 - cell
        G7 - cell
        H4 - cell
        H5 - cell
        H6 - cell
        H7 - cell
        I3 - cell
        I4 - cell
        I5 - cell
        I6 - cell
        I7 - cell
        BORDER - cell
  )
  (:init
               (proc D6)
               (proc E6)
               (dispenser E8)
               (proc F6)
               (proc F7)
               (proc F8)
               (proc G4)
               (proc G5)
               (proc G6)
               (dispenser G7)
               (proc H4)
               (proc H5)
               (proc H6)
               (proc H7)
               (dispenser I3)
               (proc I4)
               (proc I5)
               (proc I6)
               (proc I7)
               (available D6)
               (available E6)
               (reject E8 left)
               (reject E8 right)
               (reject E8 up)
               (reject E8 down)
               (available F6)
               (available F7)
               (available F8)
               (available G4)
               (available G5)
               (available G6)
               (reject G7 left)
               (reject G7 right)
               (reject G7 up)
               (reject G7 down)
               (available H4)
               (available H5)
               (available H6)
               (available H7)
               (reject I3 left)
               (reject I3 right)
               (reject I3 up)
               (reject I3 down)
               (available I4)
               (available I5)
               (available I6)
               (available I7)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER D6)
               (neighbour right D6 BORDER)

               (neighbour right BORDER D6)
               (neighbour left D6 BORDER)

               (neighbour up BORDER D6)
               (neighbour down D6 BORDER)

               (neighbour down E6 D6)
               (neighbour up D6 E6)

               (neighbour left BORDER E6)
               (neighbour right E6 BORDER)

               (neighbour right BORDER E6)
               (neighbour left E6 BORDER)

               (neighbour down F6 E6)
               (neighbour up E6 F6)

               (neighbour left BORDER E8)
               (neighbour right E8 BORDER)

               (neighbour right BORDER E8)
               (neighbour left E8 BORDER)

               (neighbour up BORDER E8)
               (neighbour down E8 BORDER)

               (neighbour down F8 E8)
               (neighbour up E8 F8)

               (neighbour left BORDER F6)
               (neighbour right F6 BORDER)

               (neighbour right F7 F6)
               (neighbour left F6 F7)

               (neighbour down G6 F6)
               (neighbour up F6 G6)

               (neighbour right F8 F7)
               (neighbour left F7 F8)

               (neighbour up BORDER F7)
               (neighbour down F7 BORDER)

               (neighbour down G7 F7)
               (neighbour up F7 G7)

               (neighbour right BORDER F8)
               (neighbour left F8 BORDER)

               (neighbour down BORDER F8)
               (neighbour up F8 BORDER)

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

               (neighbour down H6 G6)
               (neighbour up G6 H6)

               (neighbour right BORDER G7)
               (neighbour left G7 BORDER)

               (neighbour down H7 G7)
               (neighbour up G7 H7)

               (neighbour left BORDER H4)
               (neighbour right H4 BORDER)

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

               (neighbour right BORDER H7)
               (neighbour left H7 BORDER)

               (neighbour down I7 H7)
               (neighbour up H7 I7)

               (neighbour left BORDER I3)
               (neighbour right I3 BORDER)

               (neighbour right I4 I3)
               (neighbour left I3 I4)

               (neighbour up BORDER I3)
               (neighbour down I3 BORDER)

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

               (neighbour right BORDER I7)
               (neighbour left I7 BORDER)

               (neighbour down BORDER I7)
               (neighbour up I7 BORDER)

  )
  (:goal (and 
              (busy D6)
              (busy F6)
              (busy F7)
              (busy F8)
              (busy G5)
              (busy G6)
              (busy H4)
              (busy H7)
              (busy I4)
              (busy I5)
              (busy I6)
              (busy I7)
  ))
)
