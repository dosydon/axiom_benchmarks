;; --db
;; -bbn
;; ---b
;; dbbb
(define (problem N8-S232073950)
  (:domain grid)
  (:objects
        A2 - cell
        A3 - cell
        B1 - cell
        B2 - cell
        B3 - cell
        C3 - cell
        D0 - cell
        D1 - cell
        D2 - cell
        D3 - cell
        BORDER - cell
  )
  (:init
               (dispenser A2)
               (proc A3)
               (proc B1)
               (proc B2)
               (proc B3)
               (proc C3)
               (dispenser D0)
               (proc D1)
               (proc D2)
               (proc D3)
               (reject A2 left)
               (reject A2 right)
               (reject A2 up)
               (reject A2 down)
               (available A3)
               (available B1)
               (available B2)
               (available B3)
               (available C3)
               (reject D0 left)
               (reject D0 right)
               (reject D0 up)
               (reject D0 down)
               (available D1)
               (available D2)
               (available D3)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A2)
               (neighbour right A2 BORDER)

               (neighbour right A3 A2)
               (neighbour left A2 A3)

               (neighbour up BORDER A2)
               (neighbour down A2 BORDER)

               (neighbour down B2 A2)
               (neighbour up A2 B2)

               (neighbour right BORDER A3)
               (neighbour left A3 BORDER)

               (neighbour up BORDER A3)
               (neighbour down A3 BORDER)

               (neighbour down B3 A3)
               (neighbour up A3 B3)

               (neighbour left BORDER B1)
               (neighbour right B1 BORDER)

               (neighbour right B2 B1)
               (neighbour left B1 B2)

               (neighbour up BORDER B1)
               (neighbour down B1 BORDER)

               (neighbour down BORDER B1)
               (neighbour up B1 BORDER)

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour down BORDER B2)
               (neighbour up B2 BORDER)

               (neighbour right BORDER B3)
               (neighbour left B3 BORDER)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour left BORDER C3)
               (neighbour right C3 BORDER)

               (neighbour right BORDER C3)
               (neighbour left C3 BORDER)

               (neighbour down D3 C3)
               (neighbour up C3 D3)

               (neighbour left BORDER D0)
               (neighbour right D0 BORDER)

               (neighbour right D1 D0)
               (neighbour left D0 D1)

               (neighbour up BORDER D0)
               (neighbour down D0 BORDER)

               (neighbour down BORDER D0)
               (neighbour up D0 BORDER)

               (neighbour right D2 D1)
               (neighbour left D1 D2)

               (neighbour up BORDER D1)
               (neighbour down D1 BORDER)

               (neighbour down BORDER D1)
               (neighbour up D1 BORDER)

               (neighbour right D3 D2)
               (neighbour left D2 D3)

               (neighbour up BORDER D2)
               (neighbour down D2 BORDER)

               (neighbour down BORDER D2)
               (neighbour up D2 BORDER)

               (neighbour right BORDER D3)
               (neighbour left D3 BORDER)

               (neighbour down BORDER D3)
               (neighbour up D3 BORDER)

  )
  (:goal (and 
              (busy A3)
              (busy B1)
              (busy B2)
              (busy C3)
              (busy D1)
              (busy D2)
              (busy D3)
  ))
)
