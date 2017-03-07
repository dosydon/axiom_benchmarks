;; --d--
;; -db-b
;; -bbnn
;; --nbb
;; --bbn
(define (problem N12-S130769517)
  (:domain grid)
  (:objects
        A2 - cell
        B1 - cell
        B2 - cell
        B4 - cell
        C1 - cell
        C2 - cell
        C3 - cell
        C4 - cell
        D2 - cell
        D3 - cell
        D4 - cell
        E2 - cell
        E3 - cell
        E4 - cell
        BORDER - cell
  )
  (:init
               (dispenser A2)
               (dispenser B1)
               (proc B2)
               (proc B4)
               (proc C1)
               (proc C2)
               (proc C3)
               (proc C4)
               (proc D2)
               (proc D3)
               (proc D4)
               (proc E2)
               (proc E3)
               (proc E4)
               (reject A2 left)
               (reject A2 right)
               (reject A2 up)
               (reject A2 down)
               (reject B1 left)
               (reject B1 right)
               (reject B1 up)
               (reject B1 down)
               (available B2)
               (available B4)
               (available C1)
               (available C2)
               (available C3)
               (available C4)
               (available D2)
               (available D3)
               (available D4)
               (available E2)
               (available E3)
               (available E4)
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

               (neighbour down C2 B2)
               (neighbour up B2 C2)

               (neighbour left BORDER B4)
               (neighbour right B4 BORDER)

               (neighbour right BORDER B4)
               (neighbour left B4 BORDER)

               (neighbour up BORDER B4)
               (neighbour down B4 BORDER)

               (neighbour down C4 B4)
               (neighbour up B4 C4)

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

               (neighbour right C4 C3)
               (neighbour left C3 C4)

               (neighbour up BORDER C3)
               (neighbour down C3 BORDER)

               (neighbour down D3 C3)
               (neighbour up C3 D3)

               (neighbour right BORDER C4)
               (neighbour left C4 BORDER)

               (neighbour down D4 C4)
               (neighbour up C4 D4)

               (neighbour left BORDER D2)
               (neighbour right D2 BORDER)

               (neighbour right D3 D2)
               (neighbour left D2 D3)

               (neighbour down E2 D2)
               (neighbour up D2 E2)

               (neighbour right D4 D3)
               (neighbour left D3 D4)

               (neighbour down E3 D3)
               (neighbour up D3 E3)

               (neighbour right BORDER D4)
               (neighbour left D4 BORDER)

               (neighbour down E4 D4)
               (neighbour up D4 E4)

               (neighbour left BORDER E2)
               (neighbour right E2 BORDER)

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
              (busy B2)
              (busy B4)
              (busy C1)
              (busy C2)
              (busy D3)
              (busy D4)
              (busy E2)
              (busy E3)
  ))
)
