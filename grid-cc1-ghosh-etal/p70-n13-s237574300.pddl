;; -------
;; ----dbb
;; ---dnbn
;; ---bnbb
;; ---bbd-
;; ----bb-
;; -------
(define (problem N13-S237574300)
  (:domain grid)
  (:objects
        B4 - cell
        B5 - cell
        B6 - cell
        C3 - cell
        C4 - cell
        C5 - cell
        C6 - cell
        D3 - cell
        D4 - cell
        D5 - cell
        D6 - cell
        E3 - cell
        E4 - cell
        E5 - cell
        F4 - cell
        F5 - cell
        BORDER - cell
  )
  (:init
               (dispenser B4)
               (proc B5)
               (proc B6)
               (dispenser C3)
               (proc C4)
               (proc C5)
               (proc C6)
               (proc D3)
               (proc D4)
               (proc D5)
               (proc D6)
               (proc E3)
               (proc E4)
               (dispenser E5)
               (proc F4)
               (proc F5)
               (reject B4 left)
               (reject B4 right)
               (reject B4 up)
               (reject B4 down)
               (available B5)
               (available B6)
               (reject C3 left)
               (reject C3 right)
               (reject C3 up)
               (reject C3 down)
               (available C4)
               (available C5)
               (available C6)
               (available D3)
               (available D4)
               (available D5)
               (available D6)
               (available E3)
               (available E4)
               (reject E5 left)
               (reject E5 right)
               (reject E5 up)
               (reject E5 down)
               (available F4)
               (available F5)
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

               (neighbour up BORDER B6)
               (neighbour down B6 BORDER)

               (neighbour down C6 B6)
               (neighbour up B6 C6)

               (neighbour left BORDER C3)
               (neighbour right C3 BORDER)

               (neighbour right C4 C3)
               (neighbour left C3 C4)

               (neighbour up BORDER C3)
               (neighbour down C3 BORDER)

               (neighbour down D3 C3)
               (neighbour up C3 D3)

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

               (neighbour left BORDER D3)
               (neighbour right D3 BORDER)

               (neighbour right D4 D3)
               (neighbour left D3 D4)

               (neighbour down E3 D3)
               (neighbour up D3 E3)

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

               (neighbour down BORDER D6)
               (neighbour up D6 BORDER)

               (neighbour left BORDER E3)
               (neighbour right E3 BORDER)

               (neighbour right E4 E3)
               (neighbour left E3 E4)

               (neighbour down BORDER E3)
               (neighbour up E3 BORDER)

               (neighbour right E5 E4)
               (neighbour left E4 E5)

               (neighbour down F4 E4)
               (neighbour up E4 F4)

               (neighbour right BORDER E5)
               (neighbour left E5 BORDER)

               (neighbour down F5 E5)
               (neighbour up E5 F5)

               (neighbour left BORDER F4)
               (neighbour right F4 BORDER)

               (neighbour right F5 F4)
               (neighbour left F4 F5)

               (neighbour down BORDER F4)
               (neighbour up F4 BORDER)

               (neighbour right BORDER F5)
               (neighbour left F5 BORDER)

               (neighbour down BORDER F5)
               (neighbour up F5 BORDER)

  )
  (:goal (and 
              (busy B5)
              (busy B6)
              (busy C5)
              (busy D3)
              (busy D5)
              (busy D6)
              (busy E3)
              (busy E4)
              (busy F4)
              (busy F5)
  ))
)
