;; ------------
;; ------------
;; ------------
;; ------------
;; ------------
;; ------------
;; ------------
;; ------------
;; bbnnd-------
;; bnbbn-------
;; dbnbn-------
;; -bbbd-------
(define (problem N16-S92007886)
  (:domain grid)
  (:objects
        I0 - cell
        I1 - cell
        I2 - cell
        I3 - cell
        I4 - cell
        J0 - cell
        J1 - cell
        J2 - cell
        J3 - cell
        J4 - cell
        K0 - cell
        K1 - cell
        K2 - cell
        K3 - cell
        K4 - cell
        L1 - cell
        L2 - cell
        L3 - cell
        L4 - cell
        BORDER - cell
  )
  (:init
               (proc I0)
               (proc I1)
               (proc I2)
               (proc I3)
               (dispenser I4)
               (proc J0)
               (proc J1)
               (proc J2)
               (proc J3)
               (proc J4)
               (dispenser K0)
               (proc K1)
               (proc K2)
               (proc K3)
               (proc K4)
               (proc L1)
               (proc L2)
               (proc L3)
               (dispenser L4)
               (available I0)
               (available I1)
               (available I2)
               (available I3)
               (reject I4 left)
               (reject I4 right)
               (reject I4 up)
               (reject I4 down)
               (available J0)
               (available J1)
               (available J2)
               (available J3)
               (available J4)
               (reject K0 left)
               (reject K0 right)
               (reject K0 up)
               (reject K0 down)
               (available K1)
               (available K2)
               (available K3)
               (available K4)
               (available L1)
               (available L2)
               (available L3)
               (reject L4 left)
               (reject L4 right)
               (reject L4 up)
               (reject L4 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER I0)
               (neighbour right I0 BORDER)

               (neighbour right I1 I0)
               (neighbour left I0 I1)

               (neighbour up BORDER I0)
               (neighbour down I0 BORDER)

               (neighbour down J0 I0)
               (neighbour up I0 J0)

               (neighbour right I2 I1)
               (neighbour left I1 I2)

               (neighbour up BORDER I1)
               (neighbour down I1 BORDER)

               (neighbour down J1 I1)
               (neighbour up I1 J1)

               (neighbour right I3 I2)
               (neighbour left I2 I3)

               (neighbour up BORDER I2)
               (neighbour down I2 BORDER)

               (neighbour down J2 I2)
               (neighbour up I2 J2)

               (neighbour right I4 I3)
               (neighbour left I3 I4)

               (neighbour up BORDER I3)
               (neighbour down I3 BORDER)

               (neighbour down J3 I3)
               (neighbour up I3 J3)

               (neighbour right BORDER I4)
               (neighbour left I4 BORDER)

               (neighbour up BORDER I4)
               (neighbour down I4 BORDER)

               (neighbour down J4 I4)
               (neighbour up I4 J4)

               (neighbour left BORDER J0)
               (neighbour right J0 BORDER)

               (neighbour right J1 J0)
               (neighbour left J0 J1)

               (neighbour down K0 J0)
               (neighbour up J0 K0)

               (neighbour right J2 J1)
               (neighbour left J1 J2)

               (neighbour down K1 J1)
               (neighbour up J1 K1)

               (neighbour right J3 J2)
               (neighbour left J2 J3)

               (neighbour down K2 J2)
               (neighbour up J2 K2)

               (neighbour right J4 J3)
               (neighbour left J3 J4)

               (neighbour down K3 J3)
               (neighbour up J3 K3)

               (neighbour right BORDER J4)
               (neighbour left J4 BORDER)

               (neighbour down K4 J4)
               (neighbour up J4 K4)

               (neighbour left BORDER K0)
               (neighbour right K0 BORDER)

               (neighbour right K1 K0)
               (neighbour left K0 K1)

               (neighbour down BORDER K0)
               (neighbour up K0 BORDER)

               (neighbour right K2 K1)
               (neighbour left K1 K2)

               (neighbour down L1 K1)
               (neighbour up K1 L1)

               (neighbour right K3 K2)
               (neighbour left K2 K3)

               (neighbour down L2 K2)
               (neighbour up K2 L2)

               (neighbour right K4 K3)
               (neighbour left K3 K4)

               (neighbour down L3 K3)
               (neighbour up K3 L3)

               (neighbour right BORDER K4)
               (neighbour left K4 BORDER)

               (neighbour down L4 K4)
               (neighbour up K4 L4)

               (neighbour left BORDER L1)
               (neighbour right L1 BORDER)

               (neighbour right L2 L1)
               (neighbour left L1 L2)

               (neighbour down BORDER L1)
               (neighbour up L1 BORDER)

               (neighbour right L3 L2)
               (neighbour left L2 L3)

               (neighbour down BORDER L2)
               (neighbour up L2 BORDER)

               (neighbour right L4 L3)
               (neighbour left L3 L4)

               (neighbour down BORDER L3)
               (neighbour up L3 BORDER)

               (neighbour right BORDER L4)
               (neighbour left L4 BORDER)

               (neighbour down BORDER L4)
               (neighbour up L4 BORDER)

  )
  (:goal (and 
              (busy I0)
              (busy I1)
              (busy J0)
              (busy J2)
              (busy J3)
              (busy K1)
              (busy K3)
              (busy L1)
              (busy L2)
              (busy L3)
  ))
)
