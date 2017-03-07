;; bnbb------
;; bnbn------
;; bnbb------
;; n---------
;; bd--------
;; nb--------
;; bd--------
;; d---------
;; ----------
;; ----------
(define (problem N17-S323179942)
  (:domain grid)
  (:objects
        A0 - cell
        A1 - cell
        A2 - cell
        A3 - cell
        B0 - cell
        B1 - cell
        B2 - cell
        B3 - cell
        C0 - cell
        C1 - cell
        C2 - cell
        C3 - cell
        D0 - cell
        E0 - cell
        E1 - cell
        F0 - cell
        F1 - cell
        G0 - cell
        G1 - cell
        H0 - cell
        BORDER - cell
  )
  (:init
               (proc A0)
               (proc A1)
               (proc A2)
               (proc A3)
               (proc B0)
               (proc B1)
               (proc B2)
               (proc B3)
               (proc C0)
               (proc C1)
               (proc C2)
               (proc C3)
               (proc D0)
               (proc E0)
               (dispenser E1)
               (proc F0)
               (proc F1)
               (proc G0)
               (dispenser G1)
               (dispenser H0)
               (available A0)
               (available A1)
               (available A2)
               (available A3)
               (available B0)
               (available B1)
               (available B2)
               (available B3)
               (available C0)
               (available C1)
               (available C2)
               (available C3)
               (available D0)
               (available E0)
               (reject E1 left)
               (reject E1 right)
               (reject E1 up)
               (reject E1 down)
               (available F0)
               (available F1)
               (available G0)
               (reject G1 left)
               (reject G1 right)
               (reject G1 up)
               (reject G1 down)
               (reject H0 left)
               (reject H0 right)
               (reject H0 up)
               (reject H0 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A0)
               (neighbour right A0 BORDER)

               (neighbour right A1 A0)
               (neighbour left A0 A1)

               (neighbour up BORDER A0)
               (neighbour down A0 BORDER)

               (neighbour down B0 A0)
               (neighbour up A0 B0)

               (neighbour right A2 A1)
               (neighbour left A1 A2)

               (neighbour up BORDER A1)
               (neighbour down A1 BORDER)

               (neighbour down B1 A1)
               (neighbour up A1 B1)

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

               (neighbour left BORDER B0)
               (neighbour right B0 BORDER)

               (neighbour right B1 B0)
               (neighbour left B0 B1)

               (neighbour down C0 B0)
               (neighbour up B0 C0)

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

               (neighbour down BORDER C1)
               (neighbour up C1 BORDER)

               (neighbour right C3 C2)
               (neighbour left C2 C3)

               (neighbour down BORDER C2)
               (neighbour up C2 BORDER)

               (neighbour right BORDER C3)
               (neighbour left C3 BORDER)

               (neighbour down BORDER C3)
               (neighbour up C3 BORDER)

               (neighbour left BORDER D0)
               (neighbour right D0 BORDER)

               (neighbour right BORDER D0)
               (neighbour left D0 BORDER)

               (neighbour down E0 D0)
               (neighbour up D0 E0)

               (neighbour left BORDER E0)
               (neighbour right E0 BORDER)

               (neighbour right E1 E0)
               (neighbour left E0 E1)

               (neighbour down F0 E0)
               (neighbour up E0 F0)

               (neighbour right BORDER E1)
               (neighbour left E1 BORDER)

               (neighbour up BORDER E1)
               (neighbour down E1 BORDER)

               (neighbour down F1 E1)
               (neighbour up E1 F1)

               (neighbour left BORDER F0)
               (neighbour right F0 BORDER)

               (neighbour right F1 F0)
               (neighbour left F0 F1)

               (neighbour down G0 F0)
               (neighbour up F0 G0)

               (neighbour right BORDER F1)
               (neighbour left F1 BORDER)

               (neighbour down G1 F1)
               (neighbour up F1 G1)

               (neighbour left BORDER G0)
               (neighbour right G0 BORDER)

               (neighbour right G1 G0)
               (neighbour left G0 G1)

               (neighbour down H0 G0)
               (neighbour up G0 H0)

               (neighbour right BORDER G1)
               (neighbour left G1 BORDER)

               (neighbour down BORDER G1)
               (neighbour up G1 BORDER)

               (neighbour left BORDER H0)
               (neighbour right H0 BORDER)

               (neighbour right BORDER H0)
               (neighbour left H0 BORDER)

               (neighbour down BORDER H0)
               (neighbour up H0 BORDER)

  )
  (:goal (and 
              (busy A0)
              (busy A2)
              (busy A3)
              (busy B0)
              (busy B2)
              (busy C0)
              (busy C2)
              (busy C3)
              (busy E0)
              (busy F1)
              (busy G0)
  ))
)
