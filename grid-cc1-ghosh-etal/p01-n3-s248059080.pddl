;; bb
;; db
(define (problem N3-S248059080)
  (:domain grid)
  (:objects
        A0 - cell
        A1 - cell
        B0 - cell
        B1 - cell
        BORDER - cell
  )
  (:init
               (proc A0)
               (proc A1)
               (dispenser B0)
               (proc B1)
               (available A0)
               (available A1)
               (reject B0 left)
               (reject B0 right)
               (reject B0 up)
               (reject B0 down)
               (available B1)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A0)
               (neighbour right A0 BORDER)

               (neighbour right A1 A0)
               (neighbour left A0 A1)

               (neighbour up BORDER A0)
               (neighbour down A0 BORDER)

               (neighbour down B0 A0)
               (neighbour up A0 B0)

               (neighbour right BORDER A1)
               (neighbour left A1 BORDER)

               (neighbour up BORDER A1)
               (neighbour down A1 BORDER)

               (neighbour down B1 A1)
               (neighbour up A1 B1)

               (neighbour left BORDER B0)
               (neighbour right B0 BORDER)

               (neighbour right B1 B0)
               (neighbour left B0 B1)

               (neighbour down BORDER B0)
               (neighbour up B0 BORDER)

               (neighbour right BORDER B1)
               (neighbour left B1 BORDER)

               (neighbour down BORDER B1)
               (neighbour up B1 BORDER)

  )
  (:goal (and 
              (busy A0)
              (busy A1)
              (busy B1)
  ))
)
