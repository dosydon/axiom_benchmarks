;; ---------------
;; ---------------
;; ---------------
;; ---------------
;; ---------------
;; ---------------
;; ---------------
;; ---------------
;; ---------------
;; ------------nd-
;; -----------nnnb
;; ----------dbbnn
;; -----------dnbb
;; ------------nnb
;; --------------b
(define (problem N16-S56859633)
  (:domain grid)
  (:objects
        J12 - cell
        J13 - cell
        K11 - cell
        K12 - cell
        K13 - cell
        K14 - cell
        L10 - cell
        L11 - cell
        L12 - cell
        L13 - cell
        L14 - cell
        M11 - cell
        M12 - cell
        M13 - cell
        M14 - cell
        N12 - cell
        N13 - cell
        N14 - cell
        O14 - cell
        BORDER - cell
  )
  (:init
               (proc J12)
               (dispenser J13)
               (proc K11)
               (proc K12)
               (proc K13)
               (proc K14)
               (dispenser L10)
               (proc L11)
               (proc L12)
               (proc L13)
               (proc L14)
               (dispenser M11)
               (proc M12)
               (proc M13)
               (proc M14)
               (proc N12)
               (proc N13)
               (proc N14)
               (proc O14)
               (available J12)
               (reject J13 left)
               (reject J13 right)
               (reject J13 up)
               (reject J13 down)
               (available K11)
               (available K12)
               (available K13)
               (available K14)
               (reject L10 left)
               (reject L10 right)
               (reject L10 up)
               (reject L10 down)
               (available L11)
               (available L12)
               (available L13)
               (available L14)
               (reject M11 left)
               (reject M11 right)
               (reject M11 up)
               (reject M11 down)
               (available M12)
               (available M13)
               (available M14)
               (available N12)
               (available N13)
               (available N14)
               (available O14)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER J12)
               (neighbour right J12 BORDER)

               (neighbour right J13 J12)
               (neighbour left J12 J13)

               (neighbour up BORDER J12)
               (neighbour down J12 BORDER)

               (neighbour down K12 J12)
               (neighbour up J12 K12)

               (neighbour right BORDER J13)
               (neighbour left J13 BORDER)

               (neighbour up BORDER J13)
               (neighbour down J13 BORDER)

               (neighbour down K13 J13)
               (neighbour up J13 K13)

               (neighbour left BORDER K11)
               (neighbour right K11 BORDER)

               (neighbour right K12 K11)
               (neighbour left K11 K12)

               (neighbour up BORDER K11)
               (neighbour down K11 BORDER)

               (neighbour down L11 K11)
               (neighbour up K11 L11)

               (neighbour right K13 K12)
               (neighbour left K12 K13)

               (neighbour down L12 K12)
               (neighbour up K12 L12)

               (neighbour right K14 K13)
               (neighbour left K13 K14)

               (neighbour down L13 K13)
               (neighbour up K13 L13)

               (neighbour right BORDER K14)
               (neighbour left K14 BORDER)

               (neighbour up BORDER K14)
               (neighbour down K14 BORDER)

               (neighbour down L14 K14)
               (neighbour up K14 L14)

               (neighbour left BORDER L10)
               (neighbour right L10 BORDER)

               (neighbour right L11 L10)
               (neighbour left L10 L11)

               (neighbour up BORDER L10)
               (neighbour down L10 BORDER)

               (neighbour down BORDER L10)
               (neighbour up L10 BORDER)

               (neighbour right L12 L11)
               (neighbour left L11 L12)

               (neighbour down M11 L11)
               (neighbour up L11 M11)

               (neighbour right L13 L12)
               (neighbour left L12 L13)

               (neighbour down M12 L12)
               (neighbour up L12 M12)

               (neighbour right L14 L13)
               (neighbour left L13 L14)

               (neighbour down M13 L13)
               (neighbour up L13 M13)

               (neighbour right BORDER L14)
               (neighbour left L14 BORDER)

               (neighbour down M14 L14)
               (neighbour up L14 M14)

               (neighbour left BORDER M11)
               (neighbour right M11 BORDER)

               (neighbour right M12 M11)
               (neighbour left M11 M12)

               (neighbour down BORDER M11)
               (neighbour up M11 BORDER)

               (neighbour right M13 M12)
               (neighbour left M12 M13)

               (neighbour down N12 M12)
               (neighbour up M12 N12)

               (neighbour right M14 M13)
               (neighbour left M13 M14)

               (neighbour down N13 M13)
               (neighbour up M13 N13)

               (neighbour right BORDER M14)
               (neighbour left M14 BORDER)

               (neighbour down N14 M14)
               (neighbour up M14 N14)

               (neighbour left BORDER N12)
               (neighbour right N12 BORDER)

               (neighbour right N13 N12)
               (neighbour left N12 N13)

               (neighbour down BORDER N12)
               (neighbour up N12 BORDER)

               (neighbour right N14 N13)
               (neighbour left N13 N14)

               (neighbour down BORDER N13)
               (neighbour up N13 BORDER)

               (neighbour right BORDER N14)
               (neighbour left N14 BORDER)

               (neighbour down O14 N14)
               (neighbour up N14 O14)

               (neighbour left BORDER O14)
               (neighbour right O14 BORDER)

               (neighbour right BORDER O14)
               (neighbour left O14 BORDER)

               (neighbour down BORDER O14)
               (neighbour up O14 BORDER)

  )
  (:goal (and 
              (busy K14)
              (busy L11)
              (busy L12)
              (busy M13)
              (busy M14)
              (busy N14)
              (busy O14)
  ))
)
