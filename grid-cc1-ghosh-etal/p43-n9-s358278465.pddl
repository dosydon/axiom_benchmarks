;; -bbnbb
;; -dbbnb
;; ---d--
;; ------
;; ------
;; ------
(define (problem N9-S358278465)
  (:domain grid)
  (:objects
        A1 - cell
        A2 - cell
        A3 - cell
        A4 - cell
        A5 - cell
        B1 - cell
        B2 - cell
        B3 - cell
        B4 - cell
        B5 - cell
        C3 - cell
        BORDER - cell
  )
  (:init
               (proc A1)
               (proc A2)
               (proc A3)
               (proc A4)
               (proc A5)
               (dispenser B1)
               (proc B2)
               (proc B3)
               (proc B4)
               (proc B5)
               (dispenser C3)
               (available A1)
               (available A2)
               (available A3)
               (available A4)
               (available A5)
               (reject B1 left)
               (reject B1 right)
               (reject B1 up)
               (reject B1 down)
               (available B2)
               (available B3)
               (available B4)
               (available B5)
               (reject C3 left)
               (reject C3 right)
               (reject C3 up)
               (reject C3 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A1)
               (neighbour right A1 BORDER)

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

               (neighbour left BORDER B1)
               (neighbour right B1 BORDER)

               (neighbour right B2 B1)
               (neighbour left B1 B2)

               (neighbour down BORDER B1)
               (neighbour up B1 BORDER)

               (neighbour right B3 B2)
               (neighbour left B2 B3)

               (neighbour down BORDER B2)
               (neighbour up B2 BORDER)

               (neighbour right B4 B3)
               (neighbour left B3 B4)

               (neighbour down C3 B3)
               (neighbour up B3 C3)

               (neighbour right B5 B4)
               (neighbour left B4 B5)

               (neighbour down BORDER B4)
               (neighbour up B4 BORDER)

               (neighbour right BORDER B5)
               (neighbour left B5 BORDER)

               (neighbour down BORDER B5)
               (neighbour up B5 BORDER)

               (neighbour left BORDER C3)
               (neighbour right C3 BORDER)

               (neighbour right BORDER C3)
               (neighbour left C3 BORDER)

               (neighbour down BORDER C3)
               (neighbour up C3 BORDER)

  )
  (:goal (and 
              (busy A1)
              (busy A2)
              (busy A4)
              (busy A5)
              (busy B2)
              (busy B3)
              (busy B5)
  ))
)
