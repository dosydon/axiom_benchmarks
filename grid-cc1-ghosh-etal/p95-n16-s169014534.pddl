;; ----b-b
;; ----ndn
;; ---nnnb
;; ----bbn
;; ----bnb
;; -----db
;; -----db
(define (problem N16-S169014534)
  (:domain grid)
  (:objects
        A4 - cell
        A6 - cell
        B4 - cell
        B5 - cell
        B6 - cell
        C3 - cell
        C4 - cell
        C5 - cell
        C6 - cell
        D4 - cell
        D5 - cell
        D6 - cell
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
               (proc A4)
               (proc A6)
               (proc B4)
               (dispenser B5)
               (proc B6)
               (proc C3)
               (proc C4)
               (proc C5)
               (proc C6)
               (proc D4)
               (proc D5)
               (proc D6)
               (proc E4)
               (proc E5)
               (proc E6)
               (dispenser F5)
               (proc F6)
               (dispenser G5)
               (proc G6)
               (available A4)
               (available A6)
               (available B4)
               (reject B5 left)
               (reject B5 right)
               (reject B5 up)
               (reject B5 down)
               (available B6)
               (available C3)
               (available C4)
               (available C5)
               (available C6)
               (available D4)
               (available D5)
               (available D6)
               (available E4)
               (available E5)
               (available E6)
               (reject F5 left)
               (reject F5 right)
               (reject F5 up)
               (reject F5 down)
               (available F6)
               (reject G5 left)
               (reject G5 right)
               (reject G5 up)
               (reject G5 down)
               (available G6)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A4)
               (neighbour right A4 BORDER)

               (neighbour right BORDER A4)
               (neighbour left A4 BORDER)

               (neighbour up BORDER A4)
               (neighbour down A4 BORDER)

               (neighbour down B4 A4)
               (neighbour up A4 B4)

               (neighbour left BORDER A6)
               (neighbour right A6 BORDER)

               (neighbour right BORDER A6)
               (neighbour left A6 BORDER)

               (neighbour up BORDER A6)
               (neighbour down A6 BORDER)

               (neighbour down B6 A6)
               (neighbour up A6 B6)

               (neighbour left BORDER B4)
               (neighbour right B4 BORDER)

               (neighbour right B5 B4)
               (neighbour left B4 B5)

               (neighbour down C4 B4)
               (neighbour up B4 C4)

               (neighbour right B6 B5)
               (neighbour left B5 B6)

               (neighbour up BORDER B5)
               (neighbour down B5 BORDER)

               (neighbour down C5 B5)
               (neighbour up B5 C5)

               (neighbour right BORDER B6)
               (neighbour left B6 BORDER)

               (neighbour down C6 B6)
               (neighbour up B6 C6)

               (neighbour left BORDER C3)
               (neighbour right C3 BORDER)

               (neighbour right C4 C3)
               (neighbour left C3 C4)

               (neighbour up BORDER C3)
               (neighbour down C3 BORDER)

               (neighbour down BORDER C3)
               (neighbour up C3 BORDER)

               (neighbour right C5 C4)
               (neighbour left C4 C5)

               (neighbour down D4 C4)
               (neighbour up C4 D4)

               (neighbour right C6 C5)
               (neighbour left C5 C6)

               (neighbour down D5 C5)
               (neighbour up C5 D5)

               (neighbour right BORDER C6)
               (neighbour left C6 BORDER)

               (neighbour down D6 C6)
               (neighbour up C6 D6)

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

               (neighbour right BORDER D6)
               (neighbour left D6 BORDER)

               (neighbour down E6 D6)
               (neighbour up D6 E6)

               (neighbour left BORDER E4)
               (neighbour right E4 BORDER)

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
              (busy A4)
              (busy A6)
              (busy C6)
              (busy D4)
              (busy D5)
              (busy E4)
              (busy E6)
              (busy F6)
              (busy G6)
  ))
)
