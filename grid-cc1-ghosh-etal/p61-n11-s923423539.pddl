;; ----------
;; ----------
;; ----------
;; ----------
;; ----------
;; ----------
;; -bnb------
;; --bnbbb---
;; --bbbd----
;; ---d------
(define (problem N11-S923423539)
  (:domain grid)
  (:objects
        G1 - cell
        G2 - cell
        G3 - cell
        H2 - cell
        H3 - cell
        H4 - cell
        H5 - cell
        H6 - cell
        I2 - cell
        I3 - cell
        I4 - cell
        I5 - cell
        J3 - cell
        BORDER - cell
  )
  (:init
               (proc G1)
               (proc G2)
               (proc G3)
               (proc H2)
               (proc H3)
               (proc H4)
               (proc H5)
               (proc H6)
               (proc I2)
               (proc I3)
               (proc I4)
               (dispenser I5)
               (dispenser J3)
               (available G1)
               (available G2)
               (available G3)
               (available H2)
               (available H3)
               (available H4)
               (available H5)
               (available H6)
               (available I2)
               (available I3)
               (available I4)
               (reject I5 left)
               (reject I5 right)
               (reject I5 up)
               (reject I5 down)
               (reject J3 left)
               (reject J3 right)
               (reject J3 up)
               (reject J3 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER G1)
               (neighbour right G1 BORDER)

               (neighbour right G2 G1)
               (neighbour left G1 G2)

               (neighbour up BORDER G1)
               (neighbour down G1 BORDER)

               (neighbour down BORDER G1)
               (neighbour up G1 BORDER)

               (neighbour right G3 G2)
               (neighbour left G2 G3)

               (neighbour up BORDER G2)
               (neighbour down G2 BORDER)

               (neighbour down H2 G2)
               (neighbour up G2 H2)

               (neighbour right BORDER G3)
               (neighbour left G3 BORDER)

               (neighbour up BORDER G3)
               (neighbour down G3 BORDER)

               (neighbour down H3 G3)
               (neighbour up G3 H3)

               (neighbour left BORDER H2)
               (neighbour right H2 BORDER)

               (neighbour right H3 H2)
               (neighbour left H2 H3)

               (neighbour down I2 H2)
               (neighbour up H2 I2)

               (neighbour right H4 H3)
               (neighbour left H3 H4)

               (neighbour down I3 H3)
               (neighbour up H3 I3)

               (neighbour right H5 H4)
               (neighbour left H4 H5)

               (neighbour up BORDER H4)
               (neighbour down H4 BORDER)

               (neighbour down I4 H4)
               (neighbour up H4 I4)

               (neighbour right H6 H5)
               (neighbour left H5 H6)

               (neighbour up BORDER H5)
               (neighbour down H5 BORDER)

               (neighbour down I5 H5)
               (neighbour up H5 I5)

               (neighbour right BORDER H6)
               (neighbour left H6 BORDER)

               (neighbour up BORDER H6)
               (neighbour down H6 BORDER)

               (neighbour down BORDER H6)
               (neighbour up H6 BORDER)

               (neighbour left BORDER I2)
               (neighbour right I2 BORDER)

               (neighbour right I3 I2)
               (neighbour left I2 I3)

               (neighbour down BORDER I2)
               (neighbour up I2 BORDER)

               (neighbour right I4 I3)
               (neighbour left I3 I4)

               (neighbour down J3 I3)
               (neighbour up I3 J3)

               (neighbour right I5 I4)
               (neighbour left I4 I5)

               (neighbour down BORDER I4)
               (neighbour up I4 BORDER)

               (neighbour right BORDER I5)
               (neighbour left I5 BORDER)

               (neighbour down BORDER I5)
               (neighbour up I5 BORDER)

               (neighbour left BORDER J3)
               (neighbour right J3 BORDER)

               (neighbour right BORDER J3)
               (neighbour left J3 BORDER)

               (neighbour down BORDER J3)
               (neighbour up J3 BORDER)

  )
  (:goal (and 
              (busy G1)
              (busy G3)
              (busy H2)
              (busy H4)
              (busy H5)
              (busy H6)
              (busy I2)
              (busy I3)
              (busy I4)
  ))
)
