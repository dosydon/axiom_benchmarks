;; -----
;; -----
;; -db--
;; --nbd
;; -bbbn
(define (problem N7-S924737881)
  (:domain grid)
  (:objects
        C1 - cell
        C2 - cell
        D2 - cell
        D3 - cell
        D4 - cell
        E1 - cell
        E2 - cell
        E3 - cell
        E4 - cell
        BORDER - cell
  )
  (:init
               (dispenser C1)
               (proc C2)
               (proc D2)
               (proc D3)
               (dispenser D4)
               (proc E1)
               (proc E2)
               (proc E3)
               (proc E4)
               (reject C1 left)
               (reject C1 right)
               (reject C1 up)
               (reject C1 down)
               (available C2)
               (available D2)
               (available D3)
               (reject D4 left)
               (reject D4 right)
               (reject D4 up)
               (reject D4 down)
               (available E1)
               (available E2)
               (available E3)
               (available E4)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER C1)
               (neighbour right C1 BORDER)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

               (neighbour up BORDER C1)
               (neighbour down C1 BORDER)

               (neighbour down BORDER C1)
               (neighbour up C1 BORDER)

               (neighbour right BORDER C2)
               (neighbour left C2 BORDER)

               (neighbour up BORDER C2)
               (neighbour down C2 BORDER)

               (neighbour down D2 C2)
               (neighbour up C2 D2)

               (neighbour left BORDER D2)
               (neighbour right D2 BORDER)

               (neighbour right D3 D2)
               (neighbour left D2 D3)

               (neighbour down E2 D2)
               (neighbour up D2 E2)

               (neighbour right D4 D3)
               (neighbour left D3 D4)

               (neighbour up BORDER D3)
               (neighbour down D3 BORDER)

               (neighbour down E3 D3)
               (neighbour up D3 E3)

               (neighbour right BORDER D4)
               (neighbour left D4 BORDER)

               (neighbour up BORDER D4)
               (neighbour down D4 BORDER)

               (neighbour down E4 D4)
               (neighbour up D4 E4)

               (neighbour left BORDER E1)
               (neighbour right E1 BORDER)

               (neighbour right E2 E1)
               (neighbour left E1 E2)

               (neighbour up BORDER E1)
               (neighbour down E1 BORDER)

               (neighbour down BORDER E1)
               (neighbour up E1 BORDER)

               (neighbour right E3 E2)
               (neighbour left E2 E3)

               (neighbour down BORDER E2)
               (neighbour up E2 BORDER)

               (neighbour right E4 E3)
               (neighbour left E3 E4)

               (neighbour down BORDER E3)
               (neighbour up E3 BORDER)

               (neighbour right BORDER E4)
               (neighbour left E4 BORDER)

               (neighbour down BORDER E4)
               (neighbour up E4 BORDER)

  )
  (:goal (and 
              (busy C2)
              (busy D3)
              (busy E1)
              (busy E2)
              (busy E3)
  ))
)
