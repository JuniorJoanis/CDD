CDD
===

This is the solution to this problem

Your users like the chemical inventory system you built for them, but sometimes they unexpectedly run out of a chemical and have to wait for resupply.

After discussing this with them, you realize that many uses recur at defined intervals, and this can help you forecast when the chemical will run out.

For this code problem, you will write the algorithm to predict when a chemical will run out. Please use Ruby (core library only) and include plenty of specs/tests in your favorite testing framework.

Scheduled use
A scheduled use has an amount, a periodicity, a start date and an optional end date
A scheduled use's periodicity can be daily or weekly (on a particular day of the week)
Given a current amount and a set of scheduled uses, predict when the chemical will run out
If the last use brings the amount to zero, then return the date of the last use
If any use makes the amount negative, return the date of the latest use that did not incur a negative balance

