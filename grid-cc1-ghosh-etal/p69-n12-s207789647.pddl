;; -----------
;; -----------
;; -----------
;; -----------
;; -----------
;; -----------
;; --------nbb
;; ------bbbnb
;; --------bbd
;; --------nbd
;; -----------
(define (problem N12-S207789647)
  (:domain grid)
  (:objects
        G8 - cell
        G9 - cell
        G10 - cell
        H6 - cell
        H7 - cell
        H8 - cell
        H9 - cell
        H10 - cell
        I8 - cell
        I9 - cell
        I10 - cell
        J8 - cell
        J9 - cell
        J10 - cell
        BORDER - cell
  )
  (:init
               (proc G8)
               (proc G9)
               (proc G10)
               (proc H6)
               (proc H7)
               (proc H8)
               (proc H9)
               (proc H10)
               (proc I8)
               (proc I9)
               (dispenser I10)
               (proc J8)
               (proc J9)
               (dispenser J10)
               (available G8)
               (available G9)
               (available G10)
               (available H6)
               (available H7)
               (available H8)
               (available H9)
               (available H10)
               (available I8)
               (available I9)
               (reject I10 left)
               (reject I10 right)
               (reject I10 up)
               (reject I10 down)
               (available J8)
               (available J9)
               (reject J10 left)
               (reject J10 right)
               (reject J10 up)
               (reject J10 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER G8)
               (neighbour right G8 BORDER)

               (neighbour right G9 G8)
               (neighbour left G8 G9)

               (neighbour up BORDER G8)
               (neighbour down G8 BORDER)

               (neighbour down H8 G8)
               (neighbour up G8 H8)

               (neighbour right G10 G9)
               (neighbour left G9 G10)

               (neighbour up BORDER G9)
               (neighbour down G9 BORDER)

               (neighbour down H9 G9)
               (neighbour up G9 H9)

               (neighbour right BORDER G10)
               (neighbour left G10 BORDER)

               (neighbour up BORDER G10)
               (neighbour down G10 BORDER)

               (neighbour down H10 G10)
               (neighbour up G10 H10)

               (neighbour left BORDER H6)
               (neighbour right H6 BORDER)

               (neighbour right H7 H6)
               (neighbour left H6 H7)

               (neighbour up BORDER H6)
               (neighbour down H6 BORDER)

               (neighbour down BORDER H6)
               (neighbour up H6 BORDER)

               (neighbour right H8 H7)
               (neighbour left H7 H8)

               (neighbour up BORDER H7)
               (neighbour down H7 BORDER)

               (neighbour down BORDER H7)
               (neighbour up H7 BORDER)

               (neighbour right H9 H8)
               (neighbour left H8 H9)

               (neighbour down I8 H8)
               (neighbour up H8 I8)

               (neighbour right H10 H9)
               (neighbour left H9 H10)

               (neighbour down I9 H9)
               (neighbour up H9 I9)

               (neighbour right BORDER H10)
               (neighbour left H10 BORDER)

               (neighbour down I10 H10)
               (neighbour up H10 I10)

               (neighbour left BORDER I8)
               (neighbour right I8 BORDER)

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

               (neighbour left BORDER J8)
               (neighbour right J8 BORDER)

               (neighbour right J9 J8)
               (neighbour left J8 J9)

               (neighbour down BORDER J8)
               (neighbour up J8 BORDER)

               (neighbour right J10 J9)
               (neighbour left J9 J10)

               (neighbour down BORDER J9)
               (neighbour up J9 BORDER)

               (neighbour right BORDER J10)
               (neighbour left J10 BORDER)

               (neighbour down BORDER J10)
               (neighbour up J10 BORDER)

  )
  (:goal (and 
              (busy G9)
              (busy G10)
              (busy H6)
              (busy H7)
              (busy H8)
              (busy H10)
              (busy I8)
              (busy I9)
              (busy J9)
  ))
)
