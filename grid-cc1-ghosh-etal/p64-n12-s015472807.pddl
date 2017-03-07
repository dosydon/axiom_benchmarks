;; ----dbb--
;; ---bnnb--
;; ---bbnb--
;; ----bdb--
;; ---------
;; ---------
;; ---------
;; ---------
;; ---------
(define (problem N12-S15472807)
  (:domain grid)
  (:objects
        A4 - cell
        A5 - cell
        A6 - cell
        B3 - cell
        B4 - cell
        B5 - cell
        B6 - cell
        C3 - cell
        C4 - cell
        C5 - cell
        C6 - cell
        D4 - cell
        D5 - cell
        D6 - cell
        BORDER - cell
  )
  (:init
               (dispenser A4)
               (proc A5)
               (proc A6)
               (proc B3)
               (proc B4)
               (proc B5)
               (proc B6)
               (proc C3)
               (proc C4)
               (proc C5)
               (proc C6)
               (proc D4)
               (dispenser D5)
               (proc D6)
               (reject A4 left)
               (reject A4 right)
               (reject A4 up)
               (reject A4 down)
               (available A5)
               (available A6)
               (available B3)
               (available B4)
               (available B5)
               (available B6)
               (available C3)
               (available C4)
               (available C5)
               (available C6)
               (available D4)
               (reject D5 left)
               (reject D5 right)
               (reject D5 up)
               (reject D5 down)
               (available D6)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A4)
               (neighbour right A4 BORDER)

               (neighbour right A5 A4)
               (neighbour left A4 A5)

               (neighbour up BORDER A4)
               (neighbour down A4 BORDER)

               (neighbour down B4 A4)
               (neighbour up A4 B4)

               (neighbour right A6 A5)
               (neighbour left A5 A6)

               (neighbour up BORDER A5)
               (neighbour down A5 BORDER)

               (neighbour down B5 A5)
               (neighbour up A5 B5)

               (neighbour right BORDER A6)
               (neighbour left A6 BORDER)

               (neighbour up BORDER A6)
               (neighbour down A6 BORDER)

               (neighbour down B6 A6)
               (neighbour up A6 B6)

               (neighbour left BORDER B3)
               (neighbour right B3 BORDER)

               (neighbour right B4 B3)
               (neighbour left B3 B4)

               (neighbour up BORDER B3)
               (neighbour down B3 BORDER)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour right B5 B4)
               (neighbour left B4 B5)

               (neighbour down C4 B4)
               (neighbour up B4 C4)

               (neighbour right B6 B5)
               (neighbour left B5 B6)

               (neighbour down C5 B5)
               (neighbour up B5 C5)

               (neighbour right BORDER B6)
               (neighbour left B6 BORDER)

               (neighbour down C6 B6)
               (neighbour up B6 C6)

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

               (neighbour right C6 C5)
               (neighbour left C5 C6)

               (neighbour down D5 C5)
               (neighbour up C5 D5)

               (neighbour right BORDER C6)
               (neighbour left C6 BORDER)

               (neighbour down D6 C6)
               (neighbour up C6 D6)

               (neighbour left BORDER D4)
               (neighbour right D4 BORDER)

               (neighbour right D5 D4)
               (neighbour left D4 D5)

               (neighbour down BORDER D4)
               (neighbour up D4 BORDER)

               (neighbour right D6 D5)
               (neighbour left D5 D6)

               (neighbour down BORDER D5)
               (neighbour up D5 BORDER)

               (neighbour right BORDER D6)
               (neighbour left D6 BORDER)

               (neighbour down BORDER D6)
               (neighbour up D6 BORDER)

  )
  (:goal (and 
              (busy A5)
              (busy A6)
              (busy B3)
              (busy B6)
              (busy C3)
              (busy C4)
              (busy C6)
              (busy D4)
              (busy D6)
  ))
)
