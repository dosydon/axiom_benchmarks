;; ---bnb
;; --dnn-
;; ---bbd
;; ----b-
;; ------
;; ------
(define (problem N8-S292447057)
  (:domain grid)
  (:objects
        A3 - cell
        A4 - cell
        A5 - cell
        B2 - cell
        B3 - cell
        B4 - cell
        C3 - cell
        C4 - cell
        C5 - cell
        D4 - cell
        BORDER - cell
  )
  (:init
               (proc A3)
               (proc A4)
               (proc A5)
               (dispenser B2)
               (proc B3)
               (proc B4)
               (proc C3)
               (proc C4)
               (dispenser C5)
               (proc D4)
               (available A3)
               (available A4)
               (available A5)
               (reject B2 left)
               (reject B2 right)
               (reject B2 up)
               (reject B2 down)
               (available B3)
               (available B4)
               (available C3)
               (available C4)
               (reject C5 left)
               (reject C5 right)
               (reject C5 up)
               (reject C5 down)
               (available D4)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A3)
               (neighbour right A3 BORDER)

               (neighbour right A4 A3)
               (neighbour left A3 A4)

               (neighbour up BORDER A3)
               (neighbour down A3 BORDER)

               (neighbour down B3 A3)
               (neighbour up A3 B3)

               (neighbour right A5 A4)
               (neighbour left A4 A5)

               (neighbour up BORDER A4)
               (neighbour down A4 BORDER)

               (neighbour down B4 A4)
               (neighbour up A4 B4)

               (neighbour right BORDER A5)
               (neighbour left A5 BORDER)

               (neighbour up BORDER A5)
               (neighbour down A5 BORDER)

               (neighbour down BORDER A5)
               (neighbour up A5 BORDER)

               (neighbour left BORDER B2)
               (neighbour right B2 BORDER)

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour up BORDER B2)
               (neighbour down B2 BORDER)

               (neighbour down BORDER B2)
               (neighbour up B2 BORDER)

               (neighbour right B4 B3)
               (neighbour left B3 B4)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour right BORDER B4)
               (neighbour left B4 BORDER)

               (neighbour down C4 B4)
               (neighbour up B4 C4)

               (neighbour left BORDER C3)
               (neighbour right C3 BORDER)

               (neighbour right C4 C3)
               (neighbour left C3 C4)

               (neighbour down BORDER C3)
               (neighbour up C3 BORDER)

               (neighbour right C5 C4)
               (neighbour left C4 C5)

               (neighbour down D4 C4)
               (neighbour up C4 D4)

               (neighbour right BORDER C5)
               (neighbour left C5 BORDER)

               (neighbour up BORDER C5)
               (neighbour down C5 BORDER)

               (neighbour down BORDER C5)
               (neighbour up C5 BORDER)

               (neighbour left BORDER D4)
               (neighbour right D4 BORDER)

               (neighbour right BORDER D4)
               (neighbour left D4 BORDER)

               (neighbour down BORDER D4)
               (neighbour up D4 BORDER)

  )
  (:goal (and 
              (busy A3)
              (busy A5)
              (busy C3)
              (busy C4)
              (busy D4)
  ))
)
