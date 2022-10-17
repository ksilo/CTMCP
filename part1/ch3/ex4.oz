% 4. Iterative factorial.

/*
This chapter gives a deﬁnition of factorial whose maximum
stack depth is proportional to the input argument. Give another deﬁnition of
factorial which results in an iterative computation. Use the technique of state
transformations from an initial state, as shown in the IterLength example.
*/

local
   fun {Fact N}
      fun {FactIter N A}
	 if N==0 then A
	 else
	    {FactIter N-1 A*N}
	 end
      end
   in
      {FactIter N 1}
   end
in
   {Browse {Fact 6}}
end
