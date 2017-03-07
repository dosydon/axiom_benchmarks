;; --dbbn-
;; --dnbn-
;; --dnbbb
;; ---bn--
;; ----b--
;; -------
;; -------
(define (problem N13-S274758566)
  (:domain grid)
  (:objects
        A2 - cell
        A3 - cell
        A4 - cell
        A5 - cell
        B2 - cell
        B3 - cell
        B4 - cell
        B5 - cell
        C2 - cell
        C3 - cell
        C4 - cell
        C5 - cell
        C6 - cell
        D3 - cell
        D4 - cell
        E4 - cell
        BORDER - cell
  )
  (:init
               (dispenser A2)
               (proc A3)
               (proc A4)
               (proc A5)
               (dispenser B2)
               (proc B3)
               (proc B4)
               (proc B5)
               (dispenser C2)
               (proc C3)
               (proc C4)
               (proc C5)
               (proc C6)
               (proc D3)
               (proc D4)
               (proc E4)
               (reject A2 left)
               (reject A2 right)
               (reject A2 up)
               (reject A2 down)
               (available A3)
               (available A4)
               (available A5)
               (reject B2 left)
               (reject B2 right)
               (reject B2 up)
               (reject B2 down)
               (available B3)
               (available B4)
               (available B5)
               (reject C2 left)
               (reject C2 right)
               (reject C2 up)
               (reject C2 down)
               (available C3)
               (available C4)
               (available C5)
               (available C6)
               (available D3)
               (available D4)
               (available E4)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A2)
               (neighbour right A2 BORDER)

               (neighbour right A3 A2)
               (neighbour left A2 A3)

               (neighbour up BORDER A2)
               (neighbour down A2 BORDER)

               (neighbour down B2 A2)
               (neighbour up A2 B2)

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

               (neighbour left BORDER B2)
               (neighbour right B2 BORDER)

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour down C2 B2)
               (neighbour up B2 C2)

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

               (neighbour left BORDER C2)
               (neighbour right C2 BORDER)

               (neighbour right C3 C2)
               (neighbour left C2 C3)

               (neighbour down BORDER C2)
               (neighbour up C2 BORDER)

               (neighbour right C4 C3)
               (neighbour left C3 C4)

               (neighbour down D3 C3)
               (neighbour up C3 D3)

               (neighbour right C5 C4)
               (neighbour left C4 C5)

               (neighbour down D4 C4)
               (neighbour up C4 D4)

               (neighbour right C6 C5)
               (neighbour left C5 C6)

               (neighbour down BORDER C5)
               (neighbour up C5 BORDER)

               (neighbour right BORDER C6)
               (neighbour left C6 BORDER)

               (neighbour up BORDER C6)
               (neighbour down C6 BORDER)

               (neighbour down BORDER C6)
               (neighbour up C6 BORDER)

               (neighbour left BORDER D3)
               (neighbour right D3 BORDER)

               (neighbour right D4 D3)
               (neighbour left D3 D4)

               (neighbour down BORDER D3)
               (neighbour up D3 BORDER)

               (neighbour right BORDER D4)
               (neighbour left D4 BORDER)

               (neighbour down E4 D4)
               (neighbour up D4 E4)

               (neighbour left BORDER E4)
               (neighbour right E4 BORDER)

               (neighbour right BORDER E4)
               (neighbour left E4 BORDER)

               (neighbour down BORDER E4)
               (neighbour up E4 BORDER)

  )
  (:goal (and 
              (busy A3)
              (busy A4)
              (busy B4)
              (busy C4)
              (busy C5)
              (busy C6)
              (busy D3)
              (busy E4)
  ))
)
