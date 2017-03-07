;; -----
;; -----
;; --b-d
;; -dnnb
;; bbbbb
(define (problem N9-S456532214)
  (:domain grid)
  (:objects
        C2 - cell
        C4 - cell
        D1 - cell
        D2 - cell
        D3 - cell
        D4 - cell
        E0 - cell
        E1 - cell
        E2 - cell
        E3 - cell
        E4 - cell
        BORDER - cell
  )
  (:init
               (proc C2)
               (dispenser C4)
               (dispenser D1)
               (proc D2)
               (proc D3)
               (proc D4)
               (proc E0)
               (proc E1)
               (proc E2)
               (proc E3)
               (proc E4)
               (available C2)
               (reject C4 left)
               (reject C4 right)
               (reject C4 up)
               (reject C4 down)
               (reject D1 left)
               (reject D1 right)
               (reject D1 up)
               (reject D1 down)
               (available D2)
               (available D3)
               (available D4)
               (available E0)
               (available E1)
               (available E2)
               (available E3)
               (available E4)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER C2)
               (neighbour right C2 BORDER)

               (neighbour right BORDER C2)
               (neighbour left C2 BORDER)

               (neighbour up BORDER C2)
               (neighbour down C2 BORDER)

               (neighbour down D2 C2)
               (neighbour up C2 D2)

               (neighbour left BORDER C4)
               (neighbour right C4 BORDER)

               (neighbour right BORDER C4)
               (neighbour left C4 BORDER)

               (neighbour up BORDER C4)
               (neighbour down C4 BORDER)

               (neighbour down D4 C4)
               (neighbour up C4 D4)

               (neighbour left BORDER D1)
               (neighbour right D1 BORDER)

               (neighbour right D2 D1)
               (neighbour left D1 D2)

               (neighbour up BORDER D1)
               (neighbour down D1 BORDER)

               (neighbour down E1 D1)
               (neighbour up D1 E1)

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

               (neighbour down E4 D4)
               (neighbour up D4 E4)

               (neighbour left BORDER E0)
               (neighbour right E0 BORDER)

               (neighbour right E1 E0)
               (neighbour left E0 E1)

               (neighbour up BORDER E0)
               (neighbour down E0 BORDER)

               (neighbour down BORDER E0)
               (neighbour up E0 BORDER)

               (neighbour right E2 E1)
               (neighbour left E1 E2)

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
              (busy D4)
              (busy E0)
              (busy E1)
              (busy E2)
              (busy E3)
              (busy E4)
  ))
)
