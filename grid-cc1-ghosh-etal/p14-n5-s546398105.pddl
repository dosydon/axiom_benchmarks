;; ---b
;; --db
;; -bbb
;; ----
(define (problem N5-S546398105)
  (:domain grid)
  (:objects
        A3 - cell
        B2 - cell
        B3 - cell
        C1 - cell
        C2 - cell
        C3 - cell
        BORDER - cell
  )
  (:init
               (proc A3)
               (dispenser B2)
               (proc B3)
               (proc C1)
               (proc C2)
               (proc C3)
               (available A3)
               (reject B2 left)
               (reject B2 right)
               (reject B2 up)
               (reject B2 down)
               (available B3)
               (available C1)
               (available C2)
               (available C3)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A3)
               (neighbour right A3 BORDER)

               (neighbour right BORDER A3)
               (neighbour left A3 BORDER)

               (neighbour up BORDER A3)
               (neighbour down A3 BORDER)

               (neighbour down B3 A3)
               (neighbour up A3 B3)

               (neighbour left BORDER B2)
               (neighbour right B2 BORDER)

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour up BORDER B2)
               (neighbour down B2 BORDER)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

               (neighbour right BORDER B3)
               (neighbour left B3 BORDER)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour left BORDER C1)
               (neighbour right C1 BORDER)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

               (neighbour up BORDER C1)
               (neighbour down C1 BORDER)

               (neighbour down BORDER C1)
               (neighbour up C1 BORDER)

               (neighbour right C3 C2)
               (neighbour left C2 C3)

               (neighbour down BORDER C2)
               (neighbour up C2 BORDER)

               (neighbour right BORDER C3)
               (neighbour left C3 BORDER)

               (neighbour down BORDER C3)
               (neighbour up C3 BORDER)

  )
  (:goal (and 
              (busy A3)
              (busy B3)
              (busy C1)
              (busy C2)
              (busy C3)
  ))
)
