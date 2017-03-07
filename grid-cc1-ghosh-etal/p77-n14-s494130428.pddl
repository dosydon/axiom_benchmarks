;; b--------
;; bdbd-----
;; bnbb-----
;; nbnb-----
;; bb-b-----
;; -d-------
;; ---------
;; ---------
;; ---------
(define (problem N14-S494130428)
  (:domain grid)
  (:objects
        A0 - cell
        B0 - cell
        B1 - cell
        B2 - cell
        B3 - cell
        C0 - cell
        C1 - cell
        C2 - cell
        C3 - cell
        D0 - cell
        D1 - cell
        D2 - cell
        D3 - cell
        E0 - cell
        E1 - cell
        E3 - cell
        F1 - cell
        BORDER - cell
  )
  (:init
               (proc A0)
               (proc B0)
               (dispenser B1)
               (proc B2)
               (dispenser B3)
               (proc C0)
               (proc C1)
               (proc C2)
               (proc C3)
               (proc D0)
               (proc D1)
               (proc D2)
               (proc D3)
               (proc E0)
               (proc E1)
               (proc E3)
               (dispenser F1)
               (available A0)
               (available B0)
               (reject B1 left)
               (reject B1 right)
               (reject B1 up)
               (reject B1 down)
               (available B2)
               (reject B3 left)
               (reject B3 right)
               (reject B3 up)
               (reject B3 down)
               (available C0)
               (available C1)
               (available C2)
               (available C3)
               (available D0)
               (available D1)
               (available D2)
               (available D3)
               (available E0)
               (available E1)
               (available E3)
               (reject F1 left)
               (reject F1 right)
               (reject F1 up)
               (reject F1 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A0)
               (neighbour right A0 BORDER)

               (neighbour right BORDER A0)
               (neighbour left A0 BORDER)

               (neighbour up BORDER A0)
               (neighbour down A0 BORDER)

               (neighbour down B0 A0)
               (neighbour up A0 B0)

               (neighbour left BORDER B0)
               (neighbour right B0 BORDER)

               (neighbour right B1 B0)
               (neighbour left B0 B1)

               (neighbour down C0 B0)
               (neighbour up B0 C0)

               (neighbour right B2 B1)
               (neighbour left B1 B2)

               (neighbour up BORDER B1)
               (neighbour down B1 BORDER)

               (neighbour down C1 B1)
               (neighbour up B1 C1)

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour up BORDER B2)
               (neighbour down B2 BORDER)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

               (neighbour right BORDER B3)
               (neighbour left B3 BORDER)

               (neighbour up BORDER B3)
               (neighbour down B3 BORDER)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right C1 C0)
               (neighbour left C0 C1)

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

               (neighbour down D3 C3)
               (neighbour up C3 D3)

               (neighbour left BORDER D0)
               (neighbour right D0 BORDER)

               (neighbour right D1 D0)
               (neighbour left D0 D1)

               (neighbour down E0 D0)
               (neighbour up D0 E0)

               (neighbour right D2 D1)
               (neighbour left D1 D2)

               (neighbour down E1 D1)
               (neighbour up D1 E1)

               (neighbour right D3 D2)
               (neighbour left D2 D3)

               (neighbour down BORDER D2)
               (neighbour up D2 BORDER)

               (neighbour right BORDER D3)
               (neighbour left D3 BORDER)

               (neighbour down E3 D3)
               (neighbour up D3 E3)

               (neighbour left BORDER E0)
               (neighbour right E0 BORDER)

               (neighbour right E1 E0)
               (neighbour left E0 E1)

               (neighbour down BORDER E0)
               (neighbour up E0 BORDER)

               (neighbour right BORDER E1)
               (neighbour left E1 BORDER)

               (neighbour down F1 E1)
               (neighbour up E1 F1)

               (neighbour left BORDER E3)
               (neighbour right E3 BORDER)

               (neighbour right BORDER E3)
               (neighbour left E3 BORDER)

               (neighbour down BORDER E3)
               (neighbour up E3 BORDER)

               (neighbour left BORDER F1)
               (neighbour right F1 BORDER)

               (neighbour right BORDER F1)
               (neighbour left F1 BORDER)

               (neighbour down BORDER F1)
               (neighbour up F1 BORDER)

  )
  (:goal (and 
              (busy A0)
              (busy B0)
              (busy B2)
              (busy C0)
              (busy C2)
              (busy C3)
              (busy D1)
              (busy D3)
              (busy E0)
              (busy E1)
              (busy E3)
  ))
)
