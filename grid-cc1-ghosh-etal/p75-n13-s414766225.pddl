;; ------------
;; ------------
;; ------------
;; ---bnbnbbd--
;; ---dbnbbd---
;; -----bb-----
;; -----b------
;; ------------
;; ------------
;; ------------
;; ------------
;; ------------
(define (problem N13-S414766225)
  (:domain grid)
  (:objects
        D3 - cell
        D4 - cell
        D5 - cell
        D6 - cell
        D7 - cell
        D8 - cell
        D9 - cell
        E3 - cell
        E4 - cell
        E5 - cell
        E6 - cell
        E7 - cell
        E8 - cell
        F5 - cell
        F6 - cell
        G5 - cell
        BORDER - cell
  )
  (:init
               (proc D3)
               (proc D4)
               (proc D5)
               (proc D6)
               (proc D7)
               (proc D8)
               (dispenser D9)
               (dispenser E3)
               (proc E4)
               (proc E5)
               (proc E6)
               (proc E7)
               (dispenser E8)
               (proc F5)
               (proc F6)
               (proc G5)
               (available D3)
               (available D4)
               (available D5)
               (available D6)
               (available D7)
               (available D8)
               (reject D9 left)
               (reject D9 right)
               (reject D9 up)
               (reject D9 down)
               (reject E3 left)
               (reject E3 right)
               (reject E3 up)
               (reject E3 down)
               (available E4)
               (available E5)
               (available E6)
               (available E7)
               (reject E8 left)
               (reject E8 right)
               (reject E8 up)
               (reject E8 down)
               (available F5)
               (available F6)
               (available G5)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER D3)
               (neighbour right D3 BORDER)

               (neighbour right D4 D3)
               (neighbour left D3 D4)

               (neighbour up BORDER D3)
               (neighbour down D3 BORDER)

               (neighbour down E3 D3)
               (neighbour up D3 E3)

               (neighbour right D5 D4)
               (neighbour left D4 D5)

               (neighbour up BORDER D4)
               (neighbour down D4 BORDER)

               (neighbour down E4 D4)
               (neighbour up D4 E4)

               (neighbour right D6 D5)
               (neighbour left D5 D6)

               (neighbour up BORDER D5)
               (neighbour down D5 BORDER)

               (neighbour down E5 D5)
               (neighbour up D5 E5)

               (neighbour right D7 D6)
               (neighbour left D6 D7)

               (neighbour up BORDER D6)
               (neighbour down D6 BORDER)

               (neighbour down E6 D6)
               (neighbour up D6 E6)

               (neighbour right D8 D7)
               (neighbour left D7 D8)

               (neighbour up BORDER D7)
               (neighbour down D7 BORDER)

               (neighbour down E7 D7)
               (neighbour up D7 E7)

               (neighbour right D9 D8)
               (neighbour left D8 D9)

               (neighbour up BORDER D8)
               (neighbour down D8 BORDER)

               (neighbour down E8 D8)
               (neighbour up D8 E8)

               (neighbour right BORDER D9)
               (neighbour left D9 BORDER)

               (neighbour up BORDER D9)
               (neighbour down D9 BORDER)

               (neighbour down BORDER D9)
               (neighbour up D9 BORDER)

               (neighbour left BORDER E3)
               (neighbour right E3 BORDER)

               (neighbour right E4 E3)
               (neighbour left E3 E4)

               (neighbour down BORDER E3)
               (neighbour up E3 BORDER)

               (neighbour right E5 E4)
               (neighbour left E4 E5)

               (neighbour down BORDER E4)
               (neighbour up E4 BORDER)

               (neighbour right E6 E5)
               (neighbour left E5 E6)

               (neighbour down F5 E5)
               (neighbour up E5 F5)

               (neighbour right E7 E6)
               (neighbour left E6 E7)

               (neighbour down F6 E6)
               (neighbour up E6 F6)

               (neighbour right E8 E7)
               (neighbour left E7 E8)

               (neighbour down BORDER E7)
               (neighbour up E7 BORDER)

               (neighbour right BORDER E8)
               (neighbour left E8 BORDER)

               (neighbour down BORDER E8)
               (neighbour up E8 BORDER)

               (neighbour left BORDER F5)
               (neighbour right F5 BORDER)

               (neighbour right F6 F5)
               (neighbour left F5 F6)

               (neighbour down G5 F5)
               (neighbour up F5 G5)

               (neighbour right BORDER F6)
               (neighbour left F6 BORDER)

               (neighbour down BORDER F6)
               (neighbour up F6 BORDER)

               (neighbour left BORDER G5)
               (neighbour right G5 BORDER)

               (neighbour right BORDER G5)
               (neighbour left G5 BORDER)

               (neighbour down BORDER G5)
               (neighbour up G5 BORDER)

  )
  (:goal (and 
              (busy D3)
              (busy D5)
              (busy D7)
              (busy D8)
              (busy E4)
              (busy E6)
              (busy E7)
              (busy F5)
              (busy F6)
              (busy G5)
  ))
)
