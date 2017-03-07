;; -db
;; --b
;; bbb
(define (problem N5-S616180021)
  (:domain grid)
  (:objects
        A1 - cell
        A2 - cell
        B2 - cell
        C0 - cell
        C1 - cell
        C2 - cell
        BORDER - cell
  )
  (:init
               (dispenser A1)
               (proc A2)
               (proc B2)
               (proc C0)
               (proc C1)
               (proc C2)
               (reject A1 left)
               (reject A1 right)
               (reject A1 up)
               (reject A1 down)
               (available A2)
               (available B2)
               (available C0)
               (available C1)
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

               (neighbour down BORDER A1)
               (neighbour up A1 BORDER)

               (neighbour right BORDER A2)
               (neighbour left A2 BORDER)

               (neighbour up BORDER A2)
               (neighbour down A2 BORDER)

               (neighbour down B2 A2)
               (neighbour up A2 B2)

               (neighbour left BORDER B2)
               (neighbour right B2 BORDER)

               (neighbour right BORDER B2)
               (neighbour left B2 BORDER)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right C1 C0)
               (neighbour left C0 C1)

               (neighbour up BORDER C0)
               (neighbour down C0 BORDER)

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
              (busy A2)
              (busy B2)
              (busy C0)
              (busy C1)
              (busy C2)
  ))
)
