;; ------------
;; ------------
;; ------------
;; ------------
;; ------------
;; --------bb--
;; --------b---
;; -------bnbb-
;; -------nbnb-
;; -------bnbd-
;; ------dbd---
;; ------------
(define (problem N15-S869945030)
  (:domain grid)
  (:objects
        F8 - cell
        F9 - cell
        G8 - cell
        H7 - cell
        H8 - cell
        H9 - cell
        H10 - cell
        I7 - cell
        I8 - cell
        I9 - cell
        I10 - cell
        J7 - cell
        J8 - cell
        J9 - cell
        J10 - cell
        K6 - cell
        K7 - cell
        K8 - cell
        BORDER - cell
  )
  (:init
               (proc F8)
               (proc F9)
               (proc G8)
               (proc H7)
               (proc H8)
               (proc H9)
               (proc H10)
               (proc I7)
               (proc I8)
               (proc I9)
               (proc I10)
               (proc J7)
               (proc J8)
               (proc J9)
               (dispenser J10)
               (dispenser K6)
               (proc K7)
               (dispenser K8)
               (available F8)
               (available F9)
               (available G8)
               (available H7)
               (available H8)
               (available H9)
               (available H10)
               (available I7)
               (available I8)
               (available I9)
               (available I10)
               (available J7)
               (available J8)
               (available J9)
               (reject J10 left)
               (reject J10 right)
               (reject J10 up)
               (reject J10 down)
               (reject K6 left)
               (reject K6 right)
               (reject K6 up)
               (reject K6 down)
               (available K7)
               (reject K8 left)
               (reject K8 right)
               (reject K8 up)
               (reject K8 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER F8)
               (neighbour right F8 BORDER)

               (neighbour right F9 F8)
               (neighbour left F8 F9)

               (neighbour up BORDER F8)
               (neighbour down F8 BORDER)

               (neighbour down G8 F8)
               (neighbour up F8 G8)

               (neighbour right BORDER F9)
               (neighbour left F9 BORDER)

               (neighbour up BORDER F9)
               (neighbour down F9 BORDER)

               (neighbour down BORDER F9)
               (neighbour up F9 BORDER)

               (neighbour left BORDER G8)
               (neighbour right G8 BORDER)

               (neighbour right BORDER G8)
               (neighbour left G8 BORDER)

               (neighbour down H8 G8)
               (neighbour up G8 H8)

               (neighbour left BORDER H7)
               (neighbour right H7 BORDER)

               (neighbour right H8 H7)
               (neighbour left H7 H8)

               (neighbour up BORDER H7)
               (neighbour down H7 BORDER)

               (neighbour down I7 H7)
               (neighbour up H7 I7)

               (neighbour right H9 H8)
               (neighbour left H8 H9)

               (neighbour down I8 H8)
               (neighbour up H8 I8)

               (neighbour right H10 H9)
               (neighbour left H9 H10)

               (neighbour up BORDER H9)
               (neighbour down H9 BORDER)

               (neighbour down I9 H9)
               (neighbour up H9 I9)

               (neighbour right BORDER H10)
               (neighbour left H10 BORDER)

               (neighbour up BORDER H10)
               (neighbour down H10 BORDER)

               (neighbour down I10 H10)
               (neighbour up H10 I10)

               (neighbour left BORDER I7)
               (neighbour right I7 BORDER)

               (neighbour right I8 I7)
               (neighbour left I7 I8)

               (neighbour down J7 I7)
               (neighbour up I7 J7)

               (neighbour right I9 I8)
               (neighbour left I8 I9)

               (neighbour down J8 I8)
               (neighbour up I8 J8)

               (neighbour right I10 I9)
               (neighbour left I9 I10)

               (neighbour down J9 I9)
               (neighbour up I9 J9)

               (neighbour right BORDER I10)
               (neighbour left I10 BORDER)

               (neighbour down J10 I10)
               (neighbour up I10 J10)

               (neighbour left BORDER J7)
               (neighbour right J7 BORDER)

               (neighbour right J8 J7)
               (neighbour left J7 J8)

               (neighbour down K7 J7)
               (neighbour up J7 K7)

               (neighbour right J9 J8)
               (neighbour left J8 J9)

               (neighbour down K8 J8)
               (neighbour up J8 K8)

               (neighbour right J10 J9)
               (neighbour left J9 J10)

               (neighbour down BORDER J9)
               (neighbour up J9 BORDER)

               (neighbour right BORDER J10)
               (neighbour left J10 BORDER)

               (neighbour down BORDER J10)
               (neighbour up J10 BORDER)

               (neighbour left BORDER K6)
               (neighbour right K6 BORDER)

               (neighbour right K7 K6)
               (neighbour left K6 K7)

               (neighbour up BORDER K6)
               (neighbour down K6 BORDER)

               (neighbour down BORDER K6)
               (neighbour up K6 BORDER)

               (neighbour right K8 K7)
               (neighbour left K7 K8)

               (neighbour down BORDER K7)
               (neighbour up K7 BORDER)

               (neighbour right BORDER K8)
               (neighbour left K8 BORDER)

               (neighbour down BORDER K8)
               (neighbour up K8 BORDER)

  )
  (:goal (and 
              (busy F8)
              (busy F9)
              (busy G8)
              (busy H7)
              (busy H9)
              (busy H10)
              (busy I8)
              (busy I10)
              (busy J7)
              (busy J9)
              (busy K7)
  ))
)
