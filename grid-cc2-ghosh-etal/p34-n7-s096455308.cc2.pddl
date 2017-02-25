(DEFINE (PROBLEM N7-S96455308) (:DOMAIN GRID)
 (:OBJECTS BORDER - CELL E1 - CELL E0 - CELL D2 - CELL D1 - CELL D0 - CELL C2 -
  CELL C1 - CELL B2 - CELL A2 - CELL RIGHT - SIDE LEFT - SIDE DOWN - SIDE UP -
  SIDE)
 (:INIT (DISPENSER A2) (PROC B2) (DISPENSER C1) (PROC C2) (PROC D0) (PROC D1)
  (PROC D2) (PROC E0) (PROC E1) (REJECT A2 LEFT) (REJECT A2 RIGHT)
  (REJECT A2 UP) (REJECT A2 DOWN) (AVAILABLE B2) (REJECT C1 LEFT)
  (REJECT C1 RIGHT) (REJECT C1 UP) (REJECT C1 DOWN) (AVAILABLE C2)
  (AVAILABLE D0) (AVAILABLE D1) (AVAILABLE D2) (AVAILABLE E0) (AVAILABLE E1)
  (REJECT BORDER LEFT) (REJECT BORDER RIGHT) (REJECT BORDER UP)
  (REJECT BORDER DOWN) (NEIGHBOUR LEFT BORDER A2) (NEIGHBOUR RIGHT A2 BORDER)
  (NEIGHBOUR RIGHT BORDER A2) (NEIGHBOUR LEFT A2 BORDER)
  (NEIGHBOUR UP BORDER A2) (NEIGHBOUR DOWN A2 BORDER) (NEIGHBOUR DOWN B2 A2)
  (NEIGHBOUR UP A2 B2) (NEIGHBOUR LEFT BORDER B2) (NEIGHBOUR RIGHT B2 BORDER)
  (NEIGHBOUR RIGHT BORDER B2) (NEIGHBOUR LEFT B2 BORDER) (NEIGHBOUR DOWN C2 B2)
  (NEIGHBOUR UP B2 C2) (NEIGHBOUR LEFT BORDER C1) (NEIGHBOUR RIGHT C1 BORDER)
  (NEIGHBOUR RIGHT C2 C1) (NEIGHBOUR LEFT C1 C2) (NEIGHBOUR UP BORDER C1)
  (NEIGHBOUR DOWN C1 BORDER) (NEIGHBOUR DOWN D1 C1) (NEIGHBOUR UP C1 D1)
  (NEIGHBOUR RIGHT BORDER C2) (NEIGHBOUR LEFT C2 BORDER) (NEIGHBOUR DOWN D2 C2)
  (NEIGHBOUR UP C2 D2) (NEIGHBOUR LEFT BORDER D0) (NEIGHBOUR RIGHT D0 BORDER)
  (NEIGHBOUR RIGHT D1 D0) (NEIGHBOUR LEFT D0 D1) (NEIGHBOUR UP BORDER D0)
  (NEIGHBOUR DOWN D0 BORDER) (NEIGHBOUR DOWN E0 D0) (NEIGHBOUR UP D0 E0)
  (NEIGHBOUR RIGHT D2 D1) (NEIGHBOUR LEFT D1 D2) (NEIGHBOUR DOWN E1 D1)
  (NEIGHBOUR UP D1 E1) (NEIGHBOUR RIGHT BORDER D2) (NEIGHBOUR LEFT D2 BORDER)
  (NEIGHBOUR DOWN BORDER D2) (NEIGHBOUR UP D2 BORDER)
  (NEIGHBOUR LEFT BORDER E0) (NEIGHBOUR RIGHT E0 BORDER)
  (NEIGHBOUR RIGHT E1 E0) (NEIGHBOUR LEFT E0 E1) (NEIGHBOUR DOWN BORDER E0)
  (NEIGHBOUR UP E0 BORDER) (NEIGHBOUR RIGHT BORDER E1)
  (NEIGHBOUR LEFT E1 BORDER) (NEIGHBOUR DOWN BORDER E1)
  (NEIGHBOUR UP E1 BORDER))
 (:GOAL
  (AND (BUSY B2)
       (BUSY C2)
       (BUSY D0)
       (BUSY D1)
       (BUSY E0)
       (BUSY E1)
       (FORALL (?C - CELL) (DISABLED-CONTROL-NEWJOB-GET-BUSY ?C))
       (FORALL (?P - CELL ?N1 - CELL ?S1 - SIDE ?S1OP - SIDE)
        (DISABLED-CONTROL-LOST-ACCEPTED-REQUEST ?P ?N1 ?S1 ?S1OP))
       (FORALL (?P - CELL ?N1 - CELL ?S1 - SIDE ?S1OP - SIDE)
        (DISABLED-CONTROL-LOST-REQUEST ?P ?N1 ?S1 ?S1OP))
       (FORALL (?P - CELL ?N1 - CELL ?S1 - SIDE ?S1OP - SIDE)
        (DISABLED-CONTROL-FINISH-RECD ?P ?N1 ?S1 ?S1OP))
       (FORALL (?P - CELL ?N1 - CELL ?S1 - SIDE ?S1OP - SIDE)
        (DISABLED-CONTROL-MARK-SENT ?P ?N1 ?S1 ?S1OP))
       (FORALL (?P - CELL ?N1 - CELL ?S1 - SIDE ?S1OP - SIDE)
        (DISABLED-CONTROL-RECV ?P ?N1 ?S1 ?S1OP))
       (FORALL (?P - CELL ?N1 - CELL ?S1 - SIDE ?S1OP - SIDE)
        (DISABLED-CONTROL-SEND ?P ?N1 ?S1 ?S1OP))
       (FORALL (?C - CELL ?N1 - CELL ?N2 - CELL ?N3 - CELL)
        (DISABLED-CONTROL-REJECT-PARENT-DOWN ?C ?N1 ?N2 ?N3))
       (FORALL (?C - CELL ?N1 - CELL ?N2 - CELL ?N3 - CELL)
        (DISABLED-CONTROL-REJECT-PARENT-UP ?C ?N1 ?N2 ?N3))
       (FORALL (?C - CELL ?N1 - CELL ?N2 - CELL ?N3 - CELL)
        (DISABLED-CONTROL-REJECT-PARENT-RIGHT ?C ?N1 ?N2 ?N3))
       (FORALL (?C - CELL ?N1 - CELL ?N2 - CELL ?N3 - CELL)
        (DISABLED-CONTROL-REJECT-PARENT-LEFT ?C ?N1 ?N2 ?N3))
       (FORALL (?C - CELL ?N2 - CELL ?S1 - SIDE ?S1OP - SIDE)
        (DISABLED-CONTROL-REJECT-NON-PARENT ?C ?N2 ?S1 ?S1OP))
       (FORALL (?C - CELL ?N2 - CELL ?S1 - SIDE ?S1OP - SIDE ?SPARENT - SIDE)
        (DISABLED-CONTROL-ACCEPT-PASSON ?C ?N2 ?S1 ?S1OP ?SPARENT))
       (FORALL (?P - CELL ?N1 - CELL ?S1 - SIDE ?S1OP - SIDE)
        (DISABLED-CONTROL-ACCEPT ?P ?N1 ?S1 ?S1OP))
       (FORALL (?P - CELL ?N1 - CELL)
        (DISABLED-CONTROL-REQUEST-PASSON-DOWN ?P ?N1))
       (FORALL (?P - CELL ?N1 - CELL)
        (DISABLED-CONTROL-REQUEST-PASSON-UP ?P ?N1))
       (FORALL (?P - CELL ?N1 - CELL)
        (DISABLED-CONTROL-REQUEST-PASSON-RIGHT ?P ?N1))
       (FORALL (?P - CELL ?N1 - CELL)
        (DISABLED-CONTROL-REQUEST-PASSON-LEFT ?P ?N1))
       (FORALL (?C - CELL ?N1 - CELL ?N2 - CELL ?N3 - CELL ?N4 - CELL)
        (DISABLED-CONTROL-MARK-AVAILABLE ?C ?N1 ?N2 ?N3 ?N4))
       (FORALL (?C - CELL)
        (DISABLED-CONTROL-UNBAR-NEIGHS-NOT-THRESHOLD-REACH ?C))
       (FORALL (?C - CELL) (DISABLED-CONTROL-UNBAR-NEIGHS-NOT-BUSY ?C))
       (FORALL (?C - CELL ?N - CELL ?S - SIDE)
        (DISABLED-CONTROL-MARK-UNAVAILABLE-NEIGHBOUR-THRESHOLD-REACHED ?C ?N
         ?S))
       (FORALL (?C - CELL) (DISABLED-CONTROL-BAR-NEIGHS-AVAIL ?C))
       (FORALL (?C - CELL)
        (DISABLED-CONTROL-MARK-UNAVAILABLE-THRESHOLD-EXCEED ?C))
       (FORALL (?C - CELL) (DISABLED-CONTROL-MARK-UNAVAILABLE-BUSY ?C))
       (FORALL (?C - CELL ?N1 - CELL ?S1 - SIDE ?N2 - CELL ?S2 - SIDE)
        (DISABLED-CONTROL-UNMARK-EXCEED ?C ?N1 ?S1 ?N2 ?S2))
       (FORALL
        (?C - CELL ?N1 - CELL ?S1 - SIDE ?N2 - CELL ?S2 - SIDE ?N3 - CELL ?S3 -
         SIDE)
        (DISABLED-CONTROL-MARK-THRESHOLD-EXCEED ?C ?N1 ?S1 ?N2 ?S2 ?N3 ?S3))
       (FORALL
        (?C - CELL ?N1 - CELL ?S1 - SIDE ?N2 - CELL ?S2 - SIDE ?N3 - CELL ?S3 -
         SIDE)
        (DISABLED-CONTROL-UNMARK-THRESHOLD-REACH ?C ?N1 ?S1 ?N2 ?S2 ?N3 ?S3))
       (FORALL (?C - CELL ?N1 - CELL ?S1 - SIDE ?N2 - CELL ?S2 - SIDE)
        (DISABLED-CONTROL-MARK-THRESHOLD-REACH ?C ?N1 ?S1 ?N2 ?S2)))))
