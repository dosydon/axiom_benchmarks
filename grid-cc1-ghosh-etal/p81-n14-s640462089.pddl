;; ----------
;; ----dbd---
;; -----nb---
;; ---bnbb---
;; ----bnn---
;; ----nbd---
;; ----bb----
;; ----------
;; ----------
;; ----------
(define (problem N14-S640462089)
  (:domain grid)
  (:objects
        B4 - cell
        B5 - cell
        B6 - cell
        C5 - cell
        C6 - cell
        D3 - cell
        D4 - cell
        D5 - cell
        D6 - cell
        E4 - cell
        E5 - cell
        E6 - cell
        F4 - cell
        F5 - cell
        F6 - cell
        G4 - cell
        G5 - cell
        BORDER - cell
  )
  (:init
               (dispenser B4)
               (proc B5)
               (dispenser B6)
               (proc C5)
               (proc C6)
               (proc D3)
               (proc D4)
               (proc D5)
               (proc D6)
               (proc E4)
               (proc E5)
               (proc E6)
               (proc F4)
               (proc F5)
               (dispenser F6)
               (proc G4)
               (proc G5)
               (reject B4 left)
               (reject B4 right)
               (reject B4 up)
               (reject B4 down)
               (available B5)
               (reject B6 left)
               (reject B6 right)
               (reject B6 up)
               (reject B6 down)
               (available C5)
               (available C6)
               (available D3)
               (available D4)
               (available D5)
               (available D6)
               (available E4)
               (available E5)
               (available E6)
               (available F4)
               (available F5)
               (reject F6 left)
               (reject F6 right)
               (reject F6 up)
               (reject F6 down)
               (available G4)
               (available G5)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER B4)
               (neighbour right B4 BORDER)

               (neighbour right B5 B4)
               (neighbour left B4 B5)

               (neighbour up BORDER B4)
               (neighbour down B4 BORDER)

               (neighbour down BORDER B4)
               (neighbour up B4 BORDER)

               (neighbour right B6 B5)
               (neighbour left B5 B6)

               (neighbour up BORDER B5)
               (neighbour down B5 BORDER)

               (neighbour down C5 B5)
               (neighbour up B5 C5)

               (neighbour right BORDER B6)
               (neighbour left B6 BORDER)

               (neighbour up BORDER B6)
               (neighbour down B6 BORDER)

               (neighbour down C6 B6)
               (neighbour up B6 C6)

               (neighbour left BORDER C5)
               (neighbour right C5 BORDER)

               (neighbour right C6 C5)
               (neighbour left C5 C6)

               (neighbour down D5 C5)
               (neighbour up C5 D5)

               (neighbour right BORDER C6)
               (neighbour left C6 BORDER)

               (neighbour down D6 C6)
               (neighbour up C6 D6)

               (neighbour left BORDER D3)
               (neighbour right D3 BORDER)

               (neighbour right D4 D3)
               (neighbour left D3 D4)

               (neighbour up BORDER D3)
               (neighbour down D3 BORDER)

               (neighbour down BORDER D3)
               (neighbour up D3 BORDER)

               (neighbour right D5 D4)
               (neighbour left D4 D5)

               (neighbour up BORDER D4)
               (neighbour down D4 BORDER)

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

               (neighbour down F4 E4)
               (neighbour up E4 F4)

               (neighbour right E6 E5)
               (neighbour left E5 E6)

               (neighbour down F5 E5)
               (neighbour up E5 F5)

               (neighbour right BORDER E6)
               (neighbour left E6 BORDER)

               (neighbour down F6 E6)
               (neighbour up E6 F6)

               (neighbour left BORDER F4)
               (neighbour right F4 BORDER)

               (neighbour right F5 F4)
               (neighbour left F4 F5)

               (neighbour down G4 F4)
               (neighbour up F4 G4)

               (neighbour right F6 F5)
               (neighbour left F5 F6)

               (neighbour down G5 F5)
               (neighbour up F5 G5)

               (neighbour right BORDER F6)
               (neighbour left F6 BORDER)

               (neighbour down BORDER F6)
               (neighbour up F6 BORDER)

               (neighbour left BORDER G4)
               (neighbour right G4 BORDER)

               (neighbour right G5 G4)
               (neighbour left G4 G5)

               (neighbour down BORDER G4)
               (neighbour up G4 BORDER)

               (neighbour right BORDER G5)
               (neighbour left G5 BORDER)

               (neighbour down BORDER G5)
               (neighbour up G5 BORDER)

  )
  (:goal (and 
              (busy B5)
              (busy C6)
              (busy D3)
              (busy D5)
              (busy D6)
              (busy E4)
              (busy F5)
              (busy G4)
              (busy G5)
  ))
)
