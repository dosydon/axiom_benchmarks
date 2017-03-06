(DEFINE (PROBLEM N16-S169014534) (:DOMAIN GRID)
 (:OBJECTS BORDER - CELL G6 - CELL G5 - CELL F6 - CELL F5 - CELL E6 - CELL E5 -
  CELL E4 - CELL D6 - CELL D5 - CELL D4 - CELL C6 - CELL C5 - CELL C4 - CELL C3
  - CELL B6 - CELL B5 - CELL B4 - CELL A6 - CELL A4 - CELL RIGHT - SIDE LEFT -
  SIDE DOWN - SIDE UP - SIDE)
 (:INIT (PROC A4) (PROC A6) (PROC B4) (DISPENSER B5) (PROC B6) (PROC C3)
  (PROC C4) (PROC C5) (PROC C6) (PROC D4) (PROC D5) (PROC D6) (PROC E4)
  (PROC E5) (PROC E6) (DISPENSER F5) (PROC F6) (DISPENSER G5) (PROC G6)
  (AVAILABLE A4) (AVAILABLE A6) (AVAILABLE B4) (REJECT B5 LEFT)
  (REJECT B5 RIGHT) (REJECT B5 UP) (REJECT B5 DOWN) (AVAILABLE B6)
  (AVAILABLE C3) (AVAILABLE C4) (AVAILABLE C5) (AVAILABLE C6) (AVAILABLE D4)
  (AVAILABLE D5) (AVAILABLE D6) (AVAILABLE E4) (AVAILABLE E5) (AVAILABLE E6)
  (REJECT F5 LEFT) (REJECT F5 RIGHT) (REJECT F5 UP) (REJECT F5 DOWN)
  (AVAILABLE F6) (REJECT G5 LEFT) (REJECT G5 RIGHT) (REJECT G5 UP)
  (REJECT G5 DOWN) (AVAILABLE G6) (REJECT BORDER LEFT) (REJECT BORDER RIGHT)
  (REJECT BORDER UP) (REJECT BORDER DOWN) (NEIGHBOUR LEFT BORDER A4)
  (NEIGHBOUR RIGHT A4 BORDER) (NEIGHBOUR RIGHT BORDER A4)
  (NEIGHBOUR LEFT A4 BORDER) (NEIGHBOUR UP BORDER A4)
  (NEIGHBOUR DOWN A4 BORDER) (NEIGHBOUR DOWN B4 A4) (NEIGHBOUR UP A4 B4)
  (NEIGHBOUR LEFT BORDER A6) (NEIGHBOUR RIGHT A6 BORDER)
  (NEIGHBOUR RIGHT BORDER A6) (NEIGHBOUR LEFT A6 BORDER)
  (NEIGHBOUR UP BORDER A6) (NEIGHBOUR DOWN A6 BORDER) (NEIGHBOUR DOWN B6 A6)
  (NEIGHBOUR UP A6 B6) (NEIGHBOUR LEFT BORDER B4) (NEIGHBOUR RIGHT B4 BORDER)
  (NEIGHBOUR RIGHT B5 B4) (NEIGHBOUR LEFT B4 B5) (NEIGHBOUR DOWN C4 B4)
  (NEIGHBOUR UP B4 C4) (NEIGHBOUR RIGHT B6 B5) (NEIGHBOUR LEFT B5 B6)
  (NEIGHBOUR UP BORDER B5) (NEIGHBOUR DOWN B5 BORDER) (NEIGHBOUR DOWN C5 B5)
  (NEIGHBOUR UP B5 C5) (NEIGHBOUR RIGHT BORDER B6) (NEIGHBOUR LEFT B6 BORDER)
  (NEIGHBOUR DOWN C6 B6) (NEIGHBOUR UP B6 C6) (NEIGHBOUR LEFT BORDER C3)
  (NEIGHBOUR RIGHT C3 BORDER) (NEIGHBOUR RIGHT C4 C3) (NEIGHBOUR LEFT C3 C4)
  (NEIGHBOUR UP BORDER C3) (NEIGHBOUR DOWN C3 BORDER)
  (NEIGHBOUR DOWN BORDER C3) (NEIGHBOUR UP C3 BORDER) (NEIGHBOUR RIGHT C5 C4)
  (NEIGHBOUR LEFT C4 C5) (NEIGHBOUR DOWN D4 C4) (NEIGHBOUR UP C4 D4)
  (NEIGHBOUR RIGHT C6 C5) (NEIGHBOUR LEFT C5 C6) (NEIGHBOUR DOWN D5 C5)
  (NEIGHBOUR UP C5 D5) (NEIGHBOUR RIGHT BORDER C6) (NEIGHBOUR LEFT C6 BORDER)
  (NEIGHBOUR DOWN D6 C6) (NEIGHBOUR UP C6 D6) (NEIGHBOUR LEFT BORDER D4)
  (NEIGHBOUR RIGHT D4 BORDER) (NEIGHBOUR RIGHT D5 D4) (NEIGHBOUR LEFT D4 D5)
  (NEIGHBOUR DOWN E4 D4) (NEIGHBOUR UP D4 E4) (NEIGHBOUR RIGHT D6 D5)
  (NEIGHBOUR LEFT D5 D6) (NEIGHBOUR DOWN E5 D5) (NEIGHBOUR UP D5 E5)
  (NEIGHBOUR RIGHT BORDER D6) (NEIGHBOUR LEFT D6 BORDER) (NEIGHBOUR DOWN E6 D6)
  (NEIGHBOUR UP D6 E6) (NEIGHBOUR LEFT BORDER E4) (NEIGHBOUR RIGHT E4 BORDER)
  (NEIGHBOUR RIGHT E5 E4) (NEIGHBOUR LEFT E4 E5) (NEIGHBOUR DOWN BORDER E4)
  (NEIGHBOUR UP E4 BORDER) (NEIGHBOUR RIGHT E6 E5) (NEIGHBOUR LEFT E5 E6)
  (NEIGHBOUR DOWN F5 E5) (NEIGHBOUR UP E5 F5) (NEIGHBOUR RIGHT BORDER E6)
  (NEIGHBOUR LEFT E6 BORDER) (NEIGHBOUR DOWN F6 E6) (NEIGHBOUR UP E6 F6)
  (NEIGHBOUR LEFT BORDER F5) (NEIGHBOUR RIGHT F5 BORDER)
  (NEIGHBOUR RIGHT F6 F5) (NEIGHBOUR LEFT F5 F6) (NEIGHBOUR DOWN G5 F5)
  (NEIGHBOUR UP F5 G5) (NEIGHBOUR RIGHT BORDER F6) (NEIGHBOUR LEFT F6 BORDER)
  (NEIGHBOUR DOWN G6 F6) (NEIGHBOUR UP F6 G6) (NEIGHBOUR LEFT BORDER G5)
  (NEIGHBOUR RIGHT G5 BORDER) (NEIGHBOUR RIGHT G6 G5) (NEIGHBOUR LEFT G5 G6)
  (NEIGHBOUR DOWN BORDER G5) (NEIGHBOUR UP G5 BORDER)
  (NEIGHBOUR RIGHT BORDER G6) (NEIGHBOUR LEFT G6 BORDER)
  (NEIGHBOUR DOWN BORDER G6) (NEIGHBOUR UP G6 BORDER))
 (:GOAL
  (AND (BUSY A4)
       (BUSY A6)
       (BUSY C6)
       (BUSY D4)
       (BUSY D5)
       (BUSY E4)
       (BUSY E6)
       (BUSY F6)
       (BUSY G6)
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
