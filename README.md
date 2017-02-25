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

- Functional STRIPS

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

- Conditional Effects

###muddy-children-kg

- Conditional Effects


###muddy-child-kg

- Conditional Effects

MuddyChild(n, m) is a reformulation of MuddyChildren
where a particular child must find out whether he is muddy
or not. For this he can ask individually each other child i
whether i knows that he is muddy, with all other children
listening the response.

Muddy Children Puzzle by (Fagin et al. 1995)

###sum-kg

- Conditional Effects

Sum(n) is a domain based on ”What is the Sum?” (van Ditmarsch,
van der Hoek, and Kooi 2007b), which in turn borrows
from the ”Sum and Product Riddle” (van Ditmarsch,
Ruan, and Verbrugge 2008) and the Muddy Children. There
are three agents a, b, and c, each one with a number on his
forehead between 1 and n. It is known that one of the numbers
must be the sum of the other two. In addition, each agent
can see the numbers on the other agent’s foreheads, and can

###wordrooms

- Conditional Effects

##ghosh-etal-JAR:

###optical-telegraphs
###philosophers
