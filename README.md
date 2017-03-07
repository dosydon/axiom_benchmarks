# Planning Domains with Derived Predicates

## Domains by Ivankovic and Haslum(IJCAI, 2015)
Domains by Franc Ivankovic and Patric Haslum, used under CC BY-SA 4.0 (http://creativecommons.org/licenses/by-sa/4.0/legalcode).

###sokoban-axioms:
A formulation of the Sokoban domain using axioms. There are two
encodings: one uses only classical (STRIPS) PDDL and axioms, the
other uses "Functional STRIPS" (i.e., object-valued fluents, a la
PDDL 3.1). More on this below.

###psr-middle-noce:
The PSR middle-sized problem set from IPC 2004, formulation with
axioms but without conditional effects.

###mincut

###acc-cc2-ghosh-etal
A reformulation of acc-cc1-ghosh-etal using axioms.
###doorexample-broken-ghosh-etal
A reformulation of doorexample-broken-ghosh-etal-noaxioms using axioms.
###doorexample-fixed-ghosh-etal
A reformulation of doorexample-fixed-ghosh-etal-noaxioms using axioms.
###grid-cc2-ghosh-etal
A reformulation of doorexample-fixed-ghosh-etal-noaxioms using axioms.

###trapping game
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

##Domains by Filipos Kominis and Hector Geffner (ICAPS 2015)
Problems by Filippos Kominis and Hector Geffner, from their paper
"Beliefs in Multiagent Planning: From One Agent to Many" (ICAPS 2015).
These are cooperative multi-agent planning with partial observability
and nested beliefs, compiled into planning with axioms. They were
provided to us by Filippos Kominis.

###collab-and-comm-kg

###muddy-children-kg
Muddy Children Puzzle by (Fagin et al. 1995)

###muddy-child-kg

>MuddyChild(n, m) is a reformulation of MuddyChildren
>where a particular child must find out whether he is muddy
>or not. For this he can ask individually each other child i
>whether i knows that he is muddy, with all other children
>listening the response.

###sum-kg

>Sum(n) is a domain based on ”What is the Sum?” (van Ditmarsch,
>van der Hoek, and Kooi 2007b), which in turn borrows
>from the ”Sum and Product Riddle” (van Ditmarsch,
>Ruan, and Verbrugge 2008) and the Muddy Children. There
>are three agents a, b, and c, each one with a number on his
>forehead between 1 and n. It is known that one of the numbers
>must be the sum of the other two. In addition, each agent
>can see the numbers on the other agent’s foreheads, and can

###wordrooms

##ghosh-etal-JAR:
The controller verification problems by Ghosh, Dasgupta and Ramesh
("Automated Planning as an Early Verification Tool for Distributed
Control", Journal of Automated Reasoning vol. 54, 2015), sourced from
http://www.facweb.iitkgp.ernet.in/~pallab/PAPLAN.tar.gz.
###acc-cc1-ghosh-etal

>The ACC is designed to take away the burden of adjusting the speed of the vehicle from the driver, mostly
>under light traffic conditions. The ACC operates in two modes - the speed control mode and the time gap
>mode. In the speed control mode, the main functionality of ACC is to maintain the speed of the vehicle
>(termed ego vehicle) at a set constant speed v ref . In the time gap mode, the speed and distance of nearby
>vehicles (termed subject vehicles) are taken into consideration to maintain a safe time gap with the vehicles
>in the front. The time gap is defined as the time taken by a following vehicle to cover the distance from a
>leading vehicle at current speed. The speed control mode may be active when there is no obstructing traffic.
>The time gap mode may be active whenever obstructing traffic is detected by the vehicle’s radar.

###doorexample-broken-ghosh-etal-noaxioms
###doorexample-fixed-ghosh-etal-noaxioms
###grid-cc1-ghosh-etal

>The GRID domain is a synthetic planning domain loosely based on cellular automata and
>incorporates a parallel depth first search protocol for added variety. A problem instance in
>this domain consists of a finite matrix of connected compute elements (processors) which
>process the jobs submitted to them (Fig. 7). Each processor in the grid has four communica-
>tion ports through which it may be connected to its neighboring processors. Jobs are created
>in a separate set of elements called as the dispenser units which are connected to some of
>the processors in the GRID via their communication ports. Once created, each new job is
>transferred to a processor (or rejected by the grid as a whole) after a distributed depth-first
>search occurs automatically for an available handler.

## IPC Domains
###psr-middle

>Developed by Sylvie Thiebaux and Jörg Hoffmann. Planners must resupply a number of lines in a faulty electricity network. The flow of electricity through the network, at any point in time, is given by a transitive closure over the network connections, subject to the states of the switches and electricity supply devices. The domain is therefore a good example of the usefulness of derived predicates in real-world applications.

###psr-middle-compiled
A comiled, axiom-free version of psr-middle.

###optical-telegraphs
> Developed by Stefan Edelkamp. Planners are asked to find deadlocks in communication protocols, translated into PDDL from the Promela specification language. Deadlocks were specified via blocked transitions and processes. The representation chosen for the processes are finite state transition systems, while communication channels are modelled by queues with moving head and tail pointers. The communication protocols used in IPC-4 were the dining philosophers problem, as well as an optical telegraph routing problem.
###optical-telegraphs-compiled
A comiled, axiom-free version of optical-telegraphs.

###philosophers
###philosophers-compiled
A comiled, axiom-free version of philosophers.
