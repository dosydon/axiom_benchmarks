;; ---bbnbd
;; ---dnbn-
;; -----bb-
;; --------
;; --------
;; --------
;; --------
;; --------
(define (problem N9-S394019107)
  (:domain grid)
  (:objects
        A3 - cell
        A4 - cell
        A5 - cell
        A6 - cell
        A7 - cell
        B3 - cell
        B4 - cell
        B5 - cell
        B6 - cell
        C5 - cell
        C6 - cell
        BORDER - cell
  )
  (:init
               (proc A3)
               (proc A4)
               (proc A5)
               (proc A6)
               (dispenser A7)
               (dispenser B3)
               (proc B4)
               (proc B5)
               (proc B6)
               (proc C5)
               (proc C6)
               (available A3)
               (available A4)
               (available A5)
               (available A6)
               (reject A7 left)
               (reject A7 right)
               (reject A7 up)
               (reject A7 down)
               (reject B3 left)
               (reject B3 right)
               (reject B3 up)
               (reject B3 down)
               (available B4)
               (available B5)
               (available B6)
               (available C5)
               (available C6)
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

               (neighbour right A6 A5)
               (neighbour left A5 A6)

               (neighbour up BORDER A5)
               (neighbour down A5 BORDER)

               (neighbour down B5 A5)
               (neighbour up A5 B5)

               (neighbour right A7 A6)
               (neighbour left A6 A7)

               (neighbour up BORDER A6)
               (neighbour down A6 BORDER)

               (neighbour down B6 A6)
               (neighbour up A6 B6)

               (neighbour right BORDER A7)
               (neighbour left A7 BORDER)

               (neighbour up BORDER A7)
               (neighbour down A7 BORDER)

               (neighbour down BORDER A7)
               (neighbour up A7 BORDER)

               (neighbour left BORDER B3)
               (neighbour right B3 BORDER)

               (neighbour right B4 B3)
               (neighbour left B3 B4)

               (neighbour down BORDER B3)
               (neighbour up B3 BORDER)

               (neighbour right B5 B4)
               (neighbour left B4 B5)

               (neighbour down BORDER B4)
               (neighbour up B4 BORDER)

               (neighbour right B6 B5)
               (neighbour left B5 B6)

               (neighbour down C5 B5)
               (neighbour up B5 C5)

               (neighbour right BORDER B6)
               (neighbour left B6 BORDER)

               (neighbour down C6 B6)
               (neighbour up B6 C6)

               (neighbour left BORDER C5)
               (neighbour right C5 BORDER)

               (neighbour right C6 C5)
               (neighbour left C5 C6)

               (neighbour down BORDER C5)
               (neighbour up C5 BORDER)

               (neighbour right BORDER C6)
               (neighbour left C6 BORDER)

               (neighbour down BORDER C6)
               (neighbour up C6 BORDER)

  )
  (:goal (and 
              (busy A3)
              (busy A4)
              (busy A6)
              (busy B5)
              (busy C5)
              (busy C6)
  ))
)
