(DEFINE (PROBLEM N13-S237574300) (:DOMAIN GRID)
 (:OBJECTS BORDER - CELL F5 - CELL F4 - CELL E5 - CELL E4 - CELL E3 - CELL D6 -
  CELL D5 - CELL D4 - CELL D3 - CELL C6 - CELL C5 - CELL C4 - CELL C3 - CELL B6
  - CELL B5 - CELL B4 - CELL RIGHT - SIDE LEFT - SIDE DOWN - SIDE UP - SIDE)
 (:INIT (DISPENSER B4) (PROC B5) (PROC B6) (DISPENSER C3) (PROC C4) (PROC C5)
  (PROC C6) (PROC D3) (PROC D4) (PROC D5) (PROC D6) (PROC E3) (PROC E4)
  (DISPENSER E5) (PROC F4) (PROC F5) (REJECT B4 LEFT) (REJECT B4 RIGHT)
  (REJECT B4 UP) (REJECT B4 DOWN) (AVAILABLE B5) (AVAILABLE B6)
  (REJECT C3 LEFT) (REJECT C3 RIGHT) (REJECT C3 UP) (REJECT C3 DOWN)
  (AVAILABLE C4) (AVAILABLE C5) (AVAILABLE C6) (AVAILABLE D3) (AVAILABLE D4)
  (AVAILABLE D5) (AVAILABLE D6) (AVAILABLE E3) (AVAILABLE E4) (REJECT E5 LEFT)
  (REJECT E5 RIGHT) (REJECT E5 UP) (REJECT E5 DOWN) (AVAILABLE F4)
  (AVAILABLE F5) (REJECT BORDER LEFT) (REJECT BORDER RIGHT) (REJECT BORDER UP)
  (REJECT BORDER DOWN) (NEIGHBOUR LEFT BORDER B4) (NEIGHBOUR RIGHT B4 BORDER)
  (NEIGHBOUR RIGHT B5 B4) (NEIGHBOUR LEFT B4 B5) (NEIGHBOUR UP BORDER B4)
  (NEIGHBOUR DOWN B4 BORDER) (NEIGHBOUR DOWN C4 B4) (NEIGHBOUR UP B4 C4)
  (NEIGHBOUR RIGHT B6 B5) (NEIGHBOUR LEFT B5 B6) (NEIGHBOUR UP BORDER B5)
  (NEIGHBOUR DOWN B5 BORDER) (NEIGHBOUR DOWN C5 B5) (NEIGHBOUR UP B5 C5)
  (NEIGHBOUR RIGHT BORDER B6) (NEIGHBOUR LEFT B6 BORDER)
  (NEIGHBOUR UP BORDER B6) (NEIGHBOUR DOWN B6 BORDER) (NEIGHBOUR DOWN C6 B6)
  (NEIGHBOUR UP B6 C6) (NEIGHBOUR LEFT BORDER C3) (NEIGHBOUR RIGHT C3 BORDER)
  (NEIGHBOUR RIGHT C4 C3) (NEIGHBOUR LEFT C3 C4) (NEIGHBOUR UP BORDER C3)
  (NEIGHBOUR DOWN C3 BORDER) (NEIGHBOUR DOWN D3 C3) (NEIGHBOUR UP C3 D3)
  (NEIGHBOUR RIGHT C5 C4) (NEIGHBOUR LEFT C4 C5) (NEIGHBOUR DOWN D4 C4)
  (NEIGHBOUR UP C4 D4) (NEIGHBOUR RIGHT C6 C5) (NEIGHBOUR LEFT C5 C6)
  (NEIGHBOUR DOWN D5 C5) (NEIGHBOUR UP C5 D5) (NEIGHBOUR RIGHT BORDER C6)
  (NEIGHBOUR LEFT C6 BORDER) (NEIGHBOUR DOWN D6 C6) (NEIGHBOUR UP C6 D6)
  (NEIGHBOUR LEFT BORDER D3) (NEIGHBOUR RIGHT D3 BORDER)
  (NEIGHBOUR RIGHT D4 D3) (NEIGHBOUR LEFT D3 D4) (NEIGHBOUR DOWN E3 D3)
  (NEIGHBOUR UP D3 E3) (NEIGHBOUR RIGHT D5 D4) (NEIGHBOUR LEFT D4 D5)
  (NEIGHBOUR DOWN E4 D4) (NEIGHBOUR UP D4 E4) (NEIGHBOUR RIGHT D6 D5)
  (NEIGHBOUR LEFT D5 D6) (NEIGHBOUR DOWN E5 D5) (NEIGHBOUR UP D5 E5)
  (NEIGHBOUR RIGHT BORDER D6) (NEIGHBOUR LEFT D6 BORDER)
  (NEIGHBOUR DOWN BORDER D6) (NEIGHBOUR UP D6 BORDER)
  (NEIGHBOUR LEFT BORDER E3) (NEIGHBOUR RIGHT E3 BORDER)
  (NEIGHBOUR RIGHT E4 E3) (NEIGHBOUR LEFT E3 E4) (NEIGHBOUR DOWN BORDER E3)
  (NEIGHBOUR UP E3 BORDER) (NEIGHBOUR RIGHT E5 E4) (NEIGHBOUR LEFT E4 E5)
  (NEIGHBOUR DOWN F4 E4) (NEIGHBOUR UP E4 F4) (NEIGHBOUR RIGHT BORDER E5)
  (NEIGHBOUR LEFT E5 BORDER) (NEIGHBOUR DOWN F5 E5) (NEIGHBOUR UP E5 F5)
  (NEIGHBOUR LEFT BORDER F4) (NEIGHBOUR RIGHT F4 BORDER)
  (NEIGHBOUR RIGHT F5 F4) (NEIGHBOUR LEFT F4 F5) (NEIGHBOUR DOWN BORDER F4)
  (NEIGHBOUR UP F4 BORDER) (NEIGHBOUR RIGHT BORDER F5)
  (NEIGHBOUR LEFT F5 BORDER) (NEIGHBOUR DOWN BORDER F5)
  (NEIGHBOUR UP F5 BORDER))
 (:GOAL
  (AND (BUSY B5)
       (BUSY B6)
       (BUSY C5)
       (BUSY D3)
       (BUSY D5)
       (BUSY D6)
       (BUSY E3)
       (BUSY E4)
       (BUSY F4)
       (BUSY F5)
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
