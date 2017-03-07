;; --d--
;; --b--
;; -db--
;; bbn--
;; bb---
(define (problem N7-S96455308)
  (:domain grid)
  (:objects
        A2 - cell
        B2 - cell
        C1 - cell
        C2 - cell
        D0 - cell
        D1 - cell
        D2 - cell
        E0 - cell
        E1 - cell
        BORDER - cell
  )
  (:init
               (dispenser A2)
               (proc B2)
               (dispenser C1)
               (proc C2)
               (proc D0)
               (proc D1)
               (proc D2)
               (proc E0)
               (proc E1)
               (reject A2 left)
               (reject A2 right)
               (reject A2 up)
               (reject A2 down)
               (available B2)
               (reject C1 left)
               (reject C1 right)
               (reject C1 up)
               (reject C1 down)
               (available C2)
               (available D0)
               (available D1)
               (available D2)
               (available E0)
               (available E1)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A2)
               (neighbour right A2 BORDER)

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

               (neighbour left BORDER C1)
               (neighbour right C1 BORDER)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

               (neighbour up BORDER C1)
               (neighbour down C1 BORDER)

               (neighbour down D1 C1)
               (neighbour up C1 D1)

               (neighbour right BORDER C2)
               (neighbour left C2 BORDER)

               (neighbour down D2 C2)
               (neighbour up C2 D2)

               (neighbour left BORDER D0)
               (neighbour right D0 BORDER)

               (neighbour right D1 D0)
               (neighbour left D0 D1)

               (neighbour up BORDER D0)
               (neighbour down D0 BORDER)

               (neighbour down E0 D0)
               (neighbour up D0 E0)

               (neighbour right D2 D1)
               (neighbour left D1 D2)

               (neighbour down E1 D1)
               (neighbour up D1 E1)

               (neighbour right BORDER D2)
               (neighbour left D2 BORDER)

               (neighbour down BORDER D2)
               (neighbour up D2 BORDER)

               (neighbour left BORDER E0)
               (neighbour right E0 BORDER)

               (neighbour right E1 E0)
               (neighbour left E0 E1)

               (neighbour down BORDER E0)
               (neighbour up E0 BORDER)

               (neighbour right BORDER E1)
               (neighbour left E1 BORDER)

               (neighbour down BORDER E1)
               (neighbour up E1 BORDER)

  )
  (:goal (and 
              (busy B2)
              (busy C2)
              (busy D0)
              (busy D1)
              (busy E0)
              (busy E1)
  ))
)
