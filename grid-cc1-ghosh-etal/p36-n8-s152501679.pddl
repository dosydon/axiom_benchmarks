;; -db-
;; -bnb
;; -dbn
;; --bb
(define (problem N8-S152501679)
  (:domain grid)
  (:objects
        A1 - cell
        A2 - cell
        B1 - cell
        B2 - cell
        B3 - cell
        C1 - cell
        C2 - cell
        C3 - cell
        D2 - cell
        D3 - cell
        BORDER - cell
  )
  (:init
               (dispenser A1)
               (proc A2)
               (proc B1)
               (proc B2)
               (proc B3)
               (dispenser C1)
               (proc C2)
               (proc C3)
               (proc D2)
               (proc D3)
               (reject A1 left)
               (reject A1 right)
               (reject A1 up)
               (reject A1 down)
               (available A2)
               (available B1)
               (available B2)
               (available B3)
               (reject C1 left)
               (reject C1 right)
               (reject C1 up)
               (reject C1 down)
               (available C2)
               (available C3)
               (available D2)
               (available D3)
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

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

               (neighbour right BORDER B3)
               (neighbour left B3 BORDER)

               (neighbour up BORDER B3)
               (neighbour down B3 BORDER)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour left BORDER C1)
               (neighbour right C1 BORDER)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

               (neighbour down BORDER C1)
               (neighbour up C1 BORDER)

               (neighbour right C3 C2)
               (neighbour left C2 C3)

               (neighbour down D2 C2)
               (neighbour up C2 D2)

               (neighbour right BORDER C3)
               (neighbour left C3 BORDER)

               (neighbour down D3 C3)
               (neighbour up C3 D3)

               (neighbour left BORDER D2)
               (neighbour right D2 BORDER)

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
              (busy A2)
              (busy B1)
              (busy B3)
              (busy C2)
              (busy D2)
              (busy D3)
  ))
)
