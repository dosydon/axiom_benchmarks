;; ------bbn-
;; -----bnnb-
;; -----bbnbb
;; ------d--d
;; ----------
;; ----------
;; ----------
;; ----------
;; ----------
;; ----------
(define (problem N12-S49190222)
  (:domain grid)
  (:objects
        A6 - cell
        A7 - cell
        A8 - cell
        B5 - cell
        B6 - cell
        B7 - cell
        B8 - cell
        C5 - cell
        C6 - cell
        C7 - cell
        C8 - cell
        C9 - cell
        D6 - cell
        D9 - cell
        BORDER - cell
  )
  (:init
               (proc A6)
               (proc A7)
               (proc A8)
               (proc B5)
               (proc B6)
               (proc B7)
               (proc B8)
               (proc C5)
               (proc C6)
               (proc C7)
               (proc C8)
               (proc C9)
               (dispenser D6)
               (dispenser D9)
               (available A6)
               (available A7)
               (available A8)
               (available B5)
               (available B6)
               (available B7)
               (available B8)
               (available C5)
               (available C6)
               (available C7)
               (available C8)
               (available C9)
               (reject D6 left)
               (reject D6 right)
               (reject D6 up)
               (reject D6 down)
               (reject D9 left)
               (reject D9 right)
               (reject D9 up)
               (reject D9 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A6)
               (neighbour right A6 BORDER)

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

               (neighbour right BORDER A8)
               (neighbour left A8 BORDER)

               (neighbour up BORDER A8)
               (neighbour down A8 BORDER)

               (neighbour down B8 A8)
               (neighbour up A8 B8)

               (neighbour left BORDER B5)
               (neighbour right B5 BORDER)

               (neighbour right B6 B5)
               (neighbour left B5 B6)

               (neighbour up BORDER B5)
               (neighbour down B5 BORDER)

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

               (neighbour right BORDER B8)
               (neighbour left B8 BORDER)

               (neighbour down C8 B8)
               (neighbour up B8 C8)

               (neighbour left BORDER C5)
               (neighbour right C5 BORDER)

               (neighbour right C6 C5)
               (neighbour left C5 C6)

               (neighbour down BORDER C5)
               (neighbour up C5 BORDER)

               (neighbour right C7 C6)
               (neighbour left C6 C7)

               (neighbour down D6 C6)
               (neighbour up C6 D6)

               (neighbour right C8 C7)
               (neighbour left C7 C8)

               (neighbour down BORDER C7)
               (neighbour up C7 BORDER)

               (neighbour right C9 C8)
               (neighbour left C8 C9)

               (neighbour down BORDER C8)
               (neighbour up C8 BORDER)

               (neighbour right BORDER C9)
               (neighbour left C9 BORDER)

               (neighbour up BORDER C9)
               (neighbour down C9 BORDER)

               (neighbour down D9 C9)
               (neighbour up C9 D9)

               (neighbour left BORDER D6)
               (neighbour right D6 BORDER)

               (neighbour right BORDER D6)
               (neighbour left D6 BORDER)

               (neighbour down BORDER D6)
               (neighbour up D6 BORDER)

               (neighbour left BORDER D9)
               (neighbour right D9 BORDER)

               (neighbour right BORDER D9)
               (neighbour left D9 BORDER)

               (neighbour down BORDER D9)
               (neighbour up D9 BORDER)

  )
  (:goal (and 
              (busy A6)
              (busy A7)
              (busy B5)
              (busy B8)
              (busy C5)
              (busy C6)
              (busy C8)
              (busy C9)
  ))
)
