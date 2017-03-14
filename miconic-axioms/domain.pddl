(define (domain miconic)
  (:requirements :strips :derived-predicates)
  

(:predicates 
(origin ?person ?floor )
;; entry of ?person is ?floor
;; inertia

(floor ?floor)
(passenger ?passenger)

(destin ?person ?floor )
;; exit of ?person is ?floor
;; inertia

(above ?floor1 ?floor2 )
;; ?floor2 is located above of ?floor1

(boarded ?person )
;; true if ?person has boarded the lift

(served ?person )
;; true if ?person has alighted as her destination

(lift-at ?floor )
;; current position of the lift is at ?floor

(reachable ?floor)
)


;;stop and allow boarding

(:derived (reachable ?floor)
	(and (floor ?floor) 
		(lift-at ?floor)))

(:derived (reachable ?to)
	(and 
		(floor ?to)
		(exists (?from)
			(and
				(floor ?from) 
				(reachable ?from) 
				(or (above ?from ?to) 
				    (above ?to ?from))))))

(:action board
  :parameters (?f ?p)
  :precondition (and (floor ?f) (passenger ?p) (reachable ?f) (origin ?p ?f))
  :effect (and (boarded ?p) (lift-at ?f)))

(:action depart
  :parameters (?f  ?p)
  :precondition (and (floor ?f) (passenger ?p) (reachable ?f) (destin ?p ?f)
		     (boarded ?p))
  :effect (and (not (boarded ?p))
	       (served ?p)
		(lift-at ?f)))
)
