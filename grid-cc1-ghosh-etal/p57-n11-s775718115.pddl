;; ----------
;; ----------
;; dbb-------
;; bnb-------
;; nbnd------
;; bbn-------
;; ----------
;; ----------
;; ----------
;; ----------
(define (problem N11-S775718115)
  (:domain grid)
  (:objects
        C0 - cell
        C1 - cell
        C2 - cell
        D0 - cell
        D1 - cell
        D2 - cell
        E0 - cell
        E1 - cell
        E2 - cell
        E3 - cell
        F0 - cell
        F1 - cell
        F2 - cell
        BORDER - cell
  )
  (:init
               (dispenser C0)
               (proc C1)
               (proc C2)
               (proc D0)
               (proc D1)
               (proc D2)
               (proc E0)
               (proc E1)
               (proc E2)
               (dispenser E3)
               (proc F0)
               (proc F1)
               (proc F2)
               (reject C0 left)
               (reject C0 right)
               (reject C0 up)
               (reject C0 down)
               (available C1)
               (available C2)
               (available D0)
               (available D1)
               (available D2)
               (available E0)
               (available E1)
               (available E2)
               (reject E3 left)
               (reject E3 right)
               (reject E3 up)
               (reject E3 down)
               (available F0)
               (available F1)
               (available F2)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER C0)
               (neighbour right C0 BORDER)

               (neighbour right C1 C0)
               (neighbour left C0 C1)

               (neighbour up BORDER C0)
               (neighbour down C0 BORDER)

               (neighbour down D0 C0)
               (neighbour up C0 D0)

               (neighbour right C2 C1)
               (neighbour left C1 C2)

               (neighbour up BORDER C1)
               (neighbour down C1 BORDER)

               (neighbour down D1 C1)
               (neighbour up C1 D1)

               (neighbour right BORDER C2)
               (neighbour left C2 BORDER)

               (neighbour up BORDER C2)
               (neighbour down C2 BORDER)

               (neighbour down D2 C2)
               (neighbour up C2 D2)

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

               (neighbour right BORDER D2)
               (neighbour left D2 BORDER)

               (neighbour down E2 D2)
               (neighbour up D2 E2)

               (neighbour left BORDER E0)
               (neighbour right E0 BORDER)

               (neighbour right E1 E0)
               (neighbour left E0 E1)

               (neighbour down F0 E0)
               (neighbour up E0 F0)

               (neighbour right E2 E1)
               (neighbour left E1 E2)

               (neighbour down F1 E1)
               (neighbour up E1 F1)

               (neighbour right E3 E2)
               (neighbour left E2 E3)

               (neighbour down F2 E2)
               (neighbour up E2 F2)

               (neighbour right BORDER E3)
               (neighbour left E3 BORDER)

               (neighbour up BORDER E3)
               (neighbour down E3 BORDER)

               (neighbour down BORDER E3)
               (neighbour up E3 BORDER)

               (neighbour left BORDER F0)
               (neighbour right F0 BORDER)

               (neighbour right F1 F0)
               (neighbour left F0 F1)

               (neighbour down BORDER F0)
               (neighbour up F0 BORDER)

               (neighbour right F2 F1)
               (neighbour left F1 F2)

               (neighbour down BORDER F1)
               (neighbour up F1 BORDER)

               (neighbour right BORDER F2)
               (neighbour left F2 BORDER)

               (neighbour down BORDER F2)
               (neighbour up F2 BORDER)

  )
  (:goal (and 
              (busy C1)
              (busy C2)
              (busy D0)
              (busy D2)
              (busy E1)
              (busy F0)
              (busy F1)
  ))
)
