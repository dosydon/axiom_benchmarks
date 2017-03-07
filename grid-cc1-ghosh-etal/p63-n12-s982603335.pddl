;; ---b---
;; --bn---
;; bbnbbb-
;; -nb-d--
;; db-----
;; -------
;; -------
(define (problem N12-S982603335)
  (:domain grid)
  (:objects
        A3 - cell
        B2 - cell
        B3 - cell
        C0 - cell
        C1 - cell
        C2 - cell
        C3 - cell
        C4 - cell
        C5 - cell
        D1 - cell
        D2 - cell
        D4 - cell
        E0 - cell
        E1 - cell
        BORDER - cell
  )
  (:init
               (proc A3)
               (proc B2)
               (proc B3)
               (proc C0)
               (proc C1)
               (proc C2)
               (proc C3)
               (proc C4)
               (proc C5)
               (proc D1)
               (proc D2)
               (dispenser D4)
               (dispenser E0)
               (proc E1)
               (available A3)
               (available B2)
               (available B3)
               (available C0)
               (available C1)
               (available C2)
               (available C3)
               (available C4)
               (available C5)
               (available D1)
               (available D2)
               (reject D4 left)
               (reject D4 right)
               (reject D4 up)
               (reject D4 down)
               (reject E0 left)
               (reject E0 right)
               (reject E0 up)
               (reject E0 down)
               (available E1)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A3)
               (neighbour right A3 BORDER)

               (neighbour right BORDER A3)
               (neighbour left A3 BORDER)

               (neighbour up BORDER A3)
               (neighbour down A3 BORDER)

               (neighbour down B3 A3)
               (neighbour up A3 B3)

               (neighbour left BORDER B2)
               (neighbour right B2 BORDER)

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour up BORDER B2)
               (neighbour down B2 BORDER)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

               (neighbour right BORDER B3)
               (neighbour left B3 BORDER)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

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

               (neighbour down D1 C1)
               (neighbour up C1 D1)

               (neighbour right C3 C2)
               (neighbour left C2 C3)

               (neighbour down D2 C2)
               (neighbour up C2 D2)

               (neighbour right C4 C3)
               (neighbour left C3 C4)

               (neighbour down BORDER C3)
               (neighbour up C3 BORDER)

               (neighbour right C5 C4)
               (neighbour left C4 C5)

               (neighbour up BORDER C4)
               (neighbour down C4 BORDER)

               (neighbour down D4 C4)
               (neighbour up C4 D4)

               (neighbour right BORDER C5)
               (neighbour left C5 BORDER)

               (neighbour up BORDER C5)
               (neighbour down C5 BORDER)

               (neighbour down BORDER C5)
               (neighbour up C5 BORDER)

               (neighbour left BORDER D1)
               (neighbour right D1 BORDER)

               (neighbour right D2 D1)
               (neighbour left D1 D2)

               (neighbour down E1 D1)
               (neighbour up D1 E1)

               (neighbour right BORDER D2)
               (neighbour left D2 BORDER)

               (neighbour down BORDER D2)
               (neighbour up D2 BORDER)

               (neighbour left BORDER D4)
               (neighbour right D4 BORDER)

               (neighbour right BORDER D4)
               (neighbour left D4 BORDER)

               (neighbour down BORDER D4)
               (neighbour up D4 BORDER)

               (neighbour left BORDER E0)
               (neighbour right E0 BORDER)

               (neighbour right E1 E0)
               (neighbour left E0 E1)

               (neighbour up BORDER E0)
               (neighbour down E0 BORDER)

               (neighbour down BORDER E0)
               (neighbour up E0 BORDER)

               (neighbour right BORDER E1)
               (neighbour left E1 BORDER)

               (neighbour down BORDER E1)
               (neighbour up E1 BORDER)

  )
  (:goal (and 
              (busy A3)
              (busy B2)
              (busy C0)
              (busy C1)
              (busy C3)
              (busy C4)
              (busy C5)
              (busy D2)
              (busy E1)
  ))
)
