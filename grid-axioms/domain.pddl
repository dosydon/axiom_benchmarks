(define (domain grid)
(:requirements :strips :derived-predicates)
(:predicates (conn ?x ?y)
             (key-shape ?k ?s)
             (lock-shape ?x ?s)
             (at ?r ?x )
	     (at-robot ?x)
             (place ?p)
             (key ?k)
             (shape ?s)
             (locked ?x)
             (holding ?k)
             (open ?x)
             (arm-empty )
	     (reachable ?x)
)

(:derived (reachable ?to)
	(and (place ?to) 
		(at-robot ?to)))

(:derived (reachable ?to)
	(and 
		(place ?to)
		(open ?to)
		(exists (?from)
			(and
				(place ?from) 
				(reachable ?from) 
				(conn ?from ?to) ))))

(:action unlock
:parameters (?curpos ?lockpos ?key ?shape)
:precondition (and (place ?curpos) (place ?lockpos) (key ?key) (shape ?shape)
          (conn ?curpos ?lockpos) (key-shape ?key ?shape)
                   (lock-shape ?lockpos ?shape) (reachable ?curpos)
                   (locked ?lockpos) (holding ?key))
:effect (and  (open ?lockpos) (at-robot ?curpos) (not (locked ?lockpos))))

(:action pickup
:parameters (?curpos ?key)
:precondition (and (place ?curpos) (key ?key) 
                  (reachable ?curpos) (at ?key ?curpos) (arm-empty ))
:effect (and (holding ?key) (at-robot ?curpos)
   (not (at ?key ?curpos)) (not (arm-empty ))))


(:action pickup-and-loose
:parameters (?curpos ?newkey ?oldkey)
:precondition (and (place ?curpos) (key ?newkey) (key ?oldkey)
                  (reachable ?curpos) (holding ?oldkey) (at ?newkey ?curpos))
:effect (and (holding ?newkey) (at ?oldkey ?curpos) (at-robot ?curpos)
        (not (holding ?oldkey)) (not (at ?newkey ?curpos))))

(:action putdown
:parameters (?curpos ?key)
:precondition (and (place ?curpos) (key ?key) 
                  (reachable ?curpos) (holding ?key))
:effect (and (arm-empty ) (at-robot ?curpos) (at ?key ?curpos) (not (holding ?key)))))
