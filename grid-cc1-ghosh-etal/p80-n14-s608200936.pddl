;; -------------
;; --------b----
;; -----bnnb----
;; ---dnnnnb----
;; ------bb-----
;; -----dbb-----
;; ------d------
;; -------------
;; -------------
;; -------------
;; -------------
;; -------------
;; -------------
(define (problem N14-S608200936)
  (:domain grid)
  (:objects
        B8 - cell
        C5 - cell
        C6 - cell
        C7 - cell
        C8 - cell
        D3 - cell
        D4 - cell
        D5 - cell
        D6 - cell
        D7 - cell
        D8 - cell
        E6 - cell
        E7 - cell
        F5 - cell
        F6 - cell
        F7 - cell
        G6 - cell
        BORDER - cell
  )
  (:init
               (proc B8)
               (proc C5)
               (proc C6)
               (proc C7)
               (proc C8)
               (dispenser D3)
               (proc D4)
               (proc D5)
               (proc D6)
               (proc D7)
               (proc D8)
               (proc E6)
               (proc E7)
               (dispenser F5)
               (proc F6)
               (proc F7)
               (dispenser G6)
               (available B8)
               (available C5)
               (available C6)
               (available C7)
               (available C8)
               (reject D3 left)
               (reject D3 right)
               (reject D3 up)
               (reject D3 down)
               (available D4)
               (available D5)
               (available D6)
               (available D7)
               (available D8)
               (available E6)
               (available E7)
               (reject F5 left)
               (reject F5 right)
               (reject F5 up)
               (reject F5 down)
               (available F6)
               (available F7)
               (reject G6 left)
               (reject G6 right)
               (reject G6 up)
               (reject G6 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER B8)
               (neighbour right B8 BORDER)

               (neighbour right BORDER B8)
               (neighbour left B8 BORDER)

               (neighbour up BORDER B8)
               (neighbour down B8 BORDER)

               (neighbour down C8 B8)
               (neighbour up B8 C8)

               (neighbour left BORDER C5)
               (neighbour right C5 BORDER)

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

               (neighbour right C8 C7)
               (neighbour left C7 C8)

               (neighbour up BORDER C7)
               (neighbour down C7 BORDER)

               (neighbour down D7 C7)
               (neighbour up C7 D7)

               (neighbour right BORDER C8)
               (neighbour left C8 BORDER)

               (neighbour down D8 C8)
               (neighbour up C8 D8)

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

               (neighbour down BORDER D4)
               (neighbour up D4 BORDER)

               (neighbour right D6 D5)
               (neighbour left D5 D6)

               (neighbour down BORDER D5)
               (neighbour up D5 BORDER)

               (neighbour right D7 D6)
               (neighbour left D6 D7)

               (neighbour down E6 D6)
               (neighbour up D6 E6)

               (neighbour right D8 D7)
               (neighbour left D7 D8)

               (neighbour down E7 D7)
               (neighbour up D7 E7)

               (neighbour right BORDER D8)
               (neighbour left D8 BORDER)

               (neighbour down BORDER D8)
               (neighbour up D8 BORDER)

               (neighbour left BORDER E6)
               (neighbour right E6 BORDER)

               (neighbour right E7 E6)
               (neighbour left E6 E7)

               (neighbour down F6 E6)
               (neighbour up E6 F6)

               (neighbour right BORDER E7)
               (neighbour left E7 BORDER)

               (neighbour down F7 E7)
               (neighbour up E7 F7)

               (neighbour left BORDER F5)
               (neighbour right F5 BORDER)

               (neighbour right F6 F5)
               (neighbour left F5 F6)

               (neighbour up BORDER F5)
               (neighbour down F5 BORDER)

               (neighbour down BORDER F5)
               (neighbour up F5 BORDER)

               (neighbour right F7 F6)
               (neighbour left F6 F7)

               (neighbour down G6 F6)
               (neighbour up F6 G6)

               (neighbour right BORDER F7)
               (neighbour left F7 BORDER)

               (neighbour down BORDER F7)
               (neighbour up F7 BORDER)

               (neighbour left BORDER G6)
               (neighbour right G6 BORDER)

               (neighbour right BORDER G6)
               (neighbour left G6 BORDER)

               (neighbour down BORDER G6)
               (neighbour up G6 BORDER)

  )
  (:goal (and 
              (busy B8)
              (busy C5)
              (busy C8)
              (busy D8)
              (busy E6)
              (busy E7)
              (busy F6)
              (busy F7)
  ))
)
