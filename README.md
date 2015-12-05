# PrologNetworkSec
Network Supervision System written in Prolog

Spec:

Modeling part of a network supervision system; this is system is quite fictional.  
These are the facts:

        owner(id, first, last)    associate a first and last name with a computer id
        antivirus (id, level)   means this id has protection of the given level (a number)
        infected (id, level)    means this id is infected with that level virus 
        contact (id1, id2)      means that id1 has transmitted info to id2

The idea here is that contacts potentially spread viruses. A computer with protection
at, say, level 5 cannot be infected with a virus of level 5 or less, but 
can be infected with a virus of level 6 or more.  The infected(.,.) facts indicate known 
infections.

Note: due to the fact that Prolog interprets tokens that start with an uppercase letter as 
variables, the first/last name should either be lowercase, or be enclosed in single-quotes.

You will implement these rules:

        inDanger(X)
        needsAlert(FIRST,LAST)

where inDanger(X) succeeds if there has been a chain of contacts such that the
computer with id X could be infected. Note that such a chain can not include any computer
protected against that infection. And needsAlert(FIRST,LAST) succeeds if the person 
named FIRST LAST is in danger. You will probably need to write other auxiliary rules as well.

Create two files: network_sys, and my_rules.  Your facts should be robust
enough to test the rules in several contexts. In particular, you should provide at
least enough sample facts to be able to demonstrate the success and failure of both
rules, and the applicability of each type of fact to those rules.
