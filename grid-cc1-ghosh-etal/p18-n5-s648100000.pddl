;; -bb
;; -nb
;; -db
(define (problem N5-S648100000)
  (:domain grid)
  (:objects
        A1 - cell
        A2 - cell
        B1 - cell
        B2 - cell
        C1 - cell
        C2 - cell
        BORDER - cell
  )
  (:init
               (proc A1)
               (proc A2)
               (proc B1)
               (proc B2)
               (dispenser C1)
               (proc C2)
               (available A1)
               (available A2)
               (available B1)
               (available B2)
               (reject C1 left)
               (reject C1 right)
               (reject C1 up)
               (reject C1 down)
               (available C2)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A1)
               (neighbour right A1 BORDER)

               (neighbour right A2 A1)
               (neighbour left A1 A2)

               (neighbour up BORDER A1)
               (neighbour down A1 BORDER)

               (neighbour down B1 A1)
               (neighbour up A1 B1)

               (neighbour right BORDER A2)
               (neighbour left A2 BORDER)

               (neighbour up BORDER A2)
               (neighbour down A2 BORDER)

               (neighbour down B2 A2)
               (neighbour up A2 B2)

               (neighbour left BORDER B1)
               (neighbour right B1 BORDER)

               (neighbour right B2 B1)
               (neighbour left B1 B2)

               (neighbour down C1 B1)
               (neighbour up B1 C1)

               (neighbour right BORDER B2)
               (neighbour left B2 BORDER)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

               (neighbour left BORDER C1)
               (neighbour right C1 BORDER)

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
              (busy A1)
              (busy A2)
              (busy B2)
              (busy C2)
  ))
)
