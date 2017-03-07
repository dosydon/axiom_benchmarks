(define (domain PLAINACC)
  (:requirements :strips)
  (:predicates (t1-EQUALS-t2)
               (t1-LESSTHAN-t2)
               (t1-EQUALS-tmin1)
               (t1-LESSTHAN-tmin1)
               (t1-EQUALS-tmin2)
               (t1-LESSTHAN-tmin2)
               (t2-EQUALS-tmin1)
               (t2-LESSTHAN-tmin1)
               (t2-EQUALS-tmin2)
               (t2-LESSTHAN-tmin2)
               (tmin1-EQUALS-tmin2)
               (tmin1-LESSTHAN-tmin2)
               (v1-EQUALS-v2)
               (v1-LESSTHAN-v2)
               (v1-EQUALS-vego)
               (v1-LESSTHAN-vego)
               (v1-EQUALS-vref)
               (v1-LESSTHAN-vref)
               (v2-EQUALS-vego)
               (v2-LESSTHAN-vego)
               (v2-EQUALS-vref)
               (v2-LESSTHAN-vref)
               (vego-EQUALS-vref)
               (vego-LESSTHAN-vref)
               (d1-EQUALS-d2)
               (d1-LESSTHAN-d2)
               (ArefPlus)
               (ArefMinus)
               (ArefZero)
               (AccSpeedMode)
               (AccTimeGapMode)
               (AccEngage)
               (AccEnable)
               (AccSlowDownWarn)
               (IsTargetVehicle-t1)
               (Obstacle-t1)
               (InConsiderationZone-t1)
               (IsTargetVehicle-t2)
               (Obstacle-t2)
               (InConsiderationZone-t2)
               
   )

   (:action stepup-v1-from-v1-E-v2-E-vego-E-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepdown-v1-from-v1-E-v2-E-vego-E-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepup-v1-from-v1-E-v2-E-vego-L-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepdown-v1-from-v1-E-v2-E-vego-L-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-vref-from-v1-E-v2-E-vego-L-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (vego-EQUALS-vref)
                              (v2-EQUALS-vref)
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-v1-E-v2-L-vego-E-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepup-vego-from-v1-E-v2-L-vego-E-vref
                :precondition ( and
                              (ArefPlus)
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepdown-v1-from-v1-E-v2-L-vego-E-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepdown-vego-from-v1-E-v2-L-vego-E-vref
                :precondition ( and
                              (ArefMinus)
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepup-v1-from-v1-E-v2-L-vego-L-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepup-vego-from-v1-E-v2-L-vego-L-vref
                :precondition ( and
                              (ArefPlus)
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-v1-E-v2-L-vego-L-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepdown-vego-from-v1-E-v2-L-vego-L-vref
                :precondition ( and
                              (ArefMinus)
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-vref-from-v1-E-v2-L-vego-L-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-v1-L-v2-E-vego-E-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vego)
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-v1-L-v2-E-vego-E-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepdown-v2-from-v1-L-v2-E-vego-E-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepup-v1-from-v1-L-v2-E-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-v2-from-v1-L-v2-E-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepdown-v2-from-v1-L-v2-E-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-vref-from-v1-L-v2-E-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (vego-EQUALS-vref)
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-v1-L-v2-L-vego-E-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-v2-from-v1-L-v2-L-vego-E-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-v1-L-v2-L-vego-E-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepdown-v2-from-v1-L-v2-L-vego-E-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vego-from-v1-L-v2-L-vego-E-vref
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepup-v1-from-v1-L-v2-L-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-v2-from-v1-L-v2-L-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-vego-from-v1-L-v2-L-vego-L-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-v1-L-v2-L-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vego-from-v1-L-v2-L-vego-L-vref
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-vref-from-v1-L-v2-L-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-v1-E-v2-E-vref-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepdown-v1-from-v1-E-v2-E-vref-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-vego-from-v1-E-v2-E-vref-L-vego
                :precondition ( and
                              (ArefMinus)
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)
                              (v2-EQUALS-vego)
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vref-from-v1-E-v2-L-vref-E-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-v1-E-v2-L-vref-E-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-v1-from-v1-E-v2-L-vref-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepup-vref-from-v1-E-v2-L-vref-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-v1-E-v2-L-vref-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepdown-vref-from-v1-E-v2-L-vref-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-vego-from-v1-E-v2-L-vref-L-vego
                :precondition ( and
                              (ArefMinus)
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-v1-L-v2-E-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-v1-L-v2-E-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepdown-v2-from-v1-L-v2-E-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-vego-from-v1-L-v2-E-vref-L-vego
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-vref-from-v1-L-v2-L-vref-E-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-v1-L-v2-L-vref-E-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-v1-from-v1-L-v2-L-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-v2-from-v1-L-v2-L-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-v1-L-v2-L-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-v1-L-v2-L-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vref-from-v1-L-v2-L-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-vego-from-v1-L-v2-L-vref-L-vego
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-v1-E-vego-L-v2-E-vref
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepup-v2-from-v1-E-vego-L-v2-E-vref
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepdown-v1-from-v1-E-vego-L-v2-E-vref
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-v2-from-v1-E-vego-L-v2-E-vref
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepup-v1-from-v1-E-vego-L-v2-L-vref
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepup-v2-from-v1-E-vego-L-v2-L-vref
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-v1-E-vego-L-v2-L-vref
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-v2-from-v1-E-vego-L-v2-L-vref
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vref-from-v1-E-vego-L-v2-L-vref
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-v1-L-vego-E-v2-E-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (v2-EQUALS-vego)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepdown-vego-from-v1-L-vego-E-v2-E-vref
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (v2-EQUALS-vego)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepup-vego-from-v1-L-vego-E-v2-L-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (v2-EQUALS-vego)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-v1-L-vego-E-v2-L-vref
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (v2-EQUALS-vego)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepup-v1-from-v1-L-vego-L-v2-E-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vego-from-v1-L-vego-L-v2-E-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-v1-L-vego-L-v2-E-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepdown-vego-from-v1-L-vego-L-v2-E-vref
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-v2-from-v1-L-vego-L-v2-E-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepup-v1-from-v1-L-vego-L-v2-L-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vego-from-v1-L-vego-L-v2-L-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-v2-from-v1-L-vego-L-v2-L-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-vego-from-v1-L-vego-L-v2-L-vref
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-v2-from-v1-L-vego-L-v2-L-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-vref-from-v1-L-vego-L-v2-L-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-v1-E-vego-E-vref-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepdown-v1-from-v1-E-vego-E-vref-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-v2-from-v1-E-vego-E-vref-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)
                              (v2-EQUALS-vego)
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-vref-from-v1-E-vego-L-vref-E-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-v1-E-vego-L-vref-E-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepup-v1-from-v1-E-vego-L-vref-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepup-vref-from-v1-E-vego-L-vref-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-v1-E-vego-L-vref-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-vref-from-v1-E-vego-L-vref-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-v1-E-vego-L-vref-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-v1-L-vego-E-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vego)
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-v1-L-vego-E-vref-L-v2
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepdown-vego-from-v1-L-vego-E-vref-L-v2
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-v2-from-v1-L-vego-E-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-vref-from-v1-L-vego-L-vref-E-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-v1-L-vego-L-vref-E-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepup-v1-from-v1-L-vego-L-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vego-from-v1-L-vego-L-vref-L-v2
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-v1-L-vego-L-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-vego-from-v1-L-vego-L-vref-L-v2
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-vref-from-v1-L-vego-L-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-v1-L-vego-L-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-v1-E-vref-L-vego-E-v2
                :precondition ( and
                              (ArefPlus)
                              (v1-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-v1-E-vref-L-vego-E-v2
                :precondition ( and
                              (ArefMinus)
                              (v1-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepup-v1-from-v1-E-vref-L-vego-L-v2
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepup-vego-from-v1-E-vref-L-vego-L-v2
                :precondition ( and
                              (ArefPlus)
                              (v1-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-v1-from-v1-E-vref-L-vego-L-v2
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-vego-from-v1-E-vref-L-vego-L-v2
                :precondition ( and
                              (ArefMinus)
                              (v1-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (vego-EQUALS-vref)
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-v2-from-v1-E-vref-L-vego-L-v2
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-vref-from-v1-L-vref-E-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-v1-L-vref-E-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-vego-from-v1-L-vref-L-vego-E-v2
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-v1-L-vref-L-vego-E-v2
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepup-v1-from-v1-L-vref-L-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-v1-L-vref-L-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-v1-L-vref-L-vego-L-v2
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-vref-from-v1-L-vref-L-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-vego-from-v1-L-vref-L-vego-L-v2
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-v1-L-vref-L-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-v1-from-v1-E-vref-L-v2-E-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepup-v2-from-v1-E-vref-L-v2-E-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepdown-v1-from-v1-E-vref-L-v2-E-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-v2-from-v1-E-vref-L-v2-E-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepup-v1-from-v1-E-vref-L-v2-L-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepup-v2-from-v1-E-vref-L-v2-L-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-v1-from-v1-E-vref-L-v2-L-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-v2-from-v1-E-vref-L-v2-L-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vref)
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vego-from-v1-E-vref-L-v2-L-vego
                :precondition ( and
                              (ArefMinus)
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-vref-from-v1-L-vref-E-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (v2-EQUALS-vref)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-v1-L-vref-E-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (v2-EQUALS-vref)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-vref-from-v1-L-vref-E-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (v2-EQUALS-vref)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-v1-L-vref-E-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (v2-EQUALS-vref)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepup-v1-from-v1-L-vref-L-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-v1-L-vref-L-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (v2-EQUALS-vref)
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-v1-L-vref-L-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepdown-vref-from-v1-L-vref-L-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-v1-L-vref-L-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepup-v1-from-v1-L-vref-L-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-v1-L-vref-L-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-v1-L-vref-L-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-vref-from-v1-L-vref-L-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-v1-L-vref-L-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-vego-from-v1-L-vref-L-v2-L-vego
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-v2-from-v2-E-v1-E-vego-E-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepdown-v2-from-v2-E-v1-E-vego-E-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepup-v2-from-v2-E-v1-E-vego-L-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepdown-v2-from-v2-E-v1-E-vego-L-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepup-v2-from-v2-E-v1-L-vego-E-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepdown-v2-from-v2-E-v1-L-vego-E-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepup-v2-from-v2-E-v1-L-vego-L-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepdown-v2-from-v2-E-v1-L-vego-L-vref
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepup-v2-from-v2-L-v1-E-vego-E-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vego)
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-v2-L-v1-E-vego-E-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepdown-v1-from-v2-L-v1-E-vego-E-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepup-v2-from-v2-L-v1-E-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-v1-from-v2-L-v1-E-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepdown-v1-from-v2-L-v1-E-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-vref-from-v2-L-v1-E-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (vego-EQUALS-vref)
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-v2-L-v1-L-vego-E-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-v1-from-v2-L-v1-L-vego-E-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-v2-L-v1-L-vego-E-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepdown-v1-from-v2-L-v1-L-vego-E-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vego-from-v2-L-v1-L-vego-E-vref
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepup-v2-from-v2-L-v1-L-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-v1-from-v2-L-v1-L-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vego-from-v2-L-v1-L-vego-L-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-v2-L-v1-L-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vego-from-v2-L-v1-L-vego-L-vref
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-vref-from-v2-L-v1-L-vego-L-vref
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-v2-E-v1-E-vref-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepdown-v2-from-v2-E-v1-E-vref-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepup-v2-from-v2-E-v1-L-vref-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepdown-v2-from-v2-E-v1-L-vref-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepup-v2-from-v2-L-v1-E-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-v2-L-v1-E-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepdown-v1-from-v2-L-v1-E-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-vego-from-v2-L-v1-E-vref-L-vego
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vref-from-v2-L-v1-L-vref-E-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-v2-L-v1-L-vref-E-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (vego-EQUALS-vref)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-v2-from-v2-L-v1-L-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-v1-from-v2-L-v1-L-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-v2-L-v1-L-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-v2-L-v1-L-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vref-from-v2-L-v1-L-vref-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-vego-from-v2-L-v1-L-vref-L-vego
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-v2-E-vego-L-v1-E-vref
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepup-v1-from-v2-E-vego-L-v1-E-vref
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepdown-v2-from-v2-E-vego-L-v1-E-vref
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-v1-from-v2-E-vego-L-v1-E-vref
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepup-v2-from-v2-E-vego-L-v1-L-vref
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepup-v1-from-v2-E-vego-L-v1-L-vref
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-v2-E-vego-L-v1-L-vref
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-v1-from-v2-E-vego-L-v1-L-vref
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vref-from-v2-E-vego-L-v1-L-vref
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-v2-L-vego-E-v1-E-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (v1-EQUALS-vego)
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepdown-vego-from-v2-L-vego-E-v1-E-vref
                :precondition ( and
                              (ArefMinus)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (v1-EQUALS-vego)
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepup-vego-from-v2-L-vego-E-v1-L-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (v1-EQUALS-vego)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-v2-L-vego-E-v1-L-vref
                :precondition ( and
                              (ArefMinus)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (v1-EQUALS-vego)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepup-v2-from-v2-L-vego-L-v1-E-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-vego-from-v2-L-vego-L-v1-E-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-v2-L-vego-L-v1-E-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepdown-vego-from-v2-L-vego-L-v1-E-vref
                :precondition ( and
                              (ArefMinus)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-v1-from-v2-L-vego-L-v1-E-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepup-v2-from-v2-L-vego-L-v1-L-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-vego-from-v2-L-vego-L-v1-L-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-v1-from-v2-L-vego-L-v1-L-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-vego-from-v2-L-vego-L-v1-L-vref
                :precondition ( and
                              (ArefMinus)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-v1-from-v2-L-vego-L-v1-L-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-vref-from-v2-L-vego-L-v1-L-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-v2-E-vego-E-vref-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepdown-v2-from-v2-E-vego-E-vref-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-v1-from-v2-E-vego-E-vref-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vref)
                              (v1-EQUALS-vego)
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-vref-from-v2-E-vego-L-vref-E-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-v2-E-vego-L-vref-E-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepup-v2-from-v2-E-vego-L-vref-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepup-vref-from-v2-E-vego-L-vref-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-v2-E-vego-L-vref-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-vref-from-v2-E-vego-L-vref-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-v2-E-vego-L-vref-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-v2-L-vego-E-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vego)
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-v2-L-vego-E-vref-L-v1
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepdown-vego-from-v2-L-vego-E-vref-L-v1
                :precondition ( and
                              (ArefMinus)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-v1-from-v2-L-vego-E-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vref)
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vref-from-v2-L-vego-L-vref-E-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-v2-L-vego-L-vref-E-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepup-v2-from-v2-L-vego-L-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-vego-from-v2-L-vego-L-vref-L-v1
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-v2-L-vego-L-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-vego-from-v2-L-vego-L-vref-L-v1
                :precondition ( and
                              (ArefMinus)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-vref-from-v2-L-vego-L-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-v2-L-vego-L-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-v2-E-vref-L-vego-E-v1
                :precondition ( and
                              (ArefPlus)
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-v2-E-vref-L-vego-E-v1
                :precondition ( and
                              (ArefMinus)
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepup-v2-from-v2-E-vref-L-vego-L-v1
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepup-vego-from-v2-E-vref-L-vego-L-v1
                :precondition ( and
                              (ArefPlus)
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-v2-from-v2-E-vref-L-vego-L-v1
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-vego-from-v2-E-vref-L-vego-L-v1
                :precondition ( and
                              (ArefMinus)
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (vego-EQUALS-vref)
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-v1-from-v2-E-vref-L-vego-L-v1
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vref-from-v2-L-vref-E-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-v2-L-vref-E-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-vego-from-v2-L-vref-L-vego-E-v1
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-v2-L-vref-L-vego-E-v1
                :precondition ( and
                              (ArefMinus)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepup-v2-from-v2-L-vref-L-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-v2-L-vref-L-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-v2-L-vref-L-vego-L-v1
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-vref-from-v2-L-vref-L-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-vego-from-v2-L-vref-L-vego-L-v1
                :precondition ( and
                              (ArefMinus)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-v2-L-vref-L-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-v2-from-v2-E-vref-L-v1-E-vego
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepup-v1-from-v2-E-vref-L-v1-E-vego
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepdown-v2-from-v2-E-vref-L-v1-E-vego
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-v1-from-v2-E-vref-L-v1-E-vego
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepup-v2-from-v2-E-vref-L-v1-L-vego
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepup-v1-from-v2-E-vref-L-v1-L-vego
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-v2-from-v2-E-vref-L-v1-L-vego
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-v1-from-v2-E-vref-L-v1-L-vego
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vego-from-v2-E-vref-L-v1-L-vego
                :precondition ( and
                              (ArefMinus)
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vref-from-v2-L-vref-E-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-v2-L-vref-E-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-vref-from-v2-L-vref-E-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-v2-L-vref-E-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepup-v2-from-v2-L-vref-L-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-v2-L-vref-L-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-v2-L-vref-L-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepdown-vref-from-v2-L-vref-L-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-v2-L-vref-L-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepup-v2-from-v2-L-vref-L-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-v2-L-vref-L-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-v2-L-vref-L-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-vref-from-v2-L-vref-L-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-v2-L-vref-L-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-vego-from-v2-L-vref-L-v1-L-vego
                :precondition ( and
                              (ArefMinus)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vego-from-vego-E-v2-L-v1-E-vref
                :precondition ( and
                              (ArefPlus)
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-vego-E-v2-L-v1-E-vref
                :precondition ( and
                              (ArefMinus)
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepup-vego-from-vego-E-v2-L-v1-L-vref
                :precondition ( and
                              (ArefPlus)
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-vego-E-v2-L-v1-L-vref
                :precondition ( and
                              (ArefMinus)
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepup-v2-from-vego-L-v2-E-v1-E-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepdown-v2-from-vego-L-v2-E-v1-E-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepup-v2-from-vego-L-v2-E-v1-L-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepdown-v2-from-vego-L-v2-E-v1-L-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepup-vego-from-vego-L-v2-L-v1-E-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-v2-from-vego-L-v2-L-v1-E-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-vego-L-v2-L-v1-E-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepdown-v2-from-vego-L-v2-L-v1-E-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-v1-from-vego-L-v2-L-v1-E-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepup-vego-from-vego-L-v2-L-v1-L-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-v2-from-vego-L-v2-L-v1-L-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-v1-from-vego-L-v2-L-v1-L-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-vego-L-v2-L-v1-L-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-v1-from-vego-L-v2-L-v1-L-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vref-from-vego-L-v2-L-v1-L-vref
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-vego-E-v2-E-vref-L-v1
                :precondition ( and
                              (ArefPlus)
                              (v2-EQUALS-vego)
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepdown-vego-from-vego-E-v2-E-vref-L-v1
                :precondition ( and
                              (ArefMinus)
                              (v2-EQUALS-vego)
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepup-vego-from-vego-E-v2-L-vref-L-v1
                :precondition ( and
                              (ArefPlus)
                              (v2-EQUALS-vego)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-vego-E-v2-L-vref-L-v1
                :precondition ( and
                              (ArefMinus)
                              (v2-EQUALS-vego)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepup-vego-from-vego-L-v2-E-vref-L-v1
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vego)
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-vego-L-v2-E-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepdown-v2-from-vego-L-v2-E-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-v1-from-vego-L-v2-E-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vref)
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-vref-from-vego-L-v2-L-vref-E-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vego-L-v2-L-vref-E-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepup-vego-from-vego-L-v2-L-vref-L-v1
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-v2-from-vego-L-v2-L-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-vego-L-v2-L-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-vego-L-v2-L-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-vref-from-vego-L-v2-L-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-vego-L-v2-L-vref-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-vego-E-v1-E-v2-E-vref
                :precondition ( and
                              (ArefPlus)
                              (v1-EQUALS-vego)
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepdown-vego-from-vego-E-v1-E-v2-E-vref
                :precondition ( and
                              (ArefMinus)
                              (v1-EQUALS-vego)
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepup-vego-from-vego-E-v1-E-v2-L-vref
                :precondition ( and
                              (ArefPlus)
                              (v1-EQUALS-vego)
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-vego-E-v1-E-v2-L-vref
                :precondition ( and
                              (ArefMinus)
                              (v1-EQUALS-vego)
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepup-vego-from-vego-E-v1-L-v2-E-vref
                :precondition ( and
                              (ArefPlus)
                              (v1-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-vego-E-v1-L-v2-E-vref
                :precondition ( and
                              (ArefMinus)
                              (v1-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepup-vego-from-vego-E-v1-L-v2-L-vref
                :precondition ( and
                              (ArefPlus)
                              (v1-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-vego-E-v1-L-v2-L-vref
                :precondition ( and
                              (ArefMinus)
                              (v1-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepup-vego-from-vego-L-v1-E-v2-E-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)
                              (v2-EQUALS-vego)
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-vego-L-v1-E-v2-E-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepdown-v1-from-vego-L-v1-E-v2-E-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepup-vego-from-vego-L-v1-E-v2-L-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-v1-from-vego-L-v1-E-v2-L-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepdown-v1-from-vego-L-v1-E-v2-L-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepdown-vref-from-vego-L-v1-E-v2-L-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vref)
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-vego-L-v1-L-v2-E-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-v1-from-vego-L-v1-L-v2-E-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-vego-L-v1-L-v2-E-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepdown-v1-from-vego-L-v1-L-v2-E-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-v2-from-vego-L-v1-L-v2-E-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepup-vego-from-vego-L-v1-L-v2-L-vref
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-v1-from-vego-L-v1-L-v2-L-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-v2-from-vego-L-v1-L-v2-L-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-vego-L-v1-L-v2-L-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-v2-from-vego-L-v1-L-v2-L-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vref-from-vego-L-v1-L-v2-L-vref
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-vego-E-v1-E-vref-L-v2
                :precondition ( and
                              (ArefPlus)
                              (v1-EQUALS-vego)
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepdown-vego-from-vego-E-v1-E-vref-L-v2
                :precondition ( and
                              (ArefMinus)
                              (v1-EQUALS-vego)
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepup-vego-from-vego-E-v1-L-vref-L-v2
                :precondition ( and
                              (ArefPlus)
                              (v1-EQUALS-vego)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-vego-E-v1-L-vref-L-v2
                :precondition ( and
                              (ArefMinus)
                              (v1-EQUALS-vego)
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepup-vego-from-vego-L-v1-E-vref-L-v2
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vego)
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-vego-L-v1-E-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepdown-v1-from-vego-L-v1-E-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-v2-from-vego-L-v1-E-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-vref-from-vego-L-v1-L-vref-E-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vego-L-v1-L-vref-E-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (v2-EQUALS-vref)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepup-vego-from-vego-L-v1-L-vref-L-v2
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-v1-from-vego-L-v1-L-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-vego-L-v1-L-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-vego-L-v1-L-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-vref-from-vego-L-v1-L-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-vego-L-v1-L-vref-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-vego-E-vref-L-v1-E-v2
                :precondition ( and
                              (ArefPlus)
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-v1-from-vego-E-vref-L-v1-E-v2
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepdown-vego-from-vego-E-vref-L-v1-E-v2
                :precondition ( and
                              (ArefMinus)
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-v1-from-vego-E-vref-L-v1-E-v2
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepup-vego-from-vego-E-vref-L-v1-L-v2
                :precondition ( and
                              (ArefPlus)
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-v1-from-vego-E-vref-L-v1-L-v2
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vego-from-vego-E-vref-L-v1-L-v2
                :precondition ( and
                              (ArefMinus)
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-v1-from-vego-E-vref-L-v1-L-v2
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (v1-EQUALS-vref)
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-v2-from-vego-E-vref-L-v1-L-v2
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-vref-from-vego-L-vref-E-v1-E-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vego-L-vref-E-v1-E-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepup-vref-from-vego-L-vref-E-v1-L-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vego-L-vref-E-v1-L-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v1-EQUALS-vref)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepup-vego-from-vego-L-vref-L-v1-E-v2
                :precondition ( and
                              (ArefPlus)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-vego-L-vref-L-v1-E-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (v1-EQUALS-vref)
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-vego-L-vref-L-v1-E-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepdown-vref-from-vego-L-vref-L-v1-E-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-vego-L-vref-L-v1-E-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepup-vego-from-vego-L-vref-L-v1-L-v2
                :precondition ( and
                              (ArefPlus)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-vego-L-vref-L-v1-L-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-vego-L-vref-L-v1-L-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vref-from-vego-L-vref-L-v1-L-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-vego-L-vref-L-v1-L-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-vego-L-vref-L-v1-L-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-v2-from-vego-E-vref-L-v2-E-v1
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepdown-v2-from-vego-E-vref-L-v2-E-v1
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepup-vego-from-vego-E-vref-L-v2-L-v1
                :precondition ( and
                              (ArefPlus)
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-v2-from-vego-E-vref-L-v2-L-v1
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vego-from-vego-E-vref-L-v2-L-v1
                :precondition ( and
                              (ArefMinus)
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-v2-from-vego-E-vref-L-v2-L-v1
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (v2-EQUALS-vref)
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-v1-from-vego-E-vref-L-v2-L-v1
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-vref-from-vego-L-vref-E-v2-L-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vego-L-vref-E-v2-L-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepup-v2-from-vego-L-vref-L-v2-E-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepdown-v2-from-vego-L-vref-L-v2-E-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepup-vego-from-vego-L-vref-L-v2-L-v1
                :precondition ( and
                              (ArefPlus)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-vref-from-vego-L-vref-L-v2-L-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-vego-L-vref-L-v2-L-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vref-from-vego-L-vref-L-v2-L-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-vego-L-vref-L-v2-L-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-vego-L-vref-L-v2-L-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-vref-from-vref-E-v2-E-vego-L-v1
                :precondition ( and
                              (v2-EQUALS-vref)
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vref-E-v2-E-vego-L-v1
                :precondition ( and
                              (v2-EQUALS-vref)
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-vref-from-vref-E-v2-L-vego-L-v1
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vref-E-v2-L-vego-L-v1
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepup-vref-from-vref-L-v2-E-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vref)
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-vref-L-v2-E-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepdown-v2-from-vref-L-v2-E-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-v1-from-vref-L-v2-E-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vego)
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-vego-from-vref-L-v2-L-vego-E-v1
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-vref-L-v2-L-vego-E-v1
                :precondition ( and
                              (ArefMinus)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepup-vref-from-vref-L-v2-L-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-vref-L-v2-L-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-vego-from-vref-L-v2-L-vego-L-v1
                :precondition ( and
                              (ArefPlus)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-v2-from-vref-L-v2-L-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-vego-from-vref-L-v2-L-vego-L-v1
                :precondition ( and
                              (ArefMinus)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-v1-from-vref-L-v2-L-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vref-from-vref-E-v2-L-v1-E-vego
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vref-E-v2-L-v1-E-vego
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepup-vref-from-vref-E-v2-L-v1-L-vego
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vref-E-v2-L-v1-L-vego
                :precondition ( and
                              (v2-EQUALS-vref)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepup-v2-from-vref-L-v2-E-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepdown-v2-from-vref-L-v2-E-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepup-v2-from-vref-L-v2-E-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepdown-v2-from-vref-L-v2-E-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepup-vref-from-vref-L-v2-L-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-vref-L-v2-L-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-v1-from-vref-L-v2-L-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepdown-v2-from-vref-L-v2-L-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-vref-L-v2-L-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepup-vref-from-vref-L-v2-L-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-v2-from-vref-L-v2-L-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-v1-from-vref-L-v2-L-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-v2-from-vref-L-v2-L-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-vref-L-v2-L-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vego-from-vref-L-v2-L-v1-L-vego
                :precondition ( and
                              (ArefMinus)
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vref-from-vref-E-vego-L-v2-L-v1
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vref-E-vego-L-v2-L-v1
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-vego-from-vref-L-vego-E-v2-L-v1
                :precondition ( and
                              (ArefPlus)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-vref-L-vego-E-v2-L-v1
                :precondition ( and
                              (ArefMinus)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepup-v2-from-vref-L-vego-L-v2-E-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepdown-v2-from-vref-L-vego-L-v2-E-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepup-vref-from-vref-L-vego-L-v2-L-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-vref-L-vego-L-v2-L-v1
                :precondition ( and
                              (ArefPlus)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-v2-from-vref-L-vego-L-v2-L-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vego-from-vref-L-vego-L-v2-L-v1
                :precondition ( and
                              (ArefMinus)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-vref-L-vego-L-v2-L-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-v1-from-vref-L-vego-L-v2-L-v1
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-vref-from-vref-E-vego-L-v1-E-v2
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vref-E-vego-L-v1-E-v2
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-vref-from-vref-E-vego-L-v1-L-v2
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vref-E-vego-L-v1-L-v2
                :precondition ( and
                              (vego-EQUALS-vref)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-vego-from-vref-L-vego-E-v1-E-v2
                :precondition ( and
                              (ArefPlus)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-vref-L-vego-E-v1-E-v2
                :precondition ( and
                              (ArefMinus)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepup-vego-from-vref-L-vego-E-v1-L-v2
                :precondition ( and
                              (ArefPlus)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-vref-L-vego-E-v1-L-v2
                :precondition ( and
                              (ArefMinus)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepup-vref-from-vref-L-vego-L-v1-E-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-vref-L-vego-L-v1-E-v2
                :precondition ( and
                              (ArefPlus)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (v1-EQUALS-vego)
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-v1-from-vref-L-vego-L-v1-E-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepdown-vego-from-vref-L-vego-L-v1-E-v2
                :precondition ( and
                              (ArefMinus)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-vref-L-vego-L-v1-E-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepup-vref-from-vref-L-vego-L-v1-L-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-vego-from-vref-L-vego-L-v1-L-v2
                :precondition ( and
                              (ArefPlus)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-v1-from-vref-L-vego-L-v1-L-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vego-from-vref-L-vego-L-v1-L-v2
                :precondition ( and
                              (ArefMinus)
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (vego-EQUALS-vref)

                )
   )
   (:action stepdown-v1-from-vref-L-vego-L-v1-L-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-v2-from-vref-L-vego-L-v1-L-v2
                :precondition ( and
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-vref-from-vref-E-v1-E-vego-L-v2
                :precondition ( and
                              (v1-EQUALS-vref)
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vref-E-v1-E-vego-L-v2
                :precondition ( and
                              (v1-EQUALS-vref)
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-vref-from-vref-E-v1-L-vego-L-v2
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vref-E-v1-L-vego-L-v2
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepup-vref-from-vref-L-v1-E-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vref)
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-vref-L-v1-E-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepdown-v1-from-vref-L-v1-E-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepdown-v2-from-vref-L-v1-E-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vego)
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-vego-from-vref-L-v1-L-vego-E-v2
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepdown-vego-from-vref-L-v1-L-vego-E-v2
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepup-vref-from-vref-L-v1-L-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-vref-L-v1-L-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vego-from-vref-L-v1-L-vego-L-v2
                :precondition ( and
                              (ArefPlus)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-v1-from-vref-L-v1-L-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-vego-from-vref-L-v1-L-vego-L-v2
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v1-EQUALS-vego)

                )
   )
   (:action stepdown-v2-from-vref-L-v1-L-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepup-vref-from-vref-E-v1-E-v2-E-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)
                              (not (vego-EQUALS-vref))
                              (vego-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vref-E-v1-E-v2-E-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))
                              (not (vego-EQUALS-vref))
                              (not (vego-LESSTHAN-vref))

                )
   )
   (:action stepup-vref-from-vref-E-v1-E-v2-L-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)
                              (not (v2-EQUALS-vref))
                              (v2-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vref-E-v1-E-v2-L-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v2-EQUALS-vref))
                              (not (v2-LESSTHAN-vref))

                )
   )
   (:action stepup-vref-from-vref-E-v1-L-v2-E-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vref-E-v1-L-v2-E-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepup-vref-from-vref-E-v1-L-v2-L-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (v1-LESSTHAN-vref)

                )
   )
   (:action stepdown-vref-from-vref-E-v1-L-v2-L-vego
                :precondition ( and
                              (v1-EQUALS-vref)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))

                )
   )
   (:action stepup-vref-from-vref-L-v1-E-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)
                              (v2-EQUALS-vref)
                              (vego-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-vref-L-v1-E-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))

                )
   )
   (:action stepdown-v1-from-vref-L-v1-E-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)

                )
   )
   (:action stepup-vref-from-vref-L-v1-E-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)
                              (v2-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-vref-L-v1-E-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))

                )
   )
   (:action stepdown-v1-from-vref-L-v1-E-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)

                )
   )
   (:action stepdown-vego-from-vref-L-v1-E-v2-L-vego
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vego)
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-vref-from-vref-L-v1-L-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-vref-L-v1-L-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (v1-EQUALS-v2)
                              (v1-EQUALS-vego)

                )
   )
   (:action stepup-v2-from-vref-L-v1-L-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))

                )
   )
   (:action stepdown-v1-from-vref-L-v1-L-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-vref-L-v1-L-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)

                )
   )
   (:action stepup-vref-from-vref-L-v1-L-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepup-v1-from-vref-L-v1-L-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepup-v2-from-vref-L-v1-L-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action stepdown-v1-from-vref-L-v1-L-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-vref)

                )
   )
   (:action stepdown-v2-from-vref-L-v1-L-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v1-EQUALS-v2)

                )
   )
   (:action stepdown-vego-from-vref-L-v1-L-v2-L-vego
                :precondition ( and
                              (ArefMinus)
                              (not (v1-EQUALS-vref))
                              (not (v1-LESSTHAN-vref))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                )
                :effect ( and
                              (v2-EQUALS-vego)

                )
   )
   (:action timeprogress-from-d1Ed2-v1Lv2
                :precondition ( and
                                    (d1-EQUALS-d2)
                                    (not (v1-EQUALS-v2))
                                    (v1-LESSTHAN-v2)
                )
                :effect ( and
                                    (not (d1-EQUALS-d2))
                                    (d1-LESSTHAN-d2)
                )
     )

   (:action timeprogress-from-d1Ed2-v2Lv1
                :precondition ( and
                                    (d1-EQUALS-d2)
                                    (not (v1-EQUALS-v2))
                                    (not (v1-LESSTHAN-v2))
                )
                :effect ( and
                                    (not (d1-EQUALS-d2))
                                    (not (d1-LESSTHAN-d2))
                )
     )

   (:action stepup-d1-from-d1Ld2
                :precondition ( and
                                    (not (d1-EQUALS-d2))
                                    (d1-LESSTHAN-d2)
                                    (not (v1-EQUALS-v2))
                                    (not (v1-LESSTHAN-v2))
                                    (not (v1-EQUALS-vego))
                                    (not (v1-LESSTHAN-vego))
                )
                :effect ( and
                                    (d1-EQUALS-d2)
                )
     )

   (:action stepup-d2-from-d2Ld1
                :precondition ( and
                                    (not (d1-EQUALS-d2))
                                    (not (d1-LESSTHAN-d2))
                                    (not (v1-EQUALS-v2))
                                    (v1-LESSTHAN-v2)
                                    (not (v2-EQUALS-vego))
                                    (not (v2-LESSTHAN-vego))
                )
                :effect ( and
                                    (d1-EQUALS-d2)
                )
     )

   (:action stepdown-d1-from-d2Ld1
                :precondition ( and
                                    (not (d1-EQUALS-d2))
                                    (not (d1-LESSTHAN-d2))
                                    (not (v1-EQUALS-v2))
                                    (v1-LESSTHAN-v2)
                                    (not (v1-EQUALS-vego))
                                    (v1-LESSTHAN-vego)
                )
                :effect ( and
                                    (d1-EQUALS-d2)
                )
     )

   (:action stepdown-d2-from-d1Ld2
                :precondition ( and
                                    (not (d1-EQUALS-d2))
                                    (d1-LESSTHAN-d2)
                                    (not (v1-EQUALS-v2))
                                    (not (v1-LESSTHAN-v2))
                                    (not (v2-EQUALS-vego))
                                    (v2-LESSTHAN-vego)
                )
                :effect ( and
                                    (d1-EQUALS-d2)
                )
     )

   (:action timeadvance-t1-E-t2-E-tmin1-L-tmin2-v1-E-v2-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (t1-EQUALS-t2)
                              (t2-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                 )
  )

   (:action timeadvance-t1-E-t2-E-tmin1-L-tmin2-v1-L-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                              (t1-EQUALS-t2)
                              (t2-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                 )
  )

   (:action timeadvance-t1-E-t2-E-tmin1-L-tmin2-v1-L-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (t1-EQUALS-t2)
                              (t2-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                 )
  )

   (:action stepdown-tmin1-thro-vego-decrease-from-t1-E-t2-L-tmin1-L-tmin2
                :precondition ( and
                              (ArefMinus)
                              (t1-EQUALS-t2)
                              (v1-EQUALS-v2)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)
                              (t1-EQUALS-tmin1)

                )
   )
   (:action timeadvance-t1-E-t2-L-tmin1-L-tmin2-v1-L-v2
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (t1-EQUALS-t2)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                 )
  )

   (:action stepup-t1-from-t1-L-t2-E-tmin1-L-tmin2
                :precondition ( and
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-v2))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (t2-EQUALS-tmin1)
                              (v2-EQUALS-vego)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-t2)
                              (t1-EQUALS-tmin1)

                )
   )
   (:action timeadvance-t1-L-t2-E-tmin1-L-tmin2-v2-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (t2-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                 )
  )

   (:action stepup-t1-from-t1-L-t2-L-tmin1-L-tmin2
                :precondition ( and
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-v2))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-t2)

                )
   )
   (:action stepup-t2-from-t1-L-t2-L-tmin1-L-tmin2
                :precondition ( and
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vego))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepdown-t2-from-t1-L-t2-L-tmin1-L-tmin2
                :precondition ( and
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-v2))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-t2)

                )
   )
   (:action stepdown-tmin1-thro-vego-decrease-from-t1-L-t2-L-tmin1-L-tmin2
                :precondition ( and
                              (ArefMinus)
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action timeadvance-t1-E-tmin1-E-t2-L-tmin2-v1-E-vego-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (t1-EQUALS-tmin1)
                              (t2-EQUALS-tmin1)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                 )
  )

   (:action timeadvance-t1-E-tmin1-E-t2-L-tmin2-v1-L-vego-E-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (v2-EQUALS-vego)
                              (t1-EQUALS-tmin1)
                              (t2-EQUALS-tmin1)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                 )
  )

   (:action timeadvance-t1-E-tmin1-E-t2-L-tmin2-v1-L-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (t1-EQUALS-tmin1)
                              (t2-EQUALS-tmin1)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                 )
  )

   (:action timeadvance-t1-E-tmin1-L-t2-E-tmin2-v1-E-vego-S-v2-L-vego
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (t1-EQUALS-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
  )

   (:action timeadvance-t1-E-tmin1-L-t2-E-tmin2-v1-L-vego-S-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (v2-EQUALS-vego)
                              (t1-EQUALS-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                 )
  )

   (:action timeadvance-t1-E-tmin1-L-t2-E-tmin2-v1-L-vego-S-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (t1-EQUALS-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
  )

   (:action stepup-t2-from-t1-E-tmin1-L-t2-L-tmin2
                :precondition ( and
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vego))
                              (t1-EQUALS-tmin1)
                              (v1-EQUALS-vego)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action stepdown-t2-from-t1-E-tmin1-L-t2-L-tmin2
                :precondition ( and
                              (v2-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (t1-EQUALS-tmin1)
                              (v1-EQUALS-vego)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)
                              (t1-EQUALS-t2)

                )
   )
   (:action stepdown-tmin2-thro-vego-decrease-from-t1-E-tmin1-L-t2-L-tmin2
                :precondition ( and
                              (ArefMinus)
                              (t1-EQUALS-tmin1)
                              (v1-EQUALS-vego)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action timeadvance-t1-E-tmin1-L-t2-L-tmin2-v1-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (t1-EQUALS-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                 )
  )

   (:action timeadvance-t1-L-tmin1-E-t2-L-tmin2-vego-L-v2
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (t2-EQUALS-tmin1)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                 )
  )

   (:action stepup-t1-from-t1-L-tmin1-L-t2-E-tmin2
                :precondition ( and
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vego))
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t2-EQUALS-tmin2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action stepup-tmin1-thro-vego-increase-from-t1-L-tmin1-L-t2-E-tmin2
                :precondition ( and
                              (ArefPlus)
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t2-EQUALS-tmin2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)
                              (tmin1-EQUALS-tmin2)

                )
   )
   (:action stepdown-tmin1-thro-vego-decrease-from-t1-L-tmin1-L-t2-E-tmin2
                :precondition ( and
                              (ArefMinus)
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t2-EQUALS-tmin2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action timeadvance-t1-L-tmin1-L-t2-E-tmin2-v2-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
  )

   (:action stepup-t1-from-t1-L-tmin1-L-t2-L-tmin2
                :precondition ( and
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vego))
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action stepup-tmin1-thro-vego-increase-from-t1-L-tmin1-L-t2-L-tmin2
                :precondition ( and
                              (ArefPlus)
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepup-t2-from-t1-L-tmin1-L-t2-L-tmin2
                :precondition ( and
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vego))
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action stepdown-tmin1-thro-vego-decrease-from-t1-L-tmin1-L-t2-L-tmin2
                :precondition ( and
                              (ArefMinus)
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action stepdown-t2-from-t1-L-tmin1-L-t2-L-tmin2
                :precondition ( and
                              (v2-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepdown-tmin2-thro-vego-decrease-from-t1-L-tmin1-L-t2-L-tmin2
                :precondition ( and
                              (ArefMinus)
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action timeadvance-t1-E-tmin1-L-tmin2-E-t2-v1-E-vego-S-vego-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (t1-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                 )
  )

   (:action timeadvance-t1-E-tmin1-L-tmin2-E-t2-v1-L-vego-S-vego-E-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (v2-EQUALS-vego)
                              (t1-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                 )
  )

   (:action timeadvance-t1-E-tmin1-L-tmin2-E-t2-v1-L-vego-S-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (t1-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                 )
  )

   (:action stepup-tmin2-thro-vego-increase-from-t1-E-tmin1-L-tmin2-L-t2
                :precondition ( and
                              (ArefPlus)
                              (t1-EQUALS-tmin1)
                              (v1-EQUALS-vego)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action stepdown-t2-from-t1-E-tmin1-L-tmin2-L-t2
                :precondition ( and
                              (v2-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (t1-EQUALS-tmin1)
                              (v1-EQUALS-vego)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action timeadvance-t1-E-tmin1-L-tmin2-L-t2-v1-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (t1-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                 )
  )

   (:action timeadvance-t1-L-tmin1-L-tmin2-E-t2-vego-L-v2
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                 )
  )

   (:action stepup-t1-from-t1-L-tmin1-L-tmin2-L-t2
                :precondition ( and
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vego))
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action stepup-tmin2-thro-vego-increase-from-t1-L-tmin1-L-tmin2-L-t2
                :precondition ( and
                              (ArefPlus)
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action stepdown-tmin1-thro-vego-decrease-from-t1-L-tmin1-L-tmin2-L-t2
                :precondition ( and
                              (ArefMinus)
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action stepdown-t2-from-t1-L-tmin1-L-tmin2-L-t2
                :precondition ( and
                              (v2-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action timeadvance-t2-E-t1-E-tmin1-L-tmin2-v2-E-v1-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (t1-EQUALS-t2)
                              (t1-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                 )
  )

   (:action timeadvance-t2-E-t1-E-tmin1-L-tmin2-v2-L-v1-E-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                              (t1-EQUALS-t2)
                              (t1-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                 )
  )

   (:action timeadvance-t2-E-t1-E-tmin1-L-tmin2-v2-L-v1-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (t1-EQUALS-t2)
                              (t1-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                 )
  )

   (:action timeadvance-t2-E-t1-L-tmin1-L-tmin2-v2-L-v1
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (t1-EQUALS-t2)
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                 )
  )

   (:action stepup-t2-from-t2-L-t1-E-tmin1-L-tmin2
                :precondition ( and
                              (v1-LESSTHAN-v2)
                              (not (v1-EQUALS-v2))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (t1-EQUALS-tmin1)
                              (v1-EQUALS-vego)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-t2)
                              (t2-EQUALS-tmin1)

                )
   )
   (:action timeadvance-t2-L-t1-E-tmin1-L-tmin2-v1-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (t1-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                 )
  )

   (:action stepup-t2-from-t2-L-t1-L-tmin1-L-tmin2
                :precondition ( and
                              (v1-LESSTHAN-v2)
                              (not (v1-EQUALS-v2))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-t2)

                )
   )
   (:action stepup-t1-from-t2-L-t1-L-tmin1-L-tmin2
                :precondition ( and
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vego))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action stepdown-t1-from-t2-L-t1-L-tmin1-L-tmin2
                :precondition ( and
                              (v1-LESSTHAN-v2)
                              (not (v1-EQUALS-v2))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-t2)

                )
   )
   (:action stepdown-tmin1-thro-vego-decrease-from-t2-L-t1-L-tmin1-L-tmin2
                :precondition ( and
                              (ArefMinus)
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin1))
                              (t1-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action timeadvance-t2-E-tmin1-E-t1-L-tmin2-v2-E-vego-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (t2-EQUALS-tmin1)
                              (t1-EQUALS-tmin1)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                 )
  )

   (:action timeadvance-t2-E-tmin1-E-t1-L-tmin2-v2-L-vego-E-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (v1-EQUALS-vego)
                              (t2-EQUALS-tmin1)
                              (t1-EQUALS-tmin1)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                 )
  )

   (:action timeadvance-t2-E-tmin1-E-t1-L-tmin2-v2-L-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (t2-EQUALS-tmin1)
                              (t1-EQUALS-tmin1)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                 )
  )

   (:action timeadvance-t2-E-tmin1-L-t1-E-tmin2-v2-E-vego-S-v1-L-vego
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (t2-EQUALS-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
  )

   (:action timeadvance-t2-E-tmin1-L-t1-E-tmin2-v2-L-vego-S-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (v1-EQUALS-vego)
                              (t2-EQUALS-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                 )
  )

   (:action timeadvance-t2-E-tmin1-L-t1-E-tmin2-v2-L-vego-S-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (t2-EQUALS-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
  )

   (:action stepup-t1-from-t2-E-tmin1-L-t1-L-tmin2
                :precondition ( and
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vego))
                              (t2-EQUALS-tmin1)
                              (v2-EQUALS-vego)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action stepdown-t1-from-t2-E-tmin1-L-t1-L-tmin2
                :precondition ( and
                              (v1-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (t2-EQUALS-tmin1)
                              (v2-EQUALS-vego)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)
                              (t1-EQUALS-t2)

                )
   )
   (:action stepdown-tmin2-thro-vego-decrease-from-t2-E-tmin1-L-t1-L-tmin2
                :precondition ( and
                              (ArefMinus)
                              (t2-EQUALS-tmin1)
                              (v2-EQUALS-vego)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action timeadvance-t2-E-tmin1-L-t1-L-tmin2-v2-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (t2-EQUALS-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                 )
  )

   (:action timeadvance-t2-L-tmin1-E-t1-L-tmin2-vego-L-v1
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (t1-EQUALS-tmin1)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                 )
  )

   (:action stepup-t2-from-t2-L-tmin1-L-t1-E-tmin2
                :precondition ( and
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vego))
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-tmin2)
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepup-tmin1-thro-vego-increase-from-t2-L-tmin1-L-t1-E-tmin2
                :precondition ( and
                              (ArefPlus)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-tmin2)
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)
                              (tmin1-EQUALS-tmin2)

                )
   )
   (:action stepdown-tmin1-thro-vego-decrease-from-t2-L-tmin1-L-t1-E-tmin2
                :precondition ( and
                              (ArefMinus)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-tmin2)
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action timeadvance-t2-L-tmin1-L-t1-E-tmin2-v1-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
  )

   (:action stepup-t2-from-t2-L-tmin1-L-t1-L-tmin2
                :precondition ( and
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vego))
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepup-tmin1-thro-vego-increase-from-t2-L-tmin1-L-t1-L-tmin2
                :precondition ( and
                              (ArefPlus)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action stepup-t1-from-t2-L-tmin1-L-t1-L-tmin2
                :precondition ( and
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vego))
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action stepdown-tmin1-thro-vego-decrease-from-t2-L-tmin1-L-t1-L-tmin2
                :precondition ( and
                              (ArefMinus)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepdown-t1-from-t2-L-tmin1-L-t1-L-tmin2
                :precondition ( and
                              (v1-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action stepdown-tmin2-thro-vego-decrease-from-t2-L-tmin1-L-t1-L-tmin2
                :precondition ( and
                              (ArefMinus)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action timeadvance-t2-E-tmin1-L-tmin2-E-t1-v2-E-vego-S-vego-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (t2-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                 )
  )

   (:action timeadvance-t2-E-tmin1-L-tmin2-E-t1-v2-L-vego-S-vego-E-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (v1-EQUALS-vego)
                              (t2-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                 )
  )

   (:action timeadvance-t2-E-tmin1-L-tmin2-E-t1-v2-L-vego-S-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (t2-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                 )
  )

   (:action stepup-tmin2-thro-vego-increase-from-t2-E-tmin1-L-tmin2-L-t1
                :precondition ( and
                              (ArefPlus)
                              (t2-EQUALS-tmin1)
                              (v2-EQUALS-vego)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action stepdown-t1-from-t2-E-tmin1-L-tmin2-L-t1
                :precondition ( and
                              (v1-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (t2-EQUALS-tmin1)
                              (v2-EQUALS-vego)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action timeadvance-t2-E-tmin1-L-tmin2-L-t1-v2-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (t2-EQUALS-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                 )
  )

   (:action timeadvance-t2-L-tmin1-L-tmin2-E-t1-vego-L-v1
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                 )
  )

   (:action stepup-t2-from-t2-L-tmin1-L-tmin2-L-t1
                :precondition ( and
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vego))
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepup-tmin2-thro-vego-increase-from-t2-L-tmin1-L-tmin2-L-t1
                :precondition ( and
                              (ArefPlus)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action stepdown-tmin1-thro-vego-decrease-from-t2-L-tmin1-L-tmin2-L-t1
                :precondition ( and
                              (ArefMinus)
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepdown-t1-from-t2-L-tmin1-L-tmin2-L-t1
                :precondition ( and
                              (v1-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (t2-EQUALS-tmin1))
                              (t2-LESSTHAN-tmin1)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action timeadvance-tmin1-E-t2-E-t1-L-tmin2-vego-E-v2-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (t2-EQUALS-tmin1)
                              (t1-EQUALS-t2)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                 )
  )

   (:action timeadvance-tmin1-E-t2-E-t1-L-tmin2-vego-L-v2-E-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (t2-EQUALS-tmin1)
                              (t1-EQUALS-t2)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                 )
  )

   (:action timeadvance-tmin1-E-t2-E-t1-L-tmin2-vego-L-v2-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (t2-EQUALS-tmin1)
                              (t1-EQUALS-t2)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                 )
  )

   (:action timeadvance-tmin1-E-t2-L-t1-E-tmin2-vego-E-v2-S-v1-L-vego
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (t2-EQUALS-tmin1)
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
  )

   (:action timeadvance-tmin1-E-t2-L-t1-E-tmin2-vego-L-v2-S-v1-E-vego
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v1-EQUALS-vego)
                              (t2-EQUALS-tmin1)
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                 )
  )

   (:action timeadvance-tmin1-E-t2-L-t1-E-tmin2-vego-L-v2-S-v1-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (t2-EQUALS-tmin1)
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
  )

   (:action timeadvance-tmin1-E-t2-L-t1-L-tmin2-vego-L-v2
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (t2-EQUALS-tmin1)
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                 )
  )

   (:action timeadvance-tmin1-L-t2-E-t1-E-tmin2-v2-E-v1-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t1-EQUALS-t2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
  )

   (:action timeadvance-tmin1-L-t2-E-t1-E-tmin2-v2-L-v1-E-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (v1-EQUALS-vego)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t1-EQUALS-t2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
  )

   (:action timeadvance-tmin1-L-t2-E-t1-E-tmin2-v2-L-v1-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t1-EQUALS-t2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
  )

   (:action timeadvance-tmin1-L-t2-E-t1-L-tmin2-v2-L-v1
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t1-EQUALS-t2)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                 )
  )

   (:action stepup-tmin1-thro-vego-increase-from-tmin1-L-t2-L-t1-E-tmin2
                :precondition ( and
                              (ArefPlus)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (t1-EQUALS-tmin2)
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepup-t2-from-tmin1-L-t2-L-t1-E-tmin2
                :precondition ( and
                              (v1-LESSTHAN-v2)
                              (not (v1-EQUALS-v2))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (t1-EQUALS-tmin2)
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (t1-EQUALS-t2)
                              (t2-EQUALS-tmin2)

                )
   )
   (:action stepdown-t2-from-tmin1-L-t2-L-t1-E-tmin2
                :precondition ( and
                              (v2-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (t1-EQUALS-tmin2)
                              (v1-EQUALS-vego)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action timeadvance-tmin1-L-t2-L-t1-E-tmin2-v1-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
  )

   (:action stepup-tmin1-thro-vego-increase-from-tmin1-L-t2-L-t1-L-tmin2
                :precondition ( and
                              (ArefPlus)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepup-t2-from-tmin1-L-t2-L-t1-L-tmin2
                :precondition ( and
                              (v1-LESSTHAN-v2)
                              (not (v1-EQUALS-v2))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-t2)

                )
   )
   (:action stepup-t1-from-tmin1-L-t2-L-t1-L-tmin2
                :precondition ( and
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vego))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action stepdown-t2-from-tmin1-L-t2-L-t1-L-tmin2
                :precondition ( and
                              (v2-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepdown-t1-from-tmin1-L-t2-L-t1-L-tmin2
                :precondition ( and
                              (v1-LESSTHAN-v2)
                              (not (v1-EQUALS-v2))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-t2)

                )
   )
   (:action stepdown-tmin2-thro-vego-decrease-from-tmin1-L-t2-L-t1-L-tmin2
                :precondition ( and
                              (ArefMinus)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action timeadvance-tmin1-E-t2-L-tmin2-E-t1-vego-E-v2-S-vego-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (t2-EQUALS-tmin1)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                 )
  )

   (:action timeadvance-tmin1-E-t2-L-tmin2-E-t1-vego-L-v2-S-vego-E-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v1-EQUALS-vego)
                              (t2-EQUALS-tmin1)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                 )
  )

   (:action timeadvance-tmin1-E-t2-L-tmin2-E-t1-vego-L-v2-S-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (t2-EQUALS-tmin1)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                 )
  )

   (:action timeadvance-tmin1-E-t2-L-tmin2-L-t1-vego-L-v2
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (t2-EQUALS-tmin1)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                 )
  )

   (:action timeadvance-tmin1-L-t2-E-tmin2-E-t1-v2-E-vego-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t2-EQUALS-tmin2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                 )
  )

   (:action timeadvance-tmin1-L-t2-E-tmin2-E-t1-v2-L-vego-E-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (v1-EQUALS-vego)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t2-EQUALS-tmin2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                 )
  )

   (:action timeadvance-tmin1-L-t2-E-tmin2-E-t1-v2-L-vego-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t2-EQUALS-tmin2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                 )
  )

   (:action stepup-tmin1-thro-vego-increase-from-tmin1-L-t2-E-tmin2-L-t1
                :precondition ( and
                              (ArefPlus)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t2-EQUALS-tmin2)
                              (v2-EQUALS-vego)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin1)
                              (tmin1-EQUALS-tmin2)

                )
   )
   (:action stepdown-t1-from-tmin1-L-t2-E-tmin2-L-t1
                :precondition ( and
                              (v1-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t2-EQUALS-tmin2)
                              (v2-EQUALS-vego)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin2)
                              (t1-EQUALS-t2)

                )
   )
   (:action timeadvance-tmin1-L-t2-E-tmin2-L-t1-v2-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (t2-EQUALS-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
  )

   (:action timeadvance-tmin1-L-t2-L-tmin2-E-t1-vego-L-v1
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (t1-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                 )
  )

   (:action stepup-tmin1-thro-vego-increase-from-tmin1-L-t2-L-tmin2-L-t1
                :precondition ( and
                              (ArefPlus)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepup-t2-from-tmin1-L-t2-L-tmin2-L-t1
                :precondition ( and
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vego))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action stepup-tmin2-thro-vego-increase-from-tmin1-L-t2-L-tmin2-L-t1
                :precondition ( and
                              (ArefPlus)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action stepdown-t2-from-tmin1-L-t2-L-tmin2-L-t1
                :precondition ( and
                              (v2-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepdown-tmin2-thro-vego-decrease-from-tmin1-L-t2-L-tmin2-L-t1
                :precondition ( and
                              (ArefMinus)
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action stepdown-t1-from-tmin1-L-t2-L-tmin2-L-t1
                :precondition ( and
                              (v1-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action timeadvance-tmin1-E-t1-E-t2-L-tmin2-vego-E-v1-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (t1-EQUALS-tmin1)
                              (t1-EQUALS-t2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                 )
  )

   (:action timeadvance-tmin1-E-t1-E-t2-L-tmin2-vego-L-v1-E-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (t1-EQUALS-tmin1)
                              (t1-EQUALS-t2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                 )
  )

   (:action timeadvance-tmin1-E-t1-E-t2-L-tmin2-vego-L-v1-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (t1-EQUALS-tmin1)
                              (t1-EQUALS-t2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin1))
                              (not (t2-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                 )
  )

   (:action timeadvance-tmin1-E-t1-L-t2-E-tmin2-vego-E-v1-S-v2-L-vego
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (t1-EQUALS-tmin1)
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
  )

   (:action timeadvance-tmin1-E-t1-L-t2-E-tmin2-vego-L-v1-S-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v2-EQUALS-vego)
                              (t1-EQUALS-tmin1)
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                 )
  )

   (:action timeadvance-tmin1-E-t1-L-t2-E-tmin2-vego-L-v1-S-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (t1-EQUALS-tmin1)
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
  )

   (:action timeadvance-tmin1-E-t1-L-t2-L-tmin2-vego-L-v1
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (t1-EQUALS-tmin1)
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                 )
  )

   (:action stepup-tmin1-thro-vego-increase-from-tmin1-L-t1-E-t2-E-tmin2
                :precondition ( and
                              (ArefPlus)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-t2)
                              (v1-EQUALS-v2)
                              (t2-EQUALS-tmin2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)
                              (t2-EQUALS-tmin1)
                              (tmin1-EQUALS-tmin2)

                )
   )
   (:action timeadvance-tmin1-L-t1-E-t2-E-tmin2-v1-E-v2-L-vego
                :precondition ( and
                              (v1-EQUALS-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-t2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
  )

   (:action timeadvance-tmin1-L-t1-E-t2-E-tmin2-v1-L-v2-E-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (v2-EQUALS-vego)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-t2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
  )

   (:action timeadvance-tmin1-L-t1-E-t2-E-tmin2-v1-L-v2-L-vego
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-t2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
  )

   (:action stepup-tmin1-thro-vego-increase-from-tmin1-L-t1-E-t2-L-tmin2
                :precondition ( and
                              (ArefPlus)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-t2)
                              (v1-EQUALS-v2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)
                              (t2-EQUALS-tmin1)

                )
   )
   (:action stepdown-tmin2-thro-vego-decrease-from-tmin1-L-t1-E-t2-L-tmin2
                :precondition ( and
                              (ArefMinus)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-t2)
                              (v1-EQUALS-v2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin2)
                              (t1-EQUALS-tmin2)

                )
   )
   (:action timeadvance-tmin1-L-t1-E-t2-L-tmin2-v1-L-v2
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-t2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                 )
  )

   (:action stepup-tmin1-thro-vego-increase-from-tmin1-L-t1-L-t2-E-tmin2
                :precondition ( and
                              (ArefPlus)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (t2-EQUALS-tmin2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action stepup-t1-from-tmin1-L-t1-L-t2-E-tmin2
                :precondition ( and
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-v2))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (t2-EQUALS-tmin2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (t1-EQUALS-t2)
                              (t1-EQUALS-tmin2)

                )
   )
   (:action stepdown-t1-from-tmin1-L-t1-L-t2-E-tmin2
                :precondition ( and
                              (v1-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (t2-EQUALS-tmin2)
                              (v2-EQUALS-vego)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action timeadvance-tmin1-L-t1-L-t2-E-tmin2-v2-L-vego
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (v2-LESSTHAN-vego)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                 )
  )

   (:action stepup-tmin1-thro-vego-increase-from-tmin1-L-t1-L-t2-L-tmin2
                :precondition ( and
                              (ArefPlus)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action stepup-t1-from-tmin1-L-t1-L-t2-L-tmin2
                :precondition ( and
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-v2))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-t2)

                )
   )
   (:action stepup-t2-from-tmin1-L-t1-L-t2-L-tmin2
                :precondition ( and
                              (not (v2-LESSTHAN-vego))
                              (not (v2-EQUALS-vego))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action stepdown-t1-from-tmin1-L-t1-L-t2-L-tmin2
                :precondition ( and
                              (v1-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action stepdown-t2-from-tmin1-L-t1-L-t2-L-tmin2
                :precondition ( and
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-v2))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t1-EQUALS-t2)

                )
   )
   (:action stepdown-tmin2-thro-vego-decrease-from-tmin1-L-t1-L-t2-L-tmin2
                :precondition ( and
                              (ArefMinus)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin2))
                              (t2-LESSTHAN-tmin2)
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action timeadvance-tmin1-E-t1-L-tmin2-E-t2-vego-E-v1-S-vego-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (t1-EQUALS-tmin1)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                 )
  )

   (:action timeadvance-tmin1-E-t1-L-tmin2-E-t2-vego-L-v1-S-vego-E-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v2-EQUALS-vego)
                              (t1-EQUALS-tmin1)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                 )
  )

   (:action timeadvance-tmin1-E-t1-L-tmin2-E-t2-vego-L-v1-S-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (t1-EQUALS-tmin1)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                 )
  )

   (:action timeadvance-tmin1-E-t1-L-tmin2-L-t2-vego-L-v1
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (t1-EQUALS-tmin1)
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                 )
  )

   (:action timeadvance-tmin1-L-t1-E-tmin2-E-t2-v1-E-vego-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-tmin2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                 )
  )

   (:action timeadvance-tmin1-L-t1-E-tmin2-E-t2-v1-L-vego-E-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (v2-EQUALS-vego)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-tmin2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                 )
  )

   (:action timeadvance-tmin1-L-t1-E-tmin2-E-t2-v1-L-vego-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-tmin2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                 )
  )

   (:action stepup-tmin1-thro-vego-increase-from-tmin1-L-t1-E-tmin2-L-t2
                :precondition ( and
                              (ArefPlus)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-tmin2)
                              (v1-EQUALS-vego)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin1)
                              (tmin1-EQUALS-tmin2)

                )
   )
   (:action stepdown-t2-from-tmin1-L-t1-E-tmin2-L-t2
                :precondition ( and
                              (v2-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-tmin2)
                              (v1-EQUALS-vego)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin2)
                              (t1-EQUALS-t2)

                )
   )
   (:action timeadvance-tmin1-L-t1-E-tmin2-L-t2-v1-L-vego
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (v1-LESSTHAN-vego)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (t1-EQUALS-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                 )
  )

   (:action timeadvance-tmin1-L-t1-L-tmin2-E-t2-vego-L-v2
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (t2-EQUALS-tmin2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                 )
  )

   (:action stepup-tmin1-thro-vego-increase-from-tmin1-L-t1-L-tmin2-L-t2
                :precondition ( and
                              (ArefPlus)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action stepup-t1-from-tmin1-L-t1-L-tmin2-L-t2
                :precondition ( and
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-vego))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action stepup-tmin2-thro-vego-increase-from-tmin1-L-t1-L-tmin2-L-t2
                :precondition ( and
                              (ArefPlus)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action stepdown-t1-from-tmin1-L-t1-L-tmin2-L-t2
                :precondition ( and
                              (v1-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin1)

                )
   )
   (:action stepdown-tmin2-thro-vego-decrease-from-tmin1-L-t1-L-tmin2-L-t2
                :precondition ( and
                              (ArefMinus)
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action stepdown-t2-from-tmin1-L-t1-L-tmin2-L-t2
                :precondition ( and
                              (v2-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (t1-EQUALS-tmin1))
                              (not (t1-LESSTHAN-tmin1))
                              (not (t1-EQUALS-tmin2))
                              (t1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action timeadvance-tmin1-L-tmin2-E-t1-E-t2-vego-E-v1-L-v2
                :precondition ( and
                              (v1-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t1-EQUALS-tmin2)
                              (t1-EQUALS-t2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                 )
  )

   (:action timeadvance-tmin1-L-tmin2-E-t1-E-t2-vego-L-v1-E-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t1-EQUALS-tmin2)
                              (t1-EQUALS-t2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                 )
  )

   (:action timeadvance-tmin1-L-tmin2-E-t1-E-t2-vego-L-v1-L-v2
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t1-EQUALS-tmin2)
                              (t1-EQUALS-t2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                 )
  )

   (:action timeadvance-tmin1-L-tmin2-E-t1-L-t2-vego-L-v1
                :precondition ( and
                              (not (v1-EQUALS-vego))
                              (not (v1-LESSTHAN-vego))
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t1-EQUALS-tmin2)
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                 )
  )

   (:action stepup-tmin2-thro-vego-increase-from-tmin1-L-tmin2-L-t1-E-t2
                :precondition ( and
                              (ArefPlus)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                              (t1-EQUALS-t2)
                              (v1-EQUALS-v2)
                )
                :effect ( and
                              (t1-EQUALS-tmin2)
                              (t2-EQUALS-tmin2)

                )
   )
   (:action timeadvance-tmin1-L-tmin2-L-t1-E-t2-v1-L-v2
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (v1-LESSTHAN-v2)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                              (t1-EQUALS-t2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                 )
  )

   (:action stepup-tmin2-thro-vego-increase-from-tmin1-L-tmin2-L-t1-L-t2
                :precondition ( and
                              (ArefPlus)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action stepup-t1-from-tmin1-L-tmin2-L-t1-L-t2
                :precondition ( and
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-v2))
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                )
                :effect ( and
                              (t1-EQUALS-t2)

                )
   )
   (:action stepdown-t1-from-tmin1-L-tmin2-L-t1-L-t2
                :precondition ( and
                              (v1-LESSTHAN-vego)
                              (not (v1-EQUALS-vego))
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                )
                :effect ( and
                              (t1-EQUALS-tmin2)

                )
   )
   (:action stepdown-t2-from-tmin1-L-tmin2-L-t1-L-t2
                :precondition ( and
                              (not (v1-LESSTHAN-v2))
                              (not (v1-EQUALS-v2))
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                              (not (t1-EQUALS-t2))
                              (t1-LESSTHAN-t2)
                )
                :effect ( and
                              (t1-EQUALS-t2)

                )
   )
   (:action timeadvance-tmin1-L-tmin2-E-t2-E-t1-vego-E-v2-L-v1
                :precondition ( and
                              (v2-EQUALS-vego)
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t2-EQUALS-tmin2)
                              (t1-EQUALS-t2)
                 )
                :effect ( and
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                 )
  )

   (:action timeadvance-tmin1-L-tmin2-E-t2-E-t1-vego-L-v2-E-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (v1-EQUALS-v2)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t2-EQUALS-tmin2)
                              (t1-EQUALS-t2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                 )
  )

   (:action timeadvance-tmin1-L-tmin2-E-t2-E-t1-vego-L-v2-L-v1
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t2-EQUALS-tmin2)
                              (t1-EQUALS-t2)
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                              (not (t1-EQUALS-tmin2))
                              (not (t1-LESSTHAN-tmin2))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                 )
  )

   (:action timeadvance-tmin1-L-tmin2-E-t2-L-t1-vego-L-v2
                :precondition ( and
                              (not (v2-EQUALS-vego))
                              (not (v2-LESSTHAN-vego))
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (t2-EQUALS-tmin2)
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                 )
                :effect ( and
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                 )
  )

   (:action timeadvance-tmin1-L-tmin2-L-t2-E-t1-v2-L-v1
                :precondition ( and
                              (not (v1-EQUALS-v2))
                              (not (v1-LESSTHAN-v2))
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                              (t1-EQUALS-t2)
                 )
                :effect ( and
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                 )
  )

   (:action stepup-tmin2-thro-vego-increase-from-tmin1-L-tmin2-L-t2-L-t1
                :precondition ( and
                              (ArefPlus)
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action stepup-t2-from-tmin1-L-tmin2-L-t2-L-t1
                :precondition ( and
                              (v1-LESSTHAN-v2)
                              (not (v1-EQUALS-v2))
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                )
                :effect ( and
                              (t1-EQUALS-t2)

                )
   )
   (:action stepdown-t2-from-tmin1-L-tmin2-L-t2-L-t1
                :precondition ( and
                              (v2-LESSTHAN-vego)
                              (not (v2-EQUALS-vego))
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                )
                :effect ( and
                              (t2-EQUALS-tmin2)

                )
   )
   (:action stepdown-t1-from-tmin1-L-tmin2-L-t2-L-t1
                :precondition ( and
                              (v1-LESSTHAN-v2)
                              (not (v1-EQUALS-v2))
                              (not (tmin1-EQUALS-tmin2))
                              (tmin1-LESSTHAN-tmin2)
                              (not (t2-EQUALS-tmin2))
                              (not (t2-LESSTHAN-tmin2))
                              (not (t1-EQUALS-t2))
                              (not (t1-LESSTHAN-t2))
                )
                :effect ( and
                              (t1-EQUALS-t2)

                )
   )   (:action acc-engage
                :precondition ( and
                     (not (AccEngage))
                )
                :effect ( and
                     (AccEngage)
                )
   )

   (:action acc-disengage
                :precondition ( and
                     (AccEngage)
                )
                :effect ( and
                     (not (AccEngage))
                )
   )

   (:action acc-mark-obstacle-t1
                :precondition ( and
                     (not (Obstacle-t1))
                )
                :effect ( and
                     (Obstacle-t1)
                )
   )

   (:action acc-mark-obstacle-t2
                :precondition ( and
                     (not (Obstacle-t2))
                )
                :effect ( and
                     (Obstacle-t2)
                )
   )

   (:action acc-unmark-obstacle-t1
                :precondition ( and
                     (Obstacle-t1)
                )
                :effect ( and
                     (not (Obstacle-t1))
                )
   )

   (:action acc-unmark-obstacle-t2
                :precondition ( and
                     (Obstacle-t2)
                )
                :effect ( and
                     (not (Obstacle-t2))
                )
   )



   (:action control-speed-mode-accelerate
                :precondition ( and
                    (AccEngage) 
                     (AccSpeedMode)
                     (not (ArefPlus))
                     (not (vego-EQUALS-vref))
                     (vego-LESSTHAN-vref)
                )
                :effect ( and
                     (ArefPlus)
                     (not (ArefMinus))
                     (not (ArefZero))
                )
   )

   (:action control-speed-mode-deccelerate
                :precondition ( and
                    (AccEngage) 
                     (AccSpeedMode)
                     (not (ArefMinus))
                     (not (vego-EQUALS-vref))
                     (not (vego-LESSTHAN-vref))
                )
                :effect ( and
                     (not (ArefPlus))
                     (ArefMinus)
                     (not (ArefZero))
                )
   )

   (:action control-speed-mode-maintainspeed
                :precondition ( and
                    (AccEngage) 
                     (not (ArefZero))
                     (AccSpeedMode)
                     (vego-EQUALS-vref)
                )
                :effect ( and
                     (not (ArefPlus))
                     (not (ArefMinus))
                     (ArefZero)
                )
   )

   (:action control-acc-select-target-t1-LESSTHAN-t2
                :precondition ( and
                     (IsTargetVehicle-t2)
                     (InConsiderationZone-t1)
                     (not (t1-EQUALS-t2))
                     (t1-LESSTHAN-t2)
                )
                :effect ( and
                     (IsTargetVehicle-t1)
                     (not (IsTargetVehicle-t2))
                )
   )

   (:action control-acc-select-target-t2-LESSTHAN-t1
                :precondition ( and
                     (IsTargetVehicle-t1)
                     (InConsiderationZone-t2)
                     (not (t1-EQUALS-t2))
                     (not (t1-LESSTHAN-t2))
                )
                :effect ( and
                     (IsTargetVehicle-t2)
                     (not (IsTargetVehicle-t1))
                )
   )

   (:action control-acc-timegap-mode-following-t1-slowdown
                :precondition ( and
                    (AccEngage) 
                     (AccTimeGapMode)
                     (IsTargetVehicle-t1)
                     (not (t1-EQUALS-tmin2))
                     (t1-LESSTHAN-tmin2)
                     (not (v1-EQUALS-vego))
                     (v1-LESSTHAN-vego)
                     (not (ArefMinus))
                )
                :effect ( and
                     (ArefMinus)
                     (not (ArefPlus))
                     (not (ArefZero))
                )
   )

   (:action control-acc-timegap-mode-following-t2-slowdown
                :precondition ( and
                    (AccEngage) 
                     (AccTimeGapMode)
                     (IsTargetVehicle-t2)
                     (not (t2-EQUALS-tmin2))
                     (t2-LESSTHAN-tmin2)
                     (not (v2-EQUALS-vego))
                     (v2-LESSTHAN-vego)
                     (not (ArefMinus))
                )
                :effect ( and
                     (ArefMinus)
                     (not (ArefPlus))
                     (not (ArefZero))
                )
   )

   (:action control-acc-timegap-mode-following-t1-constant-speed-1
                :precondition ( and
                    (AccEngage) 
                     (AccTimeGapMode)
                     (IsTargetVehicle-t1)
                     (not (t1-EQUALS-tmin2))
                     (t1-LESSTHAN-tmin2)
                     (v1-EQUALS-vego)
                     (not (ArefZero))
                )
                :effect ( and
                     (not (ArefMinus))
                     (not (ArefPlus))
                     (ArefZero)
                )
   )

   (:action control-timegap-mode-following-t1-constant-speed-2
                :precondition ( and
                    (AccEngage) 
                     (AccTimeGapMode)
                     (IsTargetVehicle-t1)
                     (t1-EQUALS-tmin2)
                     (v1-EQUALS-vego)
                     (not (ArefZero))
                )
                :effect ( and
                     (not (ArefMinus))
                     (not (ArefPlus))
                     (ArefZero)
                )
   )

   (:action control-acc-timegap-mode-following-t2-constant-speed-1
                :precondition ( and
                    (AccEngage) 
                     (AccTimeGapMode)
                     (IsTargetVehicle-t2)
                     (not (t2-EQUALS-tmin2))
                     (t2-LESSTHAN-tmin2)
                     (v2-EQUALS-vego)
                     (not (ArefZero))
                )
                :effect ( and
                     (not (ArefMinus))
                     (not (ArefPlus))
                     (ArefZero)
                )
   )

   (:action control-timegap-mode-following-t2-constant-speed-2
                :precondition ( and
                    (AccEngage) 
                     (AccTimeGapMode)
                     (IsTargetVehicle-t2)
                     (t2-EQUALS-tmin2)
                     (v2-EQUALS-vego)
                     (not (ArefZero))
                )
                :effect ( and
                     (not (ArefMinus))
                     (not (ArefPlus))
                     (ArefZero)
                )
   )

   (:action control-timegap-mode-following-t1-speedup
                :precondition ( and
                    (AccEngage) 
                     (AccTimeGapMode)
                     (IsTargetVehicle-t1)
                     (not (t1-EQUALS-tmin1))
                     (not (t1-LESSTHAN-tmin1))
                     (not (vego-EQUALS-vref))
                     (vego-LESSTHAN-vref)
                     (not (v1-EQUALS-vego))
                     (not (v1-LESSTHAN-vego))
                     (not (ArefPlus))
                )
                :effect ( and
                     (not (ArefMinus))
                     (ArefPlus)
                     (not (ArefZero))
                )
   )

   (:action control-timegap-mode-following-t2-speedup
                :precondition ( and
                    (AccEngage) 
                     (AccTimeGapMode)
                     (IsTargetVehicle-t2)
                     (not (t2-EQUALS-tmin1))
                     (not (t2-LESSTHAN-tmin1))
                     (not (vego-EQUALS-vref))
                     (vego-LESSTHAN-vref)
                     (not (v2-EQUALS-vego))
                     (not (v2-LESSTHAN-vego))
                     (not (ArefPlus))
                )
                :effect ( and
                     (not (ArefMinus))
                     (ArefPlus)
                     (not (ArefZero))
                )
   )

   (:action control-acc-limit-speed
                :precondition ( and
                    (AccEngage)
                     (vego-EQUALS-vref)
                     (ArefPlus)
                )
                :effect ( and
                     (not (ArefPlus))
                     (not (ArefMinus))
                     (ArefZero)
                )
   )

   (:action control-timegap-mode-mark-obstacle-t1
                :precondition ( and
                     (not (InConsiderationZone-t1))
                     (not (t1-EQUALS-tmin2))
                     (t1-LESSTHAN-tmin2)
                     (Obstacle-t1)
                )
                :effect ( and
                     (InConsiderationZone-t1)
                )
   )

   (:action control-timegap-mode-unmark-obstacle-t1-1
                :precondition ( and
                     (InConsiderationZone-t1)
                     (not (t1-EQUALS-tmin2))
                     (not (t1-LESSTHAN-tmin2))
                )
                :effect ( and
                     (not (InConsiderationZone-t1))
                )
   )

   (:action control-timegap-mode-unmark-obstacle-t1-2
                :precondition ( and
                     (InConsiderationZone-t1)
                     (not (Obstacle-t1))
                )
                :effect ( and
                     (not (InConsiderationZone-t1))
                )
   )

   (:action control-timegap-mode-mark-obstacle-t2
                :precondition ( and
                     (not (InConsiderationZone-t2))
                     (not (t2-EQUALS-tmin2))
                     (t2-LESSTHAN-tmin2)
                     (Obstacle-t2)
                )
                :effect ( and
                     (InConsiderationZone-t2)
                )
   )

   (:action control-timegap-mode-unmark-obstacle-t2-1
                :precondition ( and
                     (InConsiderationZone-t2)
                     (not (t2-EQUALS-tmin2))
                     (not (t2-LESSTHAN-tmin2))
                )
                :effect ( and
                     (not (InConsiderationZone-t2))
                )
   )

   (:action control-timegap-mode-unmark-obstacle-t2-2
                :precondition ( and
                     (InConsiderationZone-t2)
                     (not (Obstacle-t2))
                )
                :effect ( and
                     (not (InConsiderationZone-t2))
                )
   )

   (:action control-acc-switch-mode-timegap-to-speed
                :precondition ( and
                     (AccEngage)
                     (AccTimeGapMode)
                     (not (InConsiderationZone-t1))
                     (not (InConsiderationZone-t2))
                )
                :effect ( and
                     (not (AccTimeGapMode))
                     (AccSpeedMode)
                )
   )

   (:action control-acc-switch-mode-speed-to-timegap-t1
                :precondition ( and
                     (AccEngage) 
                     (not (AccTimeGapMode))
                     (InConsiderationZone-t1)
                )
                :effect ( and
                     (not (AccSpeedMode))
                     (AccTimeGapMode)
                )
   )

   (:action control-acc-switch-mode-speed-to-timegap-t2
                :precondition ( and
                     (AccEngage) 
                     (not (AccTimeGapMode))
                     (InConsiderationZone-t2)
                )
                :effect ( and
                     (not (AccSpeedMode))
                     (AccTimeGapMode)
                )
   )

   (:action control-acc-select-default-mode
                :precondition ( and
                 (AccEngage) 
                     (not (AccSpeedMode))
                     (not (AccTimeGapMode))
                )
                :effect ( and
                     (AccTimeGapMode)
                )
   )

   (:action control-timegap-mode-critical-slowdown-warn-t1
                :precondition ( and
                    (AccEngage)
                     (InConsiderationZone-t1)
                     (not (t1-EQUALS-tmin1))
                     (t1-LESSTHAN-tmin1)
                     (not (AccSlowDownWarn))
                )
                :effect ( and
                     (AccSlowDownWarn)
                )
   )

   (:action control-timegap-mode-critical-slowdown-warn-t2
                :precondition ( and
                    (AccEngage)
                     (InConsiderationZone-t2)
                     (not (t2-EQUALS-tmin1))
                     (t2-LESSTHAN-tmin1)
                     (not (AccSlowDownWarn))
                )
                :effect ( and
                     (AccSlowDownWarn)
                )
   )

   (:action control-timegap-mode-remove-critical-slowdown-warn-00
                :precondition ( and
                     (not (InConsiderationZone-t1))
                     (not (InConsiderationZone-t2))
                     (AccSlowDownWarn)
                )
                :effect ( and
                     (not (AccSlowDownWarn))
                )
   )

   (:action control-timegap-mode-remove-critical-slowdown-warn-01
                :precondition ( and
                     (not (InConsiderationZone-t1))
                     (not (t2-EQUALS-tmin1))
                     (not (t2-LESSTHAN-tmin1))
                     (AccSlowDownWarn)
                )
                :effect ( and
                     (not (AccSlowDownWarn))
                )
   )

   (:action control-timegap-mode-remove-critical-slowdown-warn-10
                :precondition ( and
                     (not (InConsiderationZone-t2))
                     (not (t1-EQUALS-tmin1))
                     (not (t1-LESSTHAN-tmin1))
                     (AccSlowDownWarn)
                )
                :effect ( and
                     (not (AccSlowDownWarn))
                )
   )

   (:action control-timegap-mode-remove-critical-slowdown-warn-11
                :precondition ( and
                     (not (t1-EQUALS-tmin1))
                     (not (t1-LESSTHAN-tmin1))
                     (not (t2-EQUALS-tmin1))
                     (not (t2-LESSTHAN-tmin1))
                     (AccSlowDownWarn)
                )
                :effect ( and
                     (not (AccSlowDownWarn))
                )
   )
   (:action control-acc-select-target-random-t1
                :precondition ( and
                     (not (IsTargetVehicle-t1))
                     (not (IsTargetVehicle-t2))
		     (InConsiderationZone-t1)
                )
                :effect ( and
                     (IsTargetVehicle-t1)
                )
   )

   (:action control-acc-select-target-random-t2
                :precondition ( and
                     (not (IsTargetVehicle-t1))
                     (not (IsTargetVehicle-t2))
		     (InConsiderationZone-t2)
                )
                :effect ( and
                     (IsTargetVehicle-t2)
                )
   )

   (:action control-acc-deselect-target-t1
                :precondition ( and
                     (IsTargetVehicle-t1)
		     (not (InConsiderationZone-t1))
                )
                :effect ( and
                     (not (IsTargetVehicle-t1))
                )
   )

   (:action control-acc-deselect-target-t2
                :precondition ( and
                     (IsTargetVehicle-t2)
		     (not (InConsiderationZone-t2))
                )
                :effect ( and
                     (not (IsTargetVehicle-t2))
                )
   )



)
