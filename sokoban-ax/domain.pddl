
(define (domain sokoban-sequential)
  (:requirements :typing :derived-predicates)
  (:types thing location direction - object
          player stone - thing)

  (:predicates
   (clear ?l - location)
   (blocked ?l - location)
   (at ?t - thing ?l - location)
   (at-goal ?s - stone)
   (IS-GOAL ?l - location)
   (IS-NONGOAL ?l - location)
   (MOVE-DIR ?from ?to - location ?dir - direction)
   (can-reach ?p - player ?l - location)
   )

  (:functions (total-cost))

  ;; axiom for at-goal
  (:derived (at-goal ?s - stone)
	    (exists (?l - location) (and (is-goal ?l) (at ?s ?l))))

  ;; axiom for clear. note that only stones count as obstacles,
  ;; the player does not; he will always move so that he is not
  ;; in the way of the square he's pushing into.
  (:derived (blocked ?l - location)
	    (exists (?s - stone) (at ?s ?l)))
  (:derived (clear ?l - location) (not (blocked ?l)))
  ;; (:derived (clear ?l - location)
  ;; 	    (forall (?s - stone) (not (at ?s ?l))))

  ;; axioms for can-reach
  (:derived (can-reach ?p - player ?l - location)
	    (at ?p ?l))

  (:derived (can-reach ?p - player ?l - location)
	    (and (clear ?l)
		 (exists (?d - direction ?m - location)
			 (and (MOVE-DIR ?m ?l ?d)
			      (can-reach ?p ?m)))))


  (:action push
   :parameters (?p - player ?s - stone
		?pp1 ?ppos ?from ?to - location
                ?dir - direction)
   :precondition (and (at ?p ?pp1)
		      (can-reach ?p ?ppos)
                      (at ?s ?from)
                      (clear ?to)
                      (MOVE-DIR ?ppos ?from ?dir)
                      (MOVE-DIR ?from ?to ?dir)
                      )
   :effect (and (not (at ?p ?pp1))
		(not (at ?s ?from))
		(at ?p ?from)
		(at ?s ?to)
		(increase (total-cost) 1)
		)
   )

  )
