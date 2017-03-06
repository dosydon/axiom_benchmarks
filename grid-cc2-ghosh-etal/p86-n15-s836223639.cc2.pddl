(DEFINE (PROBLEM N15-S836223639) (:DOMAIN GRID)
 (:OBJECTS BORDER - CELL F3 - CELL F2 - CELL E3 - CELL E2 - CELL E1 - CELL E0 -
  CELL D2 - CELL D1 - CELL D0 - CELL C3 - CELL C2 - CELL C1 - CELL B4 - CELL B3
  - CELL B2 - CELL B1 - CELL B0 - CELL A2 - CELL RIGHT - SIDE LEFT - SIDE DOWN
  - SIDE UP - SIDE)
 (:INIT (PROC A2) (DISPENSER B0) (PROC B1) (PROC B2) (PROC B3) (DISPENSER B4)
  (PROC C1) (PROC C2) (DISPENSER C3) (PROC D0) (PROC D1) (PROC D2) (PROC E0)
  (PROC E1) (PROC E2) (PROC E3) (PROC F2) (PROC F3) (AVAILABLE A2)
  (REJECT B0 LEFT) (REJECT B0 RIGHT) (REJECT B0 UP) (REJECT B0 DOWN)
  (AVAILABLE B1) (AVAILABLE B2) (AVAILABLE B3) (REJECT B4 LEFT)
  (REJECT B4 RIGHT) (REJECT B4 UP) (REJECT B4 DOWN) (AVAILABLE C1)
  (AVAILABLE C2) (REJECT C3 LEFT) (REJECT C3 RIGHT) (REJECT C3 UP)
  (REJECT C3 DOWN) (AVAILABLE D0) (AVAILABLE D1) (AVAILABLE D2) (AVAILABLE E0)
  (AVAILABLE E1) (AVAILABLE E2) (AVAILABLE E3) (AVAILABLE F2) (AVAILABLE F3)
  (REJECT BORDER LEFT) (REJECT BORDER RIGHT) (REJECT BORDER UP)
  (REJECT BORDER DOWN) (NEIGHBOUR LEFT BORDER A2) (NEIGHBOUR RIGHT A2 BORDER)
  (NEIGHBOUR RIGHT BORDER A2) (NEIGHBOUR LEFT A2 BORDER)
  (NEIGHBOUR UP BORDER A2) (NEIGHBOUR DOWN A2 BORDER) (NEIGHBOUR DOWN B2 A2)
  (NEIGHBOUR UP A2 B2) (NEIGHBOUR LEFT BORDER B0) (NEIGHBOUR RIGHT B0 BORDER)
  (NEIGHBOUR RIGHT B1 B0) (NEIGHBOUR LEFT B0 B1) (NEIGHBOUR UP BORDER B0)
  (NEIGHBOUR DOWN B0 BORDER) (NEIGHBOUR DOWN BORDER B0)
  (NEIGHBOUR UP B0 BORDER) (NEIGHBOUR RIGHT B2 B1) (NEIGHBOUR LEFT B1 B2)
  (NEIGHBOUR UP BORDER B1) (NEIGHBOUR DOWN B1 BORDER) (NEIGHBOUR DOWN C1 B1)
  (NEIGHBOUR UP B1 C1) (NEIGHBOUR RIGHT B3 B2) (NEIGHBOUR LEFT B2 B3)
  (NEIGHBOUR DOWN C2 B2) (NEIGHBOUR UP B2 C2) (NEIGHBOUR RIGHT B4 B3)
  (NEIGHBOUR LEFT B3 B4) (NEIGHBOUR UP BORDER B3) (NEIGHBOUR DOWN B3 BORDER)
  (NEIGHBOUR DOWN C3 B3) (NEIGHBOUR UP B3 C3) (NEIGHBOUR RIGHT BORDER B4)
  (NEIGHBOUR LEFT B4 BORDER) (NEIGHBOUR UP BORDER B4)
  (NEIGHBOUR DOWN B4 BORDER) (NEIGHBOUR DOWN BORDER B4)
  (NEIGHBOUR UP B4 BORDER) (NEIGHBOUR LEFT BORDER C1)
  (NEIGHBOUR RIGHT C1 BORDER) (NEIGHBOUR RIGHT C2 C1) (NEIGHBOUR LEFT C1 C2)
  (NEIGHBOUR DOWN D1 C1) (NEIGHBOUR UP C1 D1) (NEIGHBOUR RIGHT C3 C2)
  (NEIGHBOUR LEFT C2 C3) (NEIGHBOUR DOWN D2 C2) (NEIGHBOUR UP C2 D2)
  (NEIGHBOUR RIGHT BORDER C3) (NEIGHBOUR LEFT C3 BORDER)
  (NEIGHBOUR DOWN BORDER C3) (NEIGHBOUR UP C3 BORDER)
  (NEIGHBOUR LEFT BORDER D0) (NEIGHBOUR RIGHT D0 BORDER)
  (NEIGHBOUR RIGHT D1 D0) (NEIGHBOUR LEFT D0 D1) (NEIGHBOUR UP BORDER D0)
  (NEIGHBOUR DOWN D0 BORDER) (NEIGHBOUR DOWN E0 D0) (NEIGHBOUR UP D0 E0)
  (NEIGHBOUR RIGHT D2 D1) (NEIGHBOUR LEFT D1 D2) (NEIGHBOUR DOWN E1 D1)
  (NEIGHBOUR UP D1 E1) (NEIGHBOUR RIGHT BORDER D2) (NEIGHBOUR LEFT D2 BORDER)
  (NEIGHBOUR DOWN E2 D2) (NEIGHBOUR UP D2 E2) (NEIGHBOUR LEFT BORDER E0)
  (NEIGHBOUR RIGHT E0 BORDER) (NEIGHBOUR RIGHT E1 E0) (NEIGHBOUR LEFT E0 E1)
  (NEIGHBOUR DOWN BORDER E0) (NEIGHBOUR UP E0 BORDER) (NEIGHBOUR RIGHT E2 E1)
  (NEIGHBOUR LEFT E1 E2) (NEIGHBOUR DOWN BORDER E1) (NEIGHBOUR UP E1 BORDER)
  (NEIGHBOUR RIGHT E3 E2) (NEIGHBOUR LEFT E2 E3) (NEIGHBOUR DOWN F2 E2)
  (NEIGHBOUR UP E2 F2) (NEIGHBOUR RIGHT BORDER E3) (NEIGHBOUR LEFT E3 BORDER)
  (NEIGHBOUR UP BORDER E3) (NEIGHBOUR DOWN E3 BORDER) (NEIGHBOUR DOWN F3 E3)
  (NEIGHBOUR UP E3 F3) (NEIGHBOUR LEFT BORDER F2) (NEIGHBOUR RIGHT F2 BORDER)
  (NEIGHBOUR RIGHT F3 F2) (NEIGHBOUR LEFT F2 F3) (NEIGHBOUR DOWN BORDER F2)
  (NEIGHBOUR UP F2 BORDER) (NEIGHBOUR RIGHT BORDER F3)
  (NEIGHBOUR LEFT F3 BORDER) (NEIGHBOUR DOWN BORDER F3)
  (NEIGHBOUR UP F3 BORDER))
 (:GOAL
  (AND (BUSY A2)
       (BUSY B1)
       (BUSY B3)
       (BUSY C1)
       (BUSY D0)
       (BUSY D2)
       (BUSY E0)
       (BUSY E1)
       (BUSY E3)
       (BUSY F2)
       (BUSY F3)
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
