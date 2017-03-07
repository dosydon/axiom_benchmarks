;; ----------
;; ----d-----
;; ----bnbd--
;; ----nbnbb-
;; -bbbbnb---
;; -----bb---
;; -----bd---
;; ----------
;; ----------
;; ----------
(define (problem N17-S275358153)
  (:domain grid)
  (:objects
        B4 - cell
        C4 - cell
        C5 - cell
        C6 - cell
        C7 - cell
        D4 - cell
        D5 - cell
        D6 - cell
        D7 - cell
        D8 - cell
        E1 - cell
        E2 - cell
        E3 - cell
        E4 - cell
        E5 - cell
        E6 - cell
        F5 - cell
        F6 - cell
        G5 - cell
        G6 - cell
        BORDER - cell
  )
  (:init
               (dispenser B4)
               (proc C4)
               (proc C5)
               (proc C6)
               (dispenser C7)
               (proc D4)
               (proc D5)
               (proc D6)
               (proc D7)
               (proc D8)
               (proc E1)
               (proc E2)
               (proc E3)
               (proc E4)
               (proc E5)
               (proc E6)
               (proc F5)
               (proc F6)
               (proc G5)
               (dispenser G6)
               (reject B4 left)
               (reject B4 right)
               (reject B4 up)
               (reject B4 down)
               (available C4)
               (available C5)
               (available C6)
               (reject C7 left)
               (reject C7 right)
               (reject C7 up)
               (reject C7 down)
               (available D4)
               (available D5)
               (available D6)
               (available D7)
               (available D8)
               (available E1)
               (available E2)
               (available E3)
               (available E4)
               (available E5)
               (available E6)
               (available F5)
               (available F6)
               (available G5)
               (reject G6 left)
               (reject G6 right)
               (reject G6 up)
               (reject G6 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER B4)
               (neighbour right B4 BORDER)

               (neighbour right BORDER B4)
               (neighbour left B4 BORDER)

               (neighbour up BORDER B4)
               (neighbour down B4 BORDER)

               (neighbour down C4 B4)
               (neighbour up B4 C4)

               (neighbour left BORDER C4)
               (neighbour right C4 BORDER)

               (neighbour right C5 C4)
               (neighbour left C4 C5)

               (neighbour down D4 C4)
               (neighbour up C4 D4)

               (neighbour right C6 C5)
               (neighbour left C5 C6)

               (neighbour up BORDER C5)
               (neighbour down C5 BORDER)

               (neighbour down D5 C5)
               (neighbour up C5 D5)

               (neighbour right C7 C6)
               (neighbour left C6 C7)

               (neighbour up BORDER C6)
               (neighbour down C6 BORDER)

               (neighbour down D6 C6)
               (neighbour up C6 D6)

               (neighbour right BORDER C7)
               (neighbour left C7 BORDER)

               (neighbour up BORDER C7)
               (neighbour down C7 BORDER)

               (neighbour down D7 C7)
               (neighbour up C7 D7)

               (neighbour left BORDER D4)
               (neighbour right D4 BORDER)

               (neighbour right D5 D4)
               (neighbour left D4 D5)

               (neighbour down E4 D4)
               (neighbour up D4 E4)

               (neighbour right D6 D5)
               (neighbour left D5 D6)

               (neighbour down E5 D5)
               (neighbour up D5 E5)

               (neighbour right D7 D6)
               (neighbour left D6 D7)

               (neighbour down E6 D6)
               (neighbour up D6 E6)

               (neighbour right D8 D7)
               (neighbour left D7 D8)

               (neighbour down BORDER D7)
               (neighbour up D7 BORDER)

               (neighbour right BORDER D8)
               (neighbour left D8 BORDER)

               (neighbour up BORDER D8)
               (neighbour down D8 BORDER)

               (neighbour down BORDER D8)
               (neighbour up D8 BORDER)

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

               (neighbour up BORDER E2)
               (neighbour down E2 BORDER)

               (neighbour down BORDER E2)
               (neighbour up E2 BORDER)

               (neighbour right E4 E3)
               (neighbour left E3 E4)

               (neighbour up BORDER E3)
               (neighbour down E3 BORDER)

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

               (neighbour right BORDER E6)
               (neighbour left E6 BORDER)

               (neighbour down F6 E6)
               (neighbour up E6 F6)

               (neighbour left BORDER F5)
               (neighbour right F5 BORDER)

               (neighbour right F6 F5)
               (neighbour left F5 F6)

               (neighbour down G5 F5)
               (neighbour up F5 G5)

               (neighbour right BORDER F6)
               (neighbour left F6 BORDER)

               (neighbour down G6 F6)
               (neighbour up F6 G6)

               (neighbour left BORDER G5)
               (neighbour right G5 BORDER)

               (neighbour right G6 G5)
               (neighbour left G5 G6)

               (neighbour down BORDER G5)
               (neighbour up G5 BORDER)

               (neighbour right BORDER G6)
               (neighbour left G6 BORDER)

               (neighbour down BORDER G6)
               (neighbour up G6 BORDER)

  )
  (:goal (and 
              (busy C4)
              (busy C6)
              (busy D5)
              (busy D7)
              (busy D8)
              (busy E1)
              (busy E2)
              (busy E3)
              (busy E4)
              (busy E6)
              (busy F5)
              (busy F6)
              (busy G5)
  ))
)
