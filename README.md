# Planning Domains with Derived Predicates
The repository contains PDDL planning problems with derievd predicates and axioms.

## Domains by Ivankovic and Haslum(IJCAI, 2015)
Domains by Franc Ivankovic and Patric Haslum, used under CC BY-SA 4.0 (http://creativecommons.org/licenses/by-sa/4.0/legalcode).
Domains were sourced from (http://users.cecs.anu.edu.au/~patrik/tmp/fd-axiom-aware.tar.gz).

### sokoban-axioms:
A formulation of the Sokoban domain using axioms. There are two
encodings originally provided: one uses only classical (STRIPS) PDDL and axioms, the
other uses "Functional STRIPS" (i.e., object-valued fluents, a la
PDDL 3.1). This repository contains only the classical PDDL version.

### psr-middle-noce:
The PSR middle-sized problem set from IPC 2004, formulation with
axioms but without conditional effects.

### mincut
>Consider an undirected graph, with a designated source node
>s and target node t. K “roadblocks” are located on the edges
>of the graph, and can move between adjacent edges. (More
>than one roadblock can occupy the same edge, and one can
>pass another on the edge.) The goal is to move the roadblocks
>so that there is no unblocked path from the source to the tar-
>get node. In other words, a goal state identifies an s-t-cut of
>size ≤ K. Hence, we call it the Min-Cut domain.
>>  Ivankovic and Haslum(IJCAI, 2015) 

### trapping game
>As an example of a pseudo-adversarial domain with a more
>complex opponent strategy, we consider a game of two players,
>called the “blocker” and the “cat”. The cat moves from
>node to node on a graph (G), always moving to a node on
>a shortest unblocked path to one of a set of designated exit
>nodes. (To ensure deterministic moves, ties are broken by
>an arbitrary ordering of the nodes.) In between each move
>of the cat, the blocker can permanently block a node in the
>graph (though not the node the cat currently occupies). The
>cat wins if it reaches an exit, and the blocker wins if the cat is
>trapped (i.e., no longer able to reach an exit).
>>  Ivankovic and Haslum(IJCAI, 2015) 

##Domains by Filipos Kominis and Hector Geffner (ICAPS 2015)
Problems by Filippos Kominis and Hector Geffner, from their paper
"Beliefs in Multiagent Planning: From One Agent to Many" (ICAPS 2015).
These are cooperative multi-agent planning with partial observability
and nested beliefs, compiled into planning with axioms. They were
sourced from (http://www.dtic.upf.edu/~fkominis/). The permission to redestribute was granted from the authors.

### collab-and-comm-kg
>As a third example, we consider a scenario where two agents
>volunteer information to each other in order to accomplish
>a task faster that would otherwise be possible without information
>exchange. It is inspired in the BW4T environment,
>a proposed testbed for joint activity (Johnson et al. 2009).
>There is a corridor of four rooms, p1, p2, p3 and p4 as in the
>previous example, four blocks b1, . . . , b4 that are in some
>of the rooms, and two agents a and b that can move back
>and forth along this corridor. Initially, the two agents are
>in p2 and do not know where the blocks are (they are not
>in p2). When an agent gets into a room, he can see which
>blocks are in the room if any. The goal of the planning problem
>is for agent a to know the position of block b1, and for
>agent b to know the position of block b2. A shortest plan
>for the problem involves six steps: one agent, say a, has to
>move to p1, the other agent has to move to p3, they both
>must sense which blocks are in these rooms, and then they
>must exchange the relevant information. At that point, the
>goal would be achieved whether or not the information exchanged
>explicitly conveys the location of the target blocks.
>Indeed, if agent a does not see block b1 in p1 and agent b
>doesn’t see this block either at p3, agent a will then know
>that block b1 must be in p4 once b conveys to a the relevant
>piece of information; in this case ¬Kbin(b1, p3).
>>  Kominis and Geffner(ICAPS, 2015) 

### muddy-children-kg
A variation of muddy-child.

### muddy-child-kg

>MuddyChild(n, m) is a reformulation of MuddyChildren
>where a particular child must find out whether he is muddy
>or not. For this he can ask individually each other child i
>whether i knows that he is muddy, with all other children
>listening the response.
>>  Kominis and Geffner(ICAPS, 2015) 

### sum-kg

>Sum(n) is a domain based on ”What is the Sum?” (van Ditmarsch,
>van der Hoek, and Kooi 2007b), which in turn borrows
>from the ”Sum and Product Riddle” (van Ditmarsch,
>Ruan, and Verbrugge 2008) and the Muddy Children. There
>are three agents a, b, and c, each one with a number on his
>forehead between 1 and n. It is known that one of the numbers
>must be the sum of the other two. In addition, each agent
>can see the numbers on the other agent’s foreheads, and can
>>  Kominis and Geffner(ICAPS, 2015) 

### wordrooms

>WordRoom(m, n) is a variation of the collaboration through
>communication example. It involves two agents a and b that
>must find out a hidden word from a list of n possible words.
>The words can have at most 7 letters with the i-th letter of
>the word being in room ri , i = 1, . . . , 7. The two agents
>can move from a corridor to each of the rooms, and from
>any room back to the corridor. There is no direct connection
>among rooms, the two agents cannot be in the same room,
>and they both start in the corridor. The agents have sensors
>to find out the letter in a room provided that they are in
>the room, and they can communicate the truth of the literals
>Kxli where x is one of the two agents and li expresses that l
>is the i-th letter of the hidden word. The former amounts to
>14 sensing actions of the form sense(x, [li , l0 i , l00 i , . . .]) with
>the precondition that agent x is in room i, and where l, l 0
>, . . . are the different letters that may appear at position
>i of some of the n words. The parameter m in problem
>WordRoom(m, n) stands for the total number of li atoms.
>There are also 7 actions sense(a, [Kbli , Kbl 0 i , Kbl 00 i , . . .])
>where b communicates what he knows about room i to a,
>and similarly, 7 actions where a communicates to b. If we
>add the 14 actions for each agent moving from a room to the
>corridor and back, the total pool of actions is 56. The shortest
>plan for these problems is interesting when there is a lot
>of overlap among the n possible words, and in particular,
>when it may be more efficient for an agent to communicate
>not the letters that he has observed, but the letters that he can
>derive from what he knows.
>>  Kominis and Geffner(ICAPS, 2015) 

##ghosh-etal-JAR:
The controller verification problems by Ghosh, Dasgupta and Ramesh
("Automated Planning as an Early Verification Tool for Distributed
Control", Journal of Automated Reasoning vol. 54, 2015). The original problems can be found at (http://www.facweb.iitkgp.ernet.in/~pallab/PAPLAN.tar.gz). The repository contains the equivalent compiled problems by Ivankovic and Haslum(IJCAI, 2015): "cc1" is the compilatioin into STRIPS originally proposed by Ghosh et al (2015): "cc2" is the compilation into STRIPS with axioms.

### acc-cc1-ghosh-etal

>The ACC is designed to take away the burden of adjusting the speed of the vehicle from the driver, mostly
>under light traffic conditions. The ACC operates in two modes - the speed control mode and the time gap
>mode. In the speed control mode, the main functionality of ACC is to maintain the speed of the vehicle
>(termed ego vehicle) at a set constant speed v ref . In the time gap mode, the speed and distance of nearby
>vehicles (termed subject vehicles) are taken into consideration to maintain a safe time gap with the vehicles
>in the front. The time gap is defined as the time taken by a following vehicle to cover the distance from a
>leading vehicle at current speed. The speed control mode may be active when there is no obstructing traffic.
>The time gap mode may be active whenever obstructing traffic is detected by the vehicle’s radar.
>>  Ghosh et al (2015) 

### acc-cc2-ghosh-etal
A reformulation of acc-cc1-ghosh-etal using axioms.

### doorexample-broken-ghosh-etal-noaxioms
A door example used in Ghosh et al (2015).
### doorexample-broken-ghosh-etal
A reformulation of doorexample-broken-ghosh-etal-noaxioms using axioms.

### doorexample-fixed-ghosh-etal-noaxioms
A door example used in Ghosh et al (2015).
### doorexample-fixed-ghosh-etal
A reformulation of doorexample-fixed-ghosh-etal-noaxioms using axioms.

### grid-cc1-ghosh-etal

>The GRID domain is a synthetic planning domain loosely based on cellular automata and
>incorporates a parallel depth first search protocol for added variety. A problem instance in
>this domain consists of a finite matrix of connected compute elements (processors) which
>process the jobs submitted to them (Fig. 7). Each processor in the grid has four communica-
>tion ports through which it may be connected to its neighboring processors. Jobs are created
>in a separate set of elements called as the dispenser units which are connected to some of
>the processors in the GRID via their communication ports. Once created, each new job is
>transferred to a processor (or rejected by the grid as a whole) after a distributed depth-first
>search occurs automatically for an available handler.
>>  Ghosh et al (2015) 

### grid-cc2-ghosh-etal
A reformulation of doorexample-fixed-ghosh-etal-noaxioms using axioms.

## IPC Domains
Domains with derived predicates used in IPC-4.
They were sourced from (http://idm-lab.org/wiki/icaps/ipc2004/deterministic/domains.tgz).
For details, please see Hoffmann, Jörg, et al
("Engineering benchmarks for planning: the domains used in the deterministic part of IPC-4", Journal of Artificial Intelligence Research 26, 2006).

### psr-middle
>The task in PSR (power supply restoration) is to reconfigure a faulty power distribution
>network so as to resupply customers affected by the faults. The network consists of electric
>lines connected by switches and fed via a number of power sources that are equipped with circuitbreakers.
>When faults occur, the circuit-breakers of the sources feeding the faulty lines open to
>protect the network, leaving not only these lines but also many healthy ones un-supplied. The network
>needs to be reconfigured by opening and closing switches and circuit-breakers in such a way
>as to resupply the healthy portions. Unreliable fault sensors and switches lead to uncertainty about
>the state of the network. Furthermore, breakdown costs that depend on various parameters need to
>be optimized under constraints on the capacity of sources and lines. The application is a topic of ongoing
>interest in the field of power distribution, and has been investigated by the AI community for
>a long time, including from an AI planning standpoint (Thi´ebaux, Cordier, Jehl, & Krivine, 1996;
>Thi´ebaux & Cordier, 2001; Bertoli, Cimatti, Slaney, & Thi´ebaux, 2002; Bonet & Thi´ebaux, 2003).
>>  Hoffmann, Jörg, et al (2015) 

### psr-middle-compiled
A compiled, axiom-free version of psr-middle.

### PROMELA
>Here the task is to validate properties in systems of communicating processes (often
>communication protocols), encoded in the Promela language. Promela (PROcess MEta LAnguage)
>is the input language of the model checker SPIN (Holzmann, 2003). The language is loosely based
>on Dijkstra’s guarded command language, borrowing some notation from Hoare’s CSP language.
>One important property check is to detect deadlock states, where none of the processes can apply
>a transition. For example, a process may be blocked when trying to read data from an empty
>communication channel. Edelkamp (2003a) developed an automatic translation from Promela into
>PDDL, which was extended to generate the competition examples.
>>  Hoffmann, Jörg, et al (2015) 

### optical-telegraphs
A verification domain for Optical Telegraphs.
### optical-telegraphs-compiled
A compiled, axiom-free version of optical-telegraphs.

### philosophers
A verification domain for Dining Philosopher problem (https://en.wikipedia.org/wiki/Dining_philosophers_problem).
### philosophers-compiled
A compiled, axiom-free version of philosophers.
