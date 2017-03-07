;; -----nnbnb
;; ----nnnnbb
;; ----bbbbbd
;; -----d-d--
;; ----------
;; ----------
;; ----------
;; ----------
;; ----------
;; ----------
(define (problem N16-S134269613)
  (:domain grid)
  (:objects
        A5 - cell
        A6 - cell
        A7 - cell
        A8 - cell
        A9 - cell
        B4 - cell
        B5 - cell
        B6 - cell
        B7 - cell
        B8 - cell
        B9 - cell
        C4 - cell
        C5 - cell
        C6 - cell
        C7 - cell
        C8 - cell
        C9 - cell
        D5 - cell
        D7 - cell
        BORDER - cell
  )
  (:init
               (proc A5)
               (proc A6)
               (proc A7)
               (proc A8)
               (proc A9)
               (proc B4)
               (proc B5)
               (proc B6)
               (proc B7)
               (proc B8)
               (proc B9)
               (proc C4)
               (proc C5)
               (proc C6)
               (proc C7)
               (proc C8)
               (dispenser C9)
               (dispenser D5)
               (dispenser D7)
               (available A5)
               (available A6)
               (available A7)
               (available A8)
               (available A9)
               (available B4)
               (available B5)
               (available B6)
               (available B7)
               (available B8)
               (available B9)
               (available C4)
               (available C5)
               (available C6)
               (available C7)
               (available C8)
               (reject C9 left)
               (reject C9 right)
               (reject C9 up)
               (reject C9 down)
               (reject D5 left)
               (reject D5 right)
               (reject D5 up)
               (reject D5 down)
               (reject D7 left)
               (reject D7 right)
               (reject D7 up)
               (reject D7 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A5)
               (neighbour right A5 BORDER)

               (neighbour right A6 A5)
               (neighbour left A5 A6)

               (neighbour up BORDER A5)
               (neighbour down A5 BORDER)

               (neighbour down B5 A5)
               (neighbour up A5 B5)

               (neighbour right A7 A6)
               (neighbour left A6 A7)

               (neighbour up BORDER A6)
               (neighbour down A6 BORDER)

               (neighbour down B6 A6)
               (neighbour up A6 B6)

               (neighbour right A8 A7)
               (neighbour left A7 A8)

               (neighbour up BORDER A7)
               (neighbour down A7 BORDER)

               (neighbour down B7 A7)
               (neighbour up A7 B7)

               (neighbour right A9 A8)
               (neighbour left A8 A9)

               (neighbour up BORDER A8)
               (neighbour down A8 BORDER)

               (neighbour down B8 A8)
               (neighbour up A8 B8)

               (neighbour right BORDER A9)
               (neighbour left A9 BORDER)

               (neighbour up BORDER A9)
               (neighbour down A9 BORDER)

               (neighbour down B9 A9)
               (neighbour up A9 B9)

               (neighbour left BORDER B4)
               (neighbour right B4 BORDER)

               (neighbour right B5 B4)
               (neighbour left B4 B5)

               (neighbour up BORDER B4)
               (neighbour down B4 BORDER)

               (neighbour down C4 B4)
               (neighbour up B4 C4)

               (neighbour right B6 B5)
               (neighbour left B5 B6)

               (neighbour down C5 B5)
               (neighbour up B5 C5)

               (neighbour right B7 B6)
               (neighbour left B6 B7)

               (neighbour down C6 B6)
               (neighbour up B6 C6)

               (neighbour right B8 B7)
               (neighbour left B7 B8)

               (neighbour down C7 B7)
               (neighbour up B7 C7)

               (neighbour right B9 B8)
               (neighbour left B8 B9)

               (neighbour down C8 B8)
               (neighbour up B8 C8)

               (neighbour right BORDER B9)
               (neighbour left B9 BORDER)

               (neighbour down C9 B9)
               (neighbour up B9 C9)

               (neighbour left BORDER C4)
               (neighbour right C4 BORDER)

               (neighbour right C5 C4)
               (neighbour left C4 C5)

               (neighbour down BORDER C4)
               (neighbour up C4 BORDER)

               (neighbour right C6 C5)
               (neighbour left C5 C6)

               (neighbour down D5 C5)
               (neighbour up C5 D5)

               (neighbour right C7 C6)
               (neighbour left C6 C7)

               (neighbour down BORDER C6)
               (neighbour up C6 BORDER)

               (neighbour right C8 C7)
               (neighbour left C7 C8)

               (neighbour down D7 C7)
               (neighbour up C7 D7)

               (neighbour right C9 C8)
               (neighbour left C8 C9)

               (neighbour down BORDER C8)
               (neighbour up C8 BORDER)

               (neighbour right BORDER C9)
               (neighbour left C9 BORDER)

               (neighbour down BORDER C9)
               (neighbour up C9 BORDER)

               (neighbour left BORDER D5)
               (neighbour right D5 BORDER)

               (neighbour right BORDER D5)
               (neighbour left D5 BORDER)

               (neighbour down BORDER D5)
               (neighbour up D5 BORDER)

               (neighbour left BORDER D7)
               (neighbour right D7 BORDER)

               (neighbour right BORDER D7)
               (neighbour left D7 BORDER)

               (neighbour down BORDER D7)
               (neighbour up D7 BORDER)

  )
  (:goal (and 
              (busy A7)
              (busy A9)
              (busy B8)
              (busy B9)
              (busy C4)
              (busy C5)
              (busy C6)
              (busy C7)
              (busy C8)
  ))
)
