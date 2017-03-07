;; ---bnb
;; ---bnb
;; ---dbn
;; ---dnb
;; ---bbb
;; ---d--
(define (problem N13-S374607704)
  (:domain grid)
  (:objects
        A3 - cell
        A4 - cell
        A5 - cell
        B3 - cell
        B4 - cell
        B5 - cell
        C3 - cell
        C4 - cell
        C5 - cell
        D3 - cell
        D4 - cell
        D5 - cell
        E3 - cell
        E4 - cell
        E5 - cell
        F3 - cell
        BORDER - cell
  )
  (:init
               (proc A3)
               (proc A4)
               (proc A5)
               (proc B3)
               (proc B4)
               (proc B5)
               (dispenser C3)
               (proc C4)
               (proc C5)
               (dispenser D3)
               (proc D4)
               (proc D5)
               (proc E3)
               (proc E4)
               (proc E5)
               (dispenser F3)
               (available A3)
               (available A4)
               (available A5)
               (available B3)
               (available B4)
               (available B5)
               (reject C3 left)
               (reject C3 right)
               (reject C3 up)
               (reject C3 down)
               (available C4)
               (available C5)
               (reject D3 left)
               (reject D3 right)
               (reject D3 up)
               (reject D3 down)
               (available D4)
               (available D5)
               (available E3)
               (available E4)
               (available E5)
               (reject F3 left)
               (reject F3 right)
               (reject F3 up)
               (reject F3 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A3)
               (neighbour right A3 BORDER)

               (neighbour right A4 A3)
               (neighbour left A3 A4)

               (neighbour up BORDER A3)
               (neighbour down A3 BORDER)

               (neighbour down B3 A3)
               (neighbour up A3 B3)

               (neighbour right A5 A4)
               (neighbour left A4 A5)

               (neighbour up BORDER A4)
               (neighbour down A4 BORDER)

               (neighbour down B4 A4)
               (neighbour up A4 B4)

               (neighbour right BORDER A5)
               (neighbour left A5 BORDER)

               (neighbour up BORDER A5)
               (neighbour down A5 BORDER)

               (neighbour down B5 A5)
               (neighbour up A5 B5)

               (neighbour left BORDER B3)
               (neighbour right B3 BORDER)

               (neighbour right B4 B3)
               (neighbour left B3 B4)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour right B5 B4)
               (neighbour left B4 B5)

               (neighbour down C4 B4)
               (neighbour up B4 C4)

               (neighbour right BORDER B5)
               (neighbour left B5 BORDER)

               (neighbour down C5 B5)
               (neighbour up B5 C5)

               (neighbour left BORDER C3)
               (neighbour right C3 BORDER)

               (neighbour right C4 C3)
               (neighbour left C3 C4)

               (neighbour down D3 C3)
               (neighbour up C3 D3)

               (neighbour right C5 C4)
               (neighbour left C4 C5)

               (neighbour down D4 C4)
               (neighbour up C4 D4)

               (neighbour right BORDER C5)
               (neighbour left C5 BORDER)

               (neighbour down D5 C5)
               (neighbour up C5 D5)

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

               (neighbour right BORDER D5)
               (neighbour left D5 BORDER)

               (neighbour down E5 D5)
               (neighbour up D5 E5)

               (neighbour left BORDER E3)
               (neighbour right E3 BORDER)

               (neighbour right E4 E3)
               (neighbour left E3 E4)

               (neighbour down F3 E3)
               (neighbour up E3 F3)

               (neighbour right E5 E4)
               (neighbour left E4 E5)

               (neighbour down BORDER E4)
               (neighbour up E4 BORDER)

               (neighbour right BORDER E5)
               (neighbour left E5 BORDER)

               (neighbour down BORDER E5)
               (neighbour up E5 BORDER)

               (neighbour left BORDER F3)
               (neighbour right F3 BORDER)

               (neighbour right BORDER F3)
               (neighbour left F3 BORDER)

               (neighbour down BORDER F3)
               (neighbour up F3 BORDER)

  )
  (:goal (and 
              (busy A3)
              (busy A5)
              (busy B3)
              (busy B5)
              (busy C4)
              (busy D5)
              (busy E3)
              (busy E4)
              (busy E5)
  ))
)
