;; -d------
;; -b------
;; -b------
;; -n------
;; -nbb----
;; bnb-----
;; -db-----
;; --------
(define (problem N10-S540138723)
  (:domain grid)
  (:objects
        A1 - cell
        B1 - cell
        C1 - cell
        D1 - cell
        E1 - cell
        E2 - cell
        E3 - cell
        F0 - cell
        F1 - cell
        F2 - cell
        G1 - cell
        G2 - cell
        BORDER - cell
  )
  (:init
               (dispenser A1)
               (proc B1)
               (proc C1)
               (proc D1)
               (proc E1)
               (proc E2)
               (proc E3)
               (proc F0)
               (proc F1)
               (proc F2)
               (dispenser G1)
               (proc G2)
               (reject A1 left)
               (reject A1 right)
               (reject A1 up)
               (reject A1 down)
               (available B1)
               (available C1)
               (available D1)
               (available E1)
               (available E2)
               (available E3)
               (available F0)
               (available F1)
               (available F2)
               (reject G1 left)
               (reject G1 right)
               (reject G1 up)
               (reject G1 down)
               (available G2)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A1)
               (neighbour right A1 BORDER)

               (neighbour right BORDER A1)
               (neighbour left A1 BORDER)

               (neighbour up BORDER A1)
               (neighbour down A1 BORDER)

               (neighbour down B1 A1)
               (neighbour up A1 B1)

               (neighbour left BORDER B1)
               (neighbour right B1 BORDER)

               (neighbour right BORDER B1)
               (neighbour left B1 BORDER)

               (neighbour down C1 B1)
               (neighbour up B1 C1)

               (neighbour left BORDER C1)
               (neighbour right C1 BORDER)

               (neighbour right BORDER C1)
               (neighbour left C1 BORDER)

               (neighbour down D1 C1)
               (neighbour up C1 D1)

               (neighbour left BORDER D1)
               (neighbour right D1 BORDER)

               (neighbour right BORDER D1)
               (neighbour left D1 BORDER)

               (neighbour down E1 D1)
               (neighbour up D1 E1)

               (neighbour left BORDER E1)
               (neighbour right E1 BORDER)

               (neighbour right E2 E1)
               (neighbour left E1 E2)

               (neighbour down F1 E1)
               (neighbour up E1 F1)

               (neighbour right E3 E2)
               (neighbour left E2 E3)

               (neighbour up BORDER E2)
               (neighbour down E2 BORDER)

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

               (neighbour up BORDER F0)
               (neighbour down F0 BORDER)

               (neighbour down BORDER F0)
               (neighbour up F0 BORDER)

               (neighbour right F2 F1)
               (neighbour left F1 F2)

               (neighbour down G1 F1)
               (neighbour up F1 G1)

               (neighbour right BORDER F2)
               (neighbour left F2 BORDER)

               (neighbour down G2 F2)
               (neighbour up F2 G2)

               (neighbour left BORDER G1)
               (neighbour right G1 BORDER)

               (neighbour right G2 G1)
               (neighbour left G1 G2)

               (neighbour down BORDER G1)
               (neighbour up G1 BORDER)

               (neighbour right BORDER G2)
               (neighbour left G2 BORDER)

               (neighbour down BORDER G2)
               (neighbour up G2 BORDER)

  )
  (:goal (and 
              (busy B1)
              (busy C1)
              (busy E2)
              (busy E3)
              (busy F0)
              (busy F2)
              (busy G2)
  ))
)
