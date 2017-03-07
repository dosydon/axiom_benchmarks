(DEFINE (PROBLEM GOODGOAL6) (:DOMAIN PLAINACC) (:OBJECTS)
 (:INIT (T1-LESSTHAN-T2) (TMIN1-LESSTHAN-TMIN2) (V1-EQUALS-V2) (V1-EQUALS-VEGO)
  (V1-LESSTHAN-VREF) (V2-EQUALS-VEGO) (V2-LESSTHAN-VREF) (VEGO-LESSTHAN-VREF)
  (D1-LESSTHAN-D2) (AREFZERO) (ACCSPEEDMODE) (ACCENGAGE) (ACCENABLE)
  (= (TOTAL-COST) 0))
 (:GOAL
  (AND (ACCENGAGE)
       (NOT (VEGO-EQUALS-VREF))
       (NOT (VEGO-LESSTHAN-VREF))
       (AREFMINUS)
       (DISABLED-CONTROL-ACC-DESELECT-TARGET-T2)
       (DISABLED-CONTROL-ACC-DESELECT-TARGET-T1)
       (DISABLED-CONTROL-ACC-SELECT-TARGET-RANDOM-T2)
       (DISABLED-CONTROL-ACC-SELECT-TARGET-RANDOM-T1)
       (DISABLED-CONTROL-TIMEGAP-MODE-REMOVE-CRITICAL-SLOWDOWN-WARN-11)
       (DISABLED-CONTROL-TIMEGAP-MODE-REMOVE-CRITICAL-SLOWDOWN-WARN-10)
       (DISABLED-CONTROL-TIMEGAP-MODE-REMOVE-CRITICAL-SLOWDOWN-WARN-01)
       (DISABLED-CONTROL-TIMEGAP-MODE-REMOVE-CRITICAL-SLOWDOWN-WARN-00)
       (DISABLED-CONTROL-TIMEGAP-MODE-CRITICAL-SLOWDOWN-WARN-T2)
       (DISABLED-CONTROL-TIMEGAP-MODE-CRITICAL-SLOWDOWN-WARN-T1)
       (DISABLED-CONTROL-ACC-SELECT-DEFAULT-MODE)
       (DISABLED-CONTROL-ACC-SWITCH-MODE-SPEED-TO-TIMEGAP-T2)
       (DISABLED-CONTROL-ACC-SWITCH-MODE-SPEED-TO-TIMEGAP-T1)
       (DISABLED-CONTROL-ACC-SWITCH-MODE-TIMEGAP-TO-SPEED)
       (DISABLED-CONTROL-TIMEGAP-MODE-UNMARK-OBSTACLE-T2-2)
       (DISABLED-CONTROL-TIMEGAP-MODE-UNMARK-OBSTACLE-T2-1)
       (DISABLED-CONTROL-TIMEGAP-MODE-MARK-OBSTACLE-T2)
       (DISABLED-CONTROL-TIMEGAP-MODE-UNMARK-OBSTACLE-T1-2)
       (DISABLED-CONTROL-TIMEGAP-MODE-UNMARK-OBSTACLE-T1-1)
       (DISABLED-CONTROL-TIMEGAP-MODE-MARK-OBSTACLE-T1)
       (DISABLED-CONTROL-ACC-LIMIT-SPEED)
       (DISABLED-CONTROL-TIMEGAP-MODE-FOLLOWING-T2-SPEEDUP)
       (DISABLED-CONTROL-TIMEGAP-MODE-FOLLOWING-T1-SPEEDUP)
       (DISABLED-CONTROL-TIMEGAP-MODE-FOLLOWING-T2-CONSTANT-SPEED-2)
       (DISABLED-CONTROL-ACC-TIMEGAP-MODE-FOLLOWING-T2-CONSTANT-SPEED-1)
       (DISABLED-CONTROL-TIMEGAP-MODE-FOLLOWING-T1-CONSTANT-SPEED-2)
       (DISABLED-CONTROL-ACC-TIMEGAP-MODE-FOLLOWING-T1-CONSTANT-SPEED-1)
       (DISABLED-CONTROL-ACC-TIMEGAP-MODE-FOLLOWING-T2-SLOWDOWN)
       (DISABLED-CONTROL-ACC-TIMEGAP-MODE-FOLLOWING-T1-SLOWDOWN)
       (DISABLED-CONTROL-ACC-SELECT-TARGET-T2-LESSTHAN-T1)
       (DISABLED-CONTROL-ACC-SELECT-TARGET-T1-LESSTHAN-T2)
       (DISABLED-CONTROL-SPEED-MODE-MAINTAINSPEED)
       (DISABLED-CONTROL-SPEED-MODE-DECCELERATE)
       (DISABLED-CONTROL-SPEED-MODE-ACCELERATE)))
 (:METRIC :MINIMIZE (TOTAL-COST)))
