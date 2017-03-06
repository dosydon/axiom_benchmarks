(DEFINE (PROBLEM N7-S20337322) (:DOMAIN GRID)
 (:OBJECTS BORDER - CELL C2 - CELL B3 - CELL B2 - CELL B1 - CELL A4 - CELL A3 -
  CELL A2 - CELL A1 - CELL A0 - CELL RIGHT - SIDE LEFT - SIDE DOWN - SIDE UP -
  SIDE)
 (:INIT (PROC A0) (PROC A1) (PROC A2) (PROC A3) (DISPENSER A4) (PROC B1)
  (PROC B2) (PROC B3) (DISPENSER C2) (AVAILABLE A0) (AVAILABLE A1)
  (AVAILABLE A2) (AVAILABLE A3) (REJECT A4 LEFT) (REJECT A4 RIGHT)
  (REJECT A4 UP) (REJECT A4 DOWN) (AVAILABLE B1) (AVAILABLE B2) (AVAILABLE B3)
  (REJECT C2 LEFT) (REJECT C2 RIGHT) (REJECT C2 UP) (REJECT C2 DOWN)
  (REJECT BORDER LEFT) (REJECT BORDER RIGHT) (REJECT BORDER UP)
  (REJECT BORDER DOWN) (NEIGHBOUR LEFT BORDER A0) (NEIGHBOUR RIGHT A0 BORDER)
  (NEIGHBOUR RIGHT A1 A0) (NEIGHBOUR LEFT A0 A1) (NEIGHBOUR UP BORDER A0)
  (NEIGHBOUR DOWN A0 BORDER) (NEIGHBOUR DOWN BORDER A0)
  (NEIGHBOUR UP A0 BORDER) (NEIGHBOUR RIGHT A2 A1) (NEIGHBOUR LEFT A1 A2)
  (NEIGHBOUR UP BORDER A1) (NEIGHBOUR DOWN A1 BORDER) (NEIGHBOUR DOWN B1 A1)
  (NEIGHBOUR UP A1 B1) (NEIGHBOUR RIGHT A3 A2) (NEIGHBOUR LEFT A2 A3)
  (NEIGHBOUR UP BORDER A2) (NEIGHBOUR DOWN A2 BORDER) (NEIGHBOUR DOWN B2 A2)
  (NEIGHBOUR UP A2 B2) (NEIGHBOUR RIGHT A4 A3) (NEIGHBOUR LEFT A3 A4)
  (NEIGHBOUR UP BORDER A3) (NEIGHBOUR DOWN A3 BORDER) (NEIGHBOUR DOWN B3 A3)
  (NEIGHBOUR UP A3 B3) (NEIGHBOUR RIGHT BORDER A4) (NEIGHBOUR LEFT A4 BORDER)
  (NEIGHBOUR UP BORDER A4) (NEIGHBOUR DOWN A4 BORDER)
  (NEIGHBOUR DOWN BORDER A4) (NEIGHBOUR UP A4 BORDER)
  (NEIGHBOUR LEFT BORDER B1) (NEIGHBOUR RIGHT B1 BORDER)
  (NEIGHBOUR RIGHT B2 B1) (NEIGHBOUR LEFT B1 B2) (NEIGHBOUR DOWN BORDER B1)
  (NEIGHBOUR UP B1 BORDER) (NEIGHBOUR RIGHT B3 B2) (NEIGHBOUR LEFT B2 B3)
  (NEIGHBOUR DOWN C2 B2) (NEIGHBOUR UP B2 C2) (NEIGHBOUR RIGHT BORDER B3)
  (NEIGHBOUR LEFT B3 BORDER) (NEIGHBOUR DOWN BORDER B3)
  (NEIGHBOUR UP B3 BORDER) (NEIGHBOUR LEFT BORDER C2)
  (NEIGHBOUR RIGHT C2 BORDER) (NEIGHBOUR RIGHT BORDER C2)
  (NEIGHBOUR LEFT C2 BORDER) (NEIGHBOUR DOWN BORDER C2)
  (NEIGHBOUR UP C2 BORDER))
 (:GOAL
  (AND (BUSY A0)
       (BUSY A2)
       (BUSY A3)
       (BUSY B1)
       (BUSY B3)
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