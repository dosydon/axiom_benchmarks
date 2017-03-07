;; dbbbnb-
;; ---nbnb
;; ----bbd
;; -------
;; -------
;; -------
;; -------
(define (problem N11-S955245180)
  (:domain grid)
  (:objects
        A0 - cell
        A1 - cell
        A2 - cell
        A3 - cell
        A4 - cell
        A5 - cell
        B3 - cell
        B4 - cell
        B5 - cell
        B6 - cell
        C4 - cell
        C5 - cell
        C6 - cell
        BORDER - cell
  )
  (:init
               (dispenser A0)
               (proc A1)
               (proc A2)
               (proc A3)
               (proc A4)
               (proc A5)
               (proc B3)
               (proc B4)
               (proc B5)
               (proc B6)
               (proc C4)
               (proc C5)
               (dispenser C6)
               (reject A0 left)
               (reject A0 right)
               (reject A0 up)
               (reject A0 down)
               (available A1)
               (available A2)
               (available A3)
               (available A4)
               (available A5)
               (available B3)
               (available B4)
               (available B5)
               (available B6)
               (available C4)
               (available C5)
               (reject C6 left)
               (reject C6 right)
               (reject C6 up)
               (reject C6 down)
               (reject BORDER left)
               (reject BORDER right)
               (reject BORDER up)
               (reject BORDER down)
               (neighbour left BORDER A0)
               (neighbour right A0 BORDER)

               (neighbour right A1 A0)
               (neighbour left A0 A1)

               (neighbour up BORDER A0)
               (neighbour down A0 BORDER)

               (neighbour down BORDER A0)
               (neighbour up A0 BORDER)

               (neighbour right A2 A1)
               (neighbour left A1 A2)

               (neighbour up BORDER A1)
               (neighbour down A1 BORDER)

               (neighbour down BORDER A1)
               (neighbour up A1 BORDER)

               (neighbour right A3 A2)
               (neighbour left A2 A3)

               (neighbour up BORDER A2)
               (neighbour down A2 BORDER)

               (neighbour down BORDER A2)
               (neighbour up A2 BORDER)

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

               (neighbour down BORDER B3)
               (neighbour up B3 BORDER)

               (neighbour right B5 B4)
               (neighbour left B4 B5)

               (neighbour down C4 B4)
               (neighbour up B4 C4)

               (neighbour right B6 B5)
               (neighbour left B5 B6)

               (neighbour down C5 B5)
               (neighbour up B5 C5)

               (neighbour right BORDER B6)
               (neighbour left B6 BORDER)

               (neighbour up BORDER B6)
               (neighbour down B6 BORDER)

               (neighbour down C6 B6)
               (neighbour up B6 C6)

               (neighbour left BORDER C4)
               (neighbour right C4 BORDER)

               (neighbour right C5 C4)
               (neighbour left C4 C5)

               (neighbour down BORDER C4)
               (neighbour up C4 BORDER)

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
              (busy A1)
              (busy A2)
              (busy A3)
              (busy A5)
              (busy B4)
              (busy B6)
              (busy C4)
              (busy C5)
  ))
)
