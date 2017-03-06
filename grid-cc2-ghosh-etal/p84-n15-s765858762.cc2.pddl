(DEFINE (PROBLEM N15-S765858762) (:DOMAIN GRID)
 (:OBJECTS BORDER - CELL G4 - CELL G3 - CELL G2 - CELL G1 - CELL G0 - CELL F4 -
  CELL F3 - CELL F2 - CELL F1 - CELL F0 - CELL E4 - CELL E3 - CELL E2 - CELL D4
  - CELL D3 - CELL D2 - CELL C4 - CELL C2 - CELL RIGHT - SIDE LEFT - SIDE DOWN
  - SIDE UP - SIDE)
 (:INIT (DISPENSER C2) (DISPENSER C4) (PROC D2) (PROC D3) (PROC D4) (PROC E2)
  (PROC E3) (PROC E4) (PROC F0) (PROC F1) (PROC F2) (PROC F3) (PROC F4)
  (DISPENSER G0) (PROC G1) (PROC G2) (PROC G3) (PROC G4) (REJECT C2 LEFT)
  (REJECT C2 RIGHT) (REJECT C2 UP) (REJECT C2 DOWN) (REJECT C4 LEFT)
  (REJECT C4 RIGHT) (REJECT C4 UP) (REJECT C4 DOWN) (AVAILABLE D2)
  (AVAILABLE D3) (AVAILABLE D4) (AVAILABLE E2) (AVAILABLE E3) (AVAILABLE E4)
  (AVAILABLE F0) (AVAILABLE F1) (AVAILABLE F2) (AVAILABLE F3) (AVAILABLE F4)
  (REJECT G0 LEFT) (REJECT G0 RIGHT) (REJECT G0 UP) (REJECT G0 DOWN)
  (AVAILABLE G1) (AVAILABLE G2) (AVAILABLE G3) (AVAILABLE G4)
  (REJECT BORDER LEFT) (REJECT BORDER RIGHT) (REJECT BORDER UP)
  (REJECT BORDER DOWN) (NEIGHBOUR LEFT BORDER C2) (NEIGHBOUR RIGHT C2 BORDER)
  (NEIGHBOUR RIGHT BORDER C2) (NEIGHBOUR LEFT C2 BORDER)
  (NEIGHBOUR UP BORDER C2) (NEIGHBOUR DOWN C2 BORDER) (NEIGHBOUR DOWN D2 C2)
  (NEIGHBOUR UP C2 D2) (NEIGHBOUR LEFT BORDER C4) (NEIGHBOUR RIGHT C4 BORDER)
  (NEIGHBOUR RIGHT BORDER C4) (NEIGHBOUR LEFT C4 BORDER)
  (NEIGHBOUR UP BORDER C4) (NEIGHBOUR DOWN C4 BORDER) (NEIGHBOUR DOWN D4 C4)
  (NEIGHBOUR UP C4 D4) (NEIGHBOUR LEFT BORDER D2) (NEIGHBOUR RIGHT D2 BORDER)
  (NEIGHBOUR RIGHT D3 D2) (NEIGHBOUR LEFT D2 D3) (NEIGHBOUR DOWN E2 D2)
  (NEIGHBOUR UP D2 E2) (NEIGHBOUR RIGHT D4 D3) (NEIGHBOUR LEFT D3 D4)
  (NEIGHBOUR UP BORDER D3) (NEIGHBOUR DOWN D3 BORDER) (NEIGHBOUR DOWN E3 D3)
  (NEIGHBOUR UP D3 E3) (NEIGHBOUR RIGHT BORDER D4) (NEIGHBOUR LEFT D4 BORDER)
  (NEIGHBOUR DOWN E4 D4) (NEIGHBOUR UP D4 E4) (NEIGHBOUR LEFT BORDER E2)
  (NEIGHBOUR RIGHT E2 BORDER) (NEIGHBOUR RIGHT E3 E2) (NEIGHBOUR LEFT E2 E3)
  (NEIGHBOUR DOWN F2 E2) (NEIGHBOUR UP E2 F2) (NEIGHBOUR RIGHT E4 E3)
  (NEIGHBOUR LEFT E3 E4) (NEIGHBOUR DOWN F3 E3) (NEIGHBOUR UP E3 F3)
  (NEIGHBOUR RIGHT BORDER E4) (NEIGHBOUR LEFT E4 BORDER) (NEIGHBOUR DOWN F4 E4)
  (NEIGHBOUR UP E4 F4) (NEIGHBOUR LEFT BORDER F0) (NEIGHBOUR RIGHT F0 BORDER)
  (NEIGHBOUR RIGHT F1 F0) (NEIGHBOUR LEFT F0 F1) (NEIGHBOUR UP BORDER F0)
  (NEIGHBOUR DOWN F0 BORDER) (NEIGHBOUR DOWN G0 F0) (NEIGHBOUR UP F0 G0)
  (NEIGHBOUR RIGHT F2 F1) (NEIGHBOUR LEFT F1 F2) (NEIGHBOUR UP BORDER F1)
  (NEIGHBOUR DOWN F1 BORDER) (NEIGHBOUR DOWN G1 F1) (NEIGHBOUR UP F1 G1)
  (NEIGHBOUR RIGHT F3 F2) (NEIGHBOUR LEFT F2 F3) (NEIGHBOUR DOWN G2 F2)
  (NEIGHBOUR UP F2 G2) (NEIGHBOUR RIGHT F4 F3) (NEIGHBOUR LEFT F3 F4)
  (NEIGHBOUR DOWN G3 F3) (NEIGHBOUR UP F3 G3) (NEIGHBOUR RIGHT BORDER F4)
  (NEIGHBOUR LEFT F4 BORDER) (NEIGHBOUR DOWN G4 F4) (NEIGHBOUR UP F4 G4)
  (NEIGHBOUR LEFT BORDER G0) (NEIGHBOUR RIGHT G0 BORDER)
  (NEIGHBOUR RIGHT G1 G0) (NEIGHBOUR LEFT G0 G1) (NEIGHBOUR DOWN BORDER G0)
  (NEIGHBOUR UP G0 BORDER) (NEIGHBOUR RIGHT G2 G1) (NEIGHBOUR LEFT G1 G2)
  (NEIGHBOUR DOWN BORDER G1) (NEIGHBOUR UP G1 BORDER) (NEIGHBOUR RIGHT G3 G2)
  (NEIGHBOUR LEFT G2 G3) (NEIGHBOUR DOWN BORDER G2) (NEIGHBOUR UP G2 BORDER)
  (NEIGHBOUR RIGHT G4 G3) (NEIGHBOUR LEFT G3 G4) (NEIGHBOUR DOWN BORDER G3)
  (NEIGHBOUR UP G3 BORDER) (NEIGHBOUR RIGHT BORDER G4)
  (NEIGHBOUR LEFT G4 BORDER) (NEIGHBOUR DOWN BORDER G4)
  (NEIGHBOUR UP G4 BORDER))
 (:GOAL
  (AND (BUSY D3)
       (BUSY D4)
       (BUSY E2)
       (BUSY E4)
       (BUSY F0)
       (BUSY F1)
       (BUSY F3)
       (BUSY F4)
       (BUSY G1)
       (BUSY G2)
       (BUSY G3)
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
