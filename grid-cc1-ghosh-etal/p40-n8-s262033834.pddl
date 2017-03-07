;; ----
;; -db-
;; bnbd
;; bbnb
(define (problem N8-S262033834)
  (:domain grid)
  (:objects
        B1 - cell
        B2 - cell
        C0 - cell
        C1 - cell
        C2 - cell
        C3 - cell
        D0 - cell
        D1 - cell
        D2 - cell
        D3 - cell
        BORDER - cell
  )
  (:init
               (dispenser B1)
               (proc B2)
               (proc C0)
               (proc C1)
               (proc C2)
               (dispenser C3)
               (proc D0)
               (proc D1)
               (proc D2)
               (proc D3)
               (reject B1 left)
               (reject B1 right)
               (reject B1 up)
               (reject B1 down)
               (available B2)
               (available C0)
               (available C1)
               (available C2)
               (reject C3 left)
               (reject C3 right)
               (reject C3 up)
               (reject C3 down)
               (available D0)
               (available D1)
               (available D2)
               (available D3)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER B1)
               (neighbour right B1 BORDER)

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

               (neighbour up BORDER C0)
               (neighbour down C0 BORDER)

               (neighbour down D0 C0)
               (neighbour up C0 D0)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

               (neighbour down D1 C1)
               (neighbour up C1 D1)

               (neighbour right C3 C2)
               (neighbour left C2 C3)

               (neighbour down D2 C2)
               (neighbour up C2 D2)

               (neighbour right BORDER C3)
               (neighbour left C3 BORDER)

               (neighbour up BORDER C3)
               (neighbour down C3 BORDER)

               (neighbour down D3 C3)
               (neighbour up C3 D3)

               (neighbour left BORDER D0)
               (neighbour right D0 BORDER)

               (neighbour right D1 D0)
               (neighbour left D0 D1)

               (neighbour down BORDER D0)
               (neighbour up D0 BORDER)

               (neighbour right D2 D1)
               (neighbour left D1 D2)

               (neighbour down BORDER D1)
               (neighbour up D1 BORDER)

               (neighbour right D3 D2)
               (neighbour left D2 D3)

               (neighbour down BORDER D2)
               (neighbour up D2 BORDER)

               (neighbour right BORDER D3)
               (neighbour left D3 BORDER)

               (neighbour down BORDER D3)
               (neighbour up D3 BORDER)

  )
  (:goal (and 
              (busy B2)
              (busy C0)
              (busy C2)
              (busy D0)
              (busy D1)
              (busy D3)
  ))
)
