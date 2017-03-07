;; -----------
;; -----------
;; -----------
;; -----------
;; ---------d-
;; -------bnb-
;; -------bnbn
;; -------dbbn
;; --------dnb
;; ----------b
;; -----------
(define (problem N13-S336736762)
  (:domain grid)
  (:objects
        E9 - cell
        F7 - cell
        F8 - cell
        F9 - cell
        G7 - cell
        G8 - cell
        G9 - cell
        G10 - cell
        H7 - cell
        H8 - cell
        H9 - cell
        H10 - cell
        I8 - cell
        I9 - cell
        I10 - cell
        J10 - cell
        BORDER - cell
  )
  (:init
               (dispenser E9)
               (proc F7)
               (proc F8)
               (proc F9)
               (proc G7)
               (proc G8)
               (proc G9)
               (proc G10)
               (dispenser H7)
               (proc H8)
               (proc H9)
               (proc H10)
               (dispenser I8)
               (proc I9)
               (proc I10)
               (proc J10)
               (reject E9 left)
               (reject E9 right)
               (reject E9 up)
               (reject E9 down)
               (available F7)
               (available F8)
               (available F9)
               (available G7)
               (available G8)
               (available G9)
               (available G10)
               (reject H7 left)
               (reject H7 right)
               (reject H7 up)
               (reject H7 down)
               (available H8)
               (available H9)
               (available H10)
               (reject I8 left)
               (reject I8 right)
               (reject I8 up)
               (reject I8 down)
               (available I9)
               (available I10)
               (available J10)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER E9)
               (neighbour right E9 BORDER)

               (neighbour right BORDER E9)
               (neighbour left E9 BORDER)

               (neighbour up BORDER E9)
               (neighbour down E9 BORDER)

               (neighbour down F9 E9)
               (neighbour up E9 F9)

               (neighbour left BORDER F7)
               (neighbour right F7 BORDER)

               (neighbour right F8 F7)
               (neighbour left F7 F8)

               (neighbour up BORDER F7)
               (neighbour down F7 BORDER)

               (neighbour down G7 F7)
               (neighbour up F7 G7)

               (neighbour right F9 F8)
               (neighbour left F8 F9)

               (neighbour up BORDER F8)
               (neighbour down F8 BORDER)

               (neighbour down G8 F8)
               (neighbour up F8 G8)

               (neighbour right BORDER F9)
               (neighbour left F9 BORDER)

               (neighbour down G9 F9)
               (neighbour up F9 G9)

               (neighbour left BORDER G7)
               (neighbour right G7 BORDER)

               (neighbour right G8 G7)
               (neighbour left G7 G8)

               (neighbour down H7 G7)
               (neighbour up G7 H7)

               (neighbour right G9 G8)
               (neighbour left G8 G9)

               (neighbour down H8 G8)
               (neighbour up G8 H8)

               (neighbour right G10 G9)
               (neighbour left G9 G10)

               (neighbour down H9 G9)
               (neighbour up G9 H9)

               (neighbour right BORDER G10)
               (neighbour left G10 BORDER)

               (neighbour up BORDER G10)
               (neighbour down G10 BORDER)

               (neighbour down H10 G10)
               (neighbour up G10 H10)

               (neighbour left BORDER H7)
               (neighbour right H7 BORDER)

               (neighbour right H8 H7)
               (neighbour left H7 H8)

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

               (neighbour down BORDER I8)
               (neighbour up I8 BORDER)

               (neighbour right I10 I9)
               (neighbour left I9 I10)

               (neighbour down BORDER I9)
               (neighbour up I9 BORDER)

               (neighbour right BORDER I10)
               (neighbour left I10 BORDER)

               (neighbour down J10 I10)
               (neighbour up I10 J10)

               (neighbour left BORDER J10)
               (neighbour right J10 BORDER)

               (neighbour right BORDER J10)
               (neighbour left J10 BORDER)

               (neighbour down BORDER J10)
               (neighbour up J10 BORDER)

  )
  (:goal (and 
              (busy F7)
              (busy F9)
              (busy G7)
              (busy G9)
              (busy H8)
              (busy H9)
              (busy I10)
              (busy J10)
  ))
)
