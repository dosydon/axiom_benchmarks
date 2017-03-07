;; ---
;; b-d
;; bbb
(define (problem N4-S448265659)
  (:domain grid)
  (:objects
        B0 - cell
        B2 - cell
        C0 - cell
        C1 - cell
        C2 - cell
        BORDER - cell
  )
  (:init
               (proc B0)
               (dispenser B2)
               (proc C0)
               (proc C1)
               (proc C2)
               (available B0)
               (reject B2 left)
               (reject B2 right)
               (reject B2 up)
               (reject B2 down)
               (available C0)
               (available C1)
               (available C2)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER B0)
               (neighbour right B0 BORDER)

               (neighbour right BORDER B0)
               (neighbour left B0 BORDER)

               (neighbour up BORDER B0)
               (neighbour down B0 BORDER)

               (neighbour down C0 B0)
               (neighbour up B0 C0)

               (neighbour left BORDER B2)
               (neighbour right B2 BORDER)

               (neighbour right BORDER B2)
               (neighbour left B2 BORDER)

               (neighbour up BORDER B2)
               (neighbour down B2 BORDER)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right C1 C0)
               (neighbour left C0 C1)

               (neighbour down BORDER C0)
               (neighbour up C0 BORDER)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

               (neighbour up BORDER C1)
               (neighbour down C1 BORDER)

               (neighbour down BORDER C1)
               (neighbour up C1 BORDER)

               (neighbour right BORDER C2)
               (neighbour left C2 BORDER)

               (neighbour down BORDER C2)
               (neighbour up C2 BORDER)

  )
  (:goal (and 
              (busy B0)
              (busy C0)
              (busy C1)
              (busy C2)
  ))
)
