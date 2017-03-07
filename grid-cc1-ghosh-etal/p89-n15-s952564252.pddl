;; ------------
;; ------------
;; ------------
;; ------------
;; ------------
;; ------------
;; ------------
;; ------------
;; --------ddnb
;; ------dbb-bn
;; -------bnbnb
;; -------nb-bb
(define (problem N15-S952564252)
  (:domain grid)
  (:objects
        I8 - cell
        I9 - cell
        I10 - cell
        I11 - cell
        J6 - cell
        J7 - cell
        J8 - cell
        J10 - cell
        J11 - cell
        K7 - cell
        K8 - cell
        K9 - cell
        K10 - cell
        K11 - cell
        L7 - cell
        L8 - cell
        L10 - cell
        L11 - cell
        BORDER - cell
  )
  (:init
               (dispenser I8)
               (dispenser I9)
               (proc I10)
               (proc I11)
               (dispenser J6)
               (proc J7)
               (proc J8)
               (proc J10)
               (proc J11)
               (proc K7)
               (proc K8)
               (proc K9)
               (proc K10)
               (proc K11)
               (proc L7)
               (proc L8)
               (proc L10)
               (proc L11)
               (reject I8 left)
               (reject I8 right)
               (reject I8 up)
               (reject I8 down)
               (reject I9 left)
               (reject I9 right)
               (reject I9 up)
               (reject I9 down)
               (available I10)
               (available I11)
               (reject J6 left)
               (reject J6 right)
               (reject J6 up)
               (reject J6 down)
               (available J7)
               (available J8)
               (available J10)
               (available J11)
               (available K7)
               (available K8)
               (available K9)
               (available K10)
               (available K11)
               (available L7)
               (available L8)
               (available L10)
               (available L11)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER I8)
               (neighbour right I8 BORDER)

               (neighbour right I9 I8)
               (neighbour left I8 I9)

               (neighbour up BORDER I8)
               (neighbour down I8 BORDER)

               (neighbour down J8 I8)
               (neighbour up I8 J8)

               (neighbour right I10 I9)
               (neighbour left I9 I10)

               (neighbour up BORDER I9)
               (neighbour down I9 BORDER)

               (neighbour down BORDER I9)
               (neighbour up I9 BORDER)

               (neighbour right I11 I10)
               (neighbour left I10 I11)

               (neighbour up BORDER I10)
               (neighbour down I10 BORDER)

               (neighbour down J10 I10)
               (neighbour up I10 J10)

               (neighbour right BORDER I11)
               (neighbour left I11 BORDER)

               (neighbour up BORDER I11)
               (neighbour down I11 BORDER)

               (neighbour down J11 I11)
               (neighbour up I11 J11)

               (neighbour left BORDER J6)
               (neighbour right J6 BORDER)

               (neighbour right J7 J6)
               (neighbour left J6 J7)

               (neighbour up BORDER J6)
               (neighbour down J6 BORDER)

               (neighbour down BORDER J6)
               (neighbour up J6 BORDER)

               (neighbour right J8 J7)
               (neighbour left J7 J8)

               (neighbour up BORDER J7)
               (neighbour down J7 BORDER)

               (neighbour down K7 J7)
               (neighbour up J7 K7)

               (neighbour right BORDER J8)
               (neighbour left J8 BORDER)

               (neighbour down K8 J8)
               (neighbour up J8 K8)

               (neighbour left BORDER J10)
               (neighbour right J10 BORDER)

               (neighbour right J11 J10)
               (neighbour left J10 J11)

               (neighbour down K10 J10)
               (neighbour up J10 K10)

               (neighbour right BORDER J11)
               (neighbour left J11 BORDER)

               (neighbour down K11 J11)
               (neighbour up J11 K11)

               (neighbour left BORDER K7)
               (neighbour right K7 BORDER)

               (neighbour right K8 K7)
               (neighbour left K7 K8)

               (neighbour down L7 K7)
               (neighbour up K7 L7)

               (neighbour right K9 K8)
               (neighbour left K8 K9)

               (neighbour down L8 K8)
               (neighbour up K8 L8)

               (neighbour right K10 K9)
               (neighbour left K9 K10)

               (neighbour up BORDER K9)
               (neighbour down K9 BORDER)

               (neighbour down BORDER K9)
               (neighbour up K9 BORDER)

               (neighbour right K11 K10)
               (neighbour left K10 K11)

               (neighbour down L10 K10)
               (neighbour up K10 L10)

               (neighbour right BORDER K11)
               (neighbour left K11 BORDER)

               (neighbour down L11 K11)
               (neighbour up K11 L11)

               (neighbour left BORDER L7)
               (neighbour right L7 BORDER)

               (neighbour right L8 L7)
               (neighbour left L7 L8)

               (neighbour down BORDER L7)
               (neighbour up L7 BORDER)

               (neighbour right BORDER L8)
               (neighbour left L8 BORDER)

               (neighbour down BORDER L8)
               (neighbour up L8 BORDER)

               (neighbour left BORDER L10)
               (neighbour right L10 BORDER)

               (neighbour right L11 L10)
               (neighbour left L10 L11)

               (neighbour down BORDER L10)
               (neighbour up L10 BORDER)

               (neighbour right BORDER L11)
               (neighbour left L11 BORDER)

               (neighbour down BORDER L11)
               (neighbour up L11 BORDER)

  )
  (:goal (and 
              (busy I11)
              (busy J7)
              (busy J8)
              (busy J10)
              (busy K7)
              (busy K9)
              (busy K11)
              (busy L8)
              (busy L10)
              (busy L11)
  ))
)
