% 10. Checking if something is a list.

/*
Section 3.4.3 deﬁnes a function LengthL that calculates the number of elements
in a nested list. To see whether X is a list or not, LengthL uses the function
						   Leaf deﬁned in this way:

	fun {Leaf X} case X of _|_ then false else true end end

What happens if we replace this by the following deﬁnition?:

	fun {Leaf X} X\=(_|_) end

What goes wrong if we use this version of Leaf?
*/

/* Solution:
In the latter deffinition ("I dont care") variables will be unbound
and execution pauses until they will be bound.
*/