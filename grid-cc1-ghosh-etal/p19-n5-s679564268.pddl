;; ---
;; bnb
;; dbb
(define (problem N5-S679564268)
  (:domain grid)
  (:objects
        B0 - cell
        B1 - cell
        B2 - cell
        C0 - cell
        C1 - cell
        C2 - cell
        BORDER - cell
  )
  (:init
               (proc B0)
               (proc B1)
               (proc B2)
               (dispenser C0)
               (proc C1)
               (proc C2)
               (available B0)
               (available B1)
               (available B2)
               (reject C0 left)
               (reject C0 right)
               (reject C0 up)
               (reject C0 down)
               (available C1)
               (available C2)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER B0)
               (neighbour right B0 BORDER)

               (neighbour right B1 B0)
               (neighbour left B0 B1)

               (neighbour up BORDER B0)
               (neighbour down B0 BORDER)

               (neighbour down C0 B0)
               (neighbour up B0 C0)

               (neighbour right B2 B1)
               (neighbour left B1 B2)

               (neighbour up BORDER B1)
               (neighbour down B1 BORDER)

               (neighbour down C1 B1)
               (neighbour up B1 C1)

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

               (neighbour down BORDER C1)
               (neighbour up C1 BORDER)

               (neighbour right BORDER C2)
               (neighbour left C2 BORDER)

               (neighbour down BORDER C2)
               (neighbour up C2 BORDER)

  )
  (:goal (and 
              (busy B0)
              (busy B2)
              (busy C1)
              (busy C2)
  ))
)
