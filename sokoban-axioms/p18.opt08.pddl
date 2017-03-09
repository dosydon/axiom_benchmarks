(DEFINE (PROBLEM P148-MICROBAN-SEQUENTIAL) (:DOMAIN SOKOBAN-SEQUENTIAL)
 (:OBJECTS STONE-04 - STONE STONE-03 - STONE STONE-02 - STONE STONE-01 - STONE
  POS-15-07 - LOCATION POS-15-06 - LOCATION POS-15-05 - LOCATION POS-15-04 -
  LOCATION POS-15-03 - LOCATION POS-15-02 - LOCATION POS-15-01 - LOCATION
  POS-14-07 - LOCATION POS-14-06 - LOCATION POS-14-05 - LOCATION POS-14-04 -
  LOCATION POS-14-03 - LOCATION POS-14-02 - LOCATION POS-14-01 - LOCATION
  POS-13-07 - LOCATION POS-13-06 - LOCATION POS-13-05 - LOCATION POS-13-04 -
  LOCATION POS-13-03 - LOCATION POS-13-02 - LOCATION POS-13-01 - LOCATION
  POS-12-07 - LOCATION POS-12-06 - LOCATION POS-12-05 - LOCATION POS-12-04 -
  LOCATION POS-12-03 - LOCATION POS-12-02 - LOCATION POS-12-01 - LOCATION
  POS-11-07 - LOCATION POS-11-06 - LOCATION POS-11-05 - LOCATION POS-11-04 -
  LOCATION POS-11-03 - LOCATION POS-11-02 - LOCATION POS-11-01 - LOCATION
  POS-10-07 - LOCATION POS-10-06 - LOCATION POS-10-05 - LOCATION POS-10-04 -
  LOCATION POS-10-03 - LOCATION POS-10-02 - LOCATION POS-10-01 - LOCATION
  POS-09-07 - LOCATION POS-09-06 - LOCATION POS-09-05 - LOCATION POS-09-04 -
  LOCATION POS-09-03 - LOCATION POS-09-02 - LOCATION POS-09-01 - LOCATION
  POS-08-07 - LOCATION POS-08-06 - LOCATION POS-08-05 - LOCATION POS-08-04 -
  LOCATION POS-08-03 - LOCATION POS-08-02 - LOCATION POS-08-01 - LOCATION
  POS-07-07 - LOCATION POS-07-06 - LOCATION POS-07-05 - LOCATION POS-07-04 -
  LOCATION POS-07-03 - LOCATION POS-07-02 - LOCATION POS-07-01 - LOCATION
  POS-06-07 - LOCATION POS-06-06 - LOCATION POS-06-05 - LOCATION POS-06-04 -
  LOCATION POS-06-03 - LOCATION POS-06-02 - LOCATION POS-06-01 - LOCATION
  POS-05-07 - LOCATION POS-05-06 - LOCATION POS-05-05 - LOCATION POS-05-04 -
  LOCATION POS-05-03 - LOCATION POS-05-02 - LOCATION POS-05-01 - LOCATION
  POS-04-07 - LOCATION POS-04-06 - LOCATION POS-04-05 - LOCATION POS-04-04 -
  LOCATION POS-04-03 - LOCATION POS-04-02 - LOCATION POS-04-01 - LOCATION
  POS-03-07 - LOCATION POS-03-06 - LOCATION POS-03-05 - LOCATION POS-03-04 -
  LOCATION POS-03-03 - LOCATION POS-03-02 - LOCATION POS-03-01 - LOCATION
  POS-02-07 - LOCATION POS-02-06 - LOCATION POS-02-05 - LOCATION POS-02-04 -
  LOCATION POS-02-03 - LOCATION POS-02-02 - LOCATION POS-02-01 - LOCATION
  POS-01-07 - LOCATION POS-01-06 - LOCATION POS-01-05 - LOCATION POS-01-04 -
  LOCATION POS-01-03 - LOCATION POS-01-02 - LOCATION POS-01-01 - LOCATION
  PLAYER-01 - PLAYER DIR-UP - DIRECTION DIR-RIGHT - DIRECTION DIR-LEFT -
  DIRECTION DIR-DOWN - DIRECTION)
 (:INIT (IS-GOAL POS-04-02) (IS-GOAL POS-04-03) (IS-GOAL POS-05-04)
  (IS-GOAL POS-06-04) (IS-NONGOAL POS-01-01) (IS-NONGOAL POS-01-02)
  (IS-NONGOAL POS-01-03) (IS-NONGOAL POS-01-04) (IS-NONGOAL POS-01-05)
  (IS-NONGOAL POS-01-06) (IS-NONGOAL POS-01-07) (IS-NONGOAL POS-02-01)
  (IS-NONGOAL POS-02-02) (IS-NONGOAL POS-02-03) (IS-NONGOAL POS-02-04)
  (IS-NONGOAL POS-02-05) (IS-NONGOAL POS-02-06) (IS-NONGOAL POS-02-07)
  (IS-NONGOAL POS-03-01) (IS-NONGOAL POS-03-02) (IS-NONGOAL POS-03-03)
  (IS-NONGOAL POS-03-04) (IS-NONGOAL POS-03-05) (IS-NONGOAL POS-03-06)
  (IS-NONGOAL POS-03-07) (IS-NONGOAL POS-04-01) (IS-NONGOAL POS-04-04)
  (IS-NONGOAL POS-04-05) (IS-NONGOAL POS-04-06) (IS-NONGOAL POS-04-07)
  (IS-NONGOAL POS-05-01) (IS-NONGOAL POS-05-02) (IS-NONGOAL POS-05-03)
  (IS-NONGOAL POS-05-05) (IS-NONGOAL POS-05-06) (IS-NONGOAL POS-05-07)
  (IS-NONGOAL POS-06-01) (IS-NONGOAL POS-06-02) (IS-NONGOAL POS-06-03)
  (IS-NONGOAL POS-06-05) (IS-NONGOAL POS-06-06) (IS-NONGOAL POS-06-07)
  (IS-NONGOAL POS-07-01) (IS-NONGOAL POS-07-02) (IS-NONGOAL POS-07-03)
  (IS-NONGOAL POS-07-04) (IS-NONGOAL POS-07-05) (IS-NONGOAL POS-07-06)
  (IS-NONGOAL POS-07-07) (IS-NONGOAL POS-08-01) (IS-NONGOAL POS-08-02)
  (IS-NONGOAL POS-08-03) (IS-NONGOAL POS-08-04) (IS-NONGOAL POS-08-05)
  (IS-NONGOAL POS-08-06) (IS-NONGOAL POS-08-07) (IS-NONGOAL POS-09-01)
  (IS-NONGOAL POS-09-02) (IS-NONGOAL POS-09-03) (IS-NONGOAL POS-09-04)
  (IS-NONGOAL POS-09-05) (IS-NONGOAL POS-09-06) (IS-NONGOAL POS-09-07)
  (IS-NONGOAL POS-10-01) (IS-NONGOAL POS-10-02) (IS-NONGOAL POS-10-03)
  (IS-NONGOAL POS-10-04) (IS-NONGOAL POS-10-05) (IS-NONGOAL POS-10-06)
  (IS-NONGOAL POS-10-07) (IS-NONGOAL POS-11-01) (IS-NONGOAL POS-11-02)
  (IS-NONGOAL POS-11-03) (IS-NONGOAL POS-11-04) (IS-NONGOAL POS-11-05)
  (IS-NONGOAL POS-11-06) (IS-NONGOAL POS-11-07) (IS-NONGOAL POS-12-01)
  (IS-NONGOAL POS-12-02) (IS-NONGOAL POS-12-03) (IS-NONGOAL POS-12-04)
  (IS-NONGOAL POS-12-05) (IS-NONGOAL POS-12-06) (IS-NONGOAL POS-12-07)
  (IS-NONGOAL POS-13-01) (IS-NONGOAL POS-13-02) (IS-NONGOAL POS-13-03)
  (IS-NONGOAL POS-13-04) (IS-NONGOAL POS-13-05) (IS-NONGOAL POS-13-06)
  (IS-NONGOAL POS-13-07) (IS-NONGOAL POS-14-01) (IS-NONGOAL POS-14-02)
  (IS-NONGOAL POS-14-03) (IS-NONGOAL POS-14-04) (IS-NONGOAL POS-14-05)
  (IS-NONGOAL POS-14-06) (IS-NONGOAL POS-14-07) (IS-NONGOAL POS-15-01)
  (IS-NONGOAL POS-15-02) (IS-NONGOAL POS-15-03) (IS-NONGOAL POS-15-04)
  (IS-NONGOAL POS-15-05) (IS-NONGOAL POS-15-06) (IS-NONGOAL POS-15-07)
  (MOVE-DIR POS-01-06 POS-01-07 DIR-DOWN) (MOVE-DIR POS-01-07 POS-01-06 DIR-UP)
  (MOVE-DIR POS-01-07 POS-02-07 DIR-RIGHT)
  (MOVE-DIR POS-02-02 POS-02-03 DIR-DOWN)
  (MOVE-DIR POS-02-02 POS-03-02 DIR-RIGHT)
  (MOVE-DIR POS-02-03 POS-02-02 DIR-UP) (MOVE-DIR POS-02-03 POS-02-04 DIR-DOWN)
  (MOVE-DIR POS-02-04 POS-02-03 DIR-UP)
  (MOVE-DIR POS-02-04 POS-03-04 DIR-RIGHT)
  (MOVE-DIR POS-02-07 POS-01-07 DIR-LEFT)
  (MOVE-DIR POS-03-02 POS-02-02 DIR-LEFT)
  (MOVE-DIR POS-03-02 POS-04-02 DIR-RIGHT)
  (MOVE-DIR POS-03-04 POS-02-04 DIR-LEFT)
  (MOVE-DIR POS-03-04 POS-03-05 DIR-DOWN) (MOVE-DIR POS-03-05 POS-03-04 DIR-UP)
  (MOVE-DIR POS-03-05 POS-04-05 DIR-RIGHT)
  (MOVE-DIR POS-04-02 POS-03-02 DIR-LEFT)
  (MOVE-DIR POS-04-02 POS-04-03 DIR-DOWN)
  (MOVE-DIR POS-04-02 POS-05-02 DIR-RIGHT)
  (MOVE-DIR POS-04-03 POS-04-02 DIR-UP)
  (MOVE-DIR POS-04-03 POS-05-03 DIR-RIGHT)
  (MOVE-DIR POS-04-05 POS-03-05 DIR-LEFT)
  (MOVE-DIR POS-04-05 POS-04-06 DIR-DOWN) (MOVE-DIR POS-04-06 POS-04-05 DIR-UP)
  (MOVE-DIR POS-04-06 POS-05-06 DIR-RIGHT)
  (MOVE-DIR POS-05-02 POS-04-02 DIR-LEFT)
  (MOVE-DIR POS-05-02 POS-05-03 DIR-DOWN)
  (MOVE-DIR POS-05-02 POS-06-02 DIR-RIGHT)
  (MOVE-DIR POS-05-03 POS-04-03 DIR-LEFT) (MOVE-DIR POS-05-03 POS-05-02 DIR-UP)
  (MOVE-DIR POS-05-03 POS-05-04 DIR-DOWN)
  (MOVE-DIR POS-05-03 POS-06-03 DIR-RIGHT)
  (MOVE-DIR POS-05-04 POS-05-03 DIR-UP)
  (MOVE-DIR POS-05-04 POS-06-04 DIR-RIGHT)
  (MOVE-DIR POS-05-06 POS-04-06 DIR-LEFT)
  (MOVE-DIR POS-05-06 POS-06-06 DIR-RIGHT)
  (MOVE-DIR POS-06-02 POS-05-02 DIR-LEFT)
  (MOVE-DIR POS-06-02 POS-06-03 DIR-DOWN)
  (MOVE-DIR POS-06-03 POS-05-03 DIR-LEFT) (MOVE-DIR POS-06-03 POS-06-02 DIR-UP)
  (MOVE-DIR POS-06-03 POS-06-04 DIR-DOWN)
  (MOVE-DIR POS-06-03 POS-07-03 DIR-RIGHT)
  (MOVE-DIR POS-06-04 POS-05-04 DIR-LEFT) (MOVE-DIR POS-06-04 POS-06-03 DIR-UP)
  (MOVE-DIR POS-06-06 POS-05-06 DIR-LEFT)
  (MOVE-DIR POS-06-06 POS-07-06 DIR-RIGHT)
  (MOVE-DIR POS-07-03 POS-06-03 DIR-LEFT)
  (MOVE-DIR POS-07-03 POS-08-03 DIR-RIGHT)
  (MOVE-DIR POS-07-05 POS-07-06 DIR-DOWN)
  (MOVE-DIR POS-07-05 POS-08-05 DIR-RIGHT)
  (MOVE-DIR POS-07-06 POS-06-06 DIR-LEFT) (MOVE-DIR POS-07-06 POS-07-05 DIR-UP)
  (MOVE-DIR POS-07-06 POS-08-06 DIR-RIGHT)
  (MOVE-DIR POS-08-02 POS-08-03 DIR-DOWN)
  (MOVE-DIR POS-08-02 POS-09-02 DIR-RIGHT)
  (MOVE-DIR POS-08-03 POS-07-03 DIR-LEFT) (MOVE-DIR POS-08-03 POS-08-02 DIR-UP)
  (MOVE-DIR POS-08-03 POS-08-04 DIR-DOWN)
  (MOVE-DIR POS-08-03 POS-09-03 DIR-RIGHT)
  (MOVE-DIR POS-08-04 POS-08-03 DIR-UP) (MOVE-DIR POS-08-04 POS-08-05 DIR-DOWN)
  (MOVE-DIR POS-08-05 POS-07-05 DIR-LEFT) (MOVE-DIR POS-08-05 POS-08-04 DIR-UP)
  (MOVE-DIR POS-08-05 POS-08-06 DIR-DOWN)
  (MOVE-DIR POS-08-05 POS-09-05 DIR-RIGHT)
  (MOVE-DIR POS-08-06 POS-07-06 DIR-LEFT) (MOVE-DIR POS-08-06 POS-08-05 DIR-UP)
  (MOVE-DIR POS-08-06 POS-09-06 DIR-RIGHT)
  (MOVE-DIR POS-09-02 POS-08-02 DIR-LEFT)
  (MOVE-DIR POS-09-02 POS-09-03 DIR-DOWN)
  (MOVE-DIR POS-09-02 POS-10-02 DIR-RIGHT)
  (MOVE-DIR POS-09-03 POS-08-03 DIR-LEFT) (MOVE-DIR POS-09-03 POS-09-02 DIR-UP)
  (MOVE-DIR POS-09-03 POS-10-03 DIR-RIGHT)
  (MOVE-DIR POS-09-05 POS-08-05 DIR-LEFT)
  (MOVE-DIR POS-09-05 POS-09-06 DIR-DOWN)
  (MOVE-DIR POS-09-05 POS-10-05 DIR-RIGHT)
  (MOVE-DIR POS-09-06 POS-08-06 DIR-LEFT) (MOVE-DIR POS-09-06 POS-09-05 DIR-UP)
  (MOVE-DIR POS-09-06 POS-10-06 DIR-RIGHT)
  (MOVE-DIR POS-10-02 POS-09-02 DIR-LEFT)
  (MOVE-DIR POS-10-02 POS-10-03 DIR-DOWN)
  (MOVE-DIR POS-10-03 POS-09-03 DIR-LEFT) (MOVE-DIR POS-10-03 POS-10-02 DIR-UP)
  (MOVE-DIR POS-10-05 POS-09-05 DIR-LEFT)
  (MOVE-DIR POS-10-05 POS-10-06 DIR-DOWN)
  (MOVE-DIR POS-10-05 POS-11-05 DIR-RIGHT)
  (MOVE-DIR POS-10-06 POS-09-06 DIR-LEFT) (MOVE-DIR POS-10-06 POS-10-05 DIR-UP)
  (MOVE-DIR POS-10-06 POS-11-06 DIR-RIGHT)
  (MOVE-DIR POS-11-05 POS-10-05 DIR-LEFT)
  (MOVE-DIR POS-11-05 POS-11-06 DIR-DOWN)
  (MOVE-DIR POS-11-05 POS-12-05 DIR-RIGHT)
  (MOVE-DIR POS-11-06 POS-10-06 DIR-LEFT) (MOVE-DIR POS-11-06 POS-11-05 DIR-UP)
  (MOVE-DIR POS-11-06 POS-12-06 DIR-RIGHT)
  (MOVE-DIR POS-12-01 POS-12-02 DIR-DOWN)
  (MOVE-DIR POS-12-01 POS-13-01 DIR-RIGHT)
  (MOVE-DIR POS-12-02 POS-12-01 DIR-UP) (MOVE-DIR POS-12-02 POS-12-03 DIR-DOWN)
  (MOVE-DIR POS-12-02 POS-13-02 DIR-RIGHT)
  (MOVE-DIR POS-12-03 POS-12-02 DIR-UP)
  (MOVE-DIR POS-12-03 POS-13-03 DIR-RIGHT)
  (MOVE-DIR POS-12-05 POS-11-05 DIR-LEFT)
  (MOVE-DIR POS-12-05 POS-12-06 DIR-DOWN)
  (MOVE-DIR POS-12-05 POS-13-05 DIR-RIGHT)
  (MOVE-DIR POS-12-06 POS-11-06 DIR-LEFT) (MOVE-DIR POS-12-06 POS-12-05 DIR-UP)
  (MOVE-DIR POS-12-06 POS-13-06 DIR-RIGHT)
  (MOVE-DIR POS-13-01 POS-12-01 DIR-LEFT)
  (MOVE-DIR POS-13-01 POS-13-02 DIR-DOWN)
  (MOVE-DIR POS-13-01 POS-14-01 DIR-RIGHT)
  (MOVE-DIR POS-13-02 POS-12-02 DIR-LEFT) (MOVE-DIR POS-13-02 POS-13-01 DIR-UP)
  (MOVE-DIR POS-13-02 POS-13-03 DIR-DOWN)
  (MOVE-DIR POS-13-02 POS-14-02 DIR-RIGHT)
  (MOVE-DIR POS-13-03 POS-12-03 DIR-LEFT) (MOVE-DIR POS-13-03 POS-13-02 DIR-UP)
  (MOVE-DIR POS-13-03 POS-14-03 DIR-RIGHT)
  (MOVE-DIR POS-13-05 POS-12-05 DIR-LEFT)
  (MOVE-DIR POS-13-05 POS-13-06 DIR-DOWN)
  (MOVE-DIR POS-13-05 POS-14-05 DIR-RIGHT)
  (MOVE-DIR POS-13-06 POS-12-06 DIR-LEFT) (MOVE-DIR POS-13-06 POS-13-05 DIR-UP)
  (MOVE-DIR POS-13-06 POS-14-06 DIR-RIGHT)
  (MOVE-DIR POS-14-01 POS-13-01 DIR-LEFT)
  (MOVE-DIR POS-14-01 POS-14-02 DIR-DOWN)
  (MOVE-DIR POS-14-01 POS-15-01 DIR-RIGHT)
  (MOVE-DIR POS-14-02 POS-13-02 DIR-LEFT) (MOVE-DIR POS-14-02 POS-14-01 DIR-UP)
  (MOVE-DIR POS-14-02 POS-14-03 DIR-DOWN)
  (MOVE-DIR POS-14-02 POS-15-02 DIR-RIGHT)
  (MOVE-DIR POS-14-03 POS-13-03 DIR-LEFT) (MOVE-DIR POS-14-03 POS-14-02 DIR-UP)
  (MOVE-DIR POS-14-03 POS-15-03 DIR-RIGHT)
  (MOVE-DIR POS-14-05 POS-13-05 DIR-LEFT)
  (MOVE-DIR POS-14-05 POS-14-06 DIR-DOWN)
  (MOVE-DIR POS-14-06 POS-13-06 DIR-LEFT) (MOVE-DIR POS-14-06 POS-14-05 DIR-UP)
  (MOVE-DIR POS-15-01 POS-14-01 DIR-LEFT)
  (MOVE-DIR POS-15-01 POS-15-02 DIR-DOWN)
  (MOVE-DIR POS-15-02 POS-14-02 DIR-LEFT) (MOVE-DIR POS-15-02 POS-15-01 DIR-UP)
  (MOVE-DIR POS-15-02 POS-15-03 DIR-DOWN)
  (MOVE-DIR POS-15-03 POS-14-03 DIR-LEFT) (MOVE-DIR POS-15-03 POS-15-02 DIR-UP)
  (AT PLAYER-01 POS-07-03) (AT STONE-01 POS-08-05) (AT STONE-02 POS-09-05)
  (AT STONE-03 POS-11-05) (AT STONE-04 POS-13-05) (= (TOTAL-COST) 0))
 (:GOAL
  (AND (AT-GOAL STONE-01)
       (AT-GOAL STONE-02)
       (AT-GOAL STONE-03)
       (AT-GOAL STONE-04)))
 (:METRIC MINIMIZE (TOTAL-COST)))
