% 3. The half-interval method.

/*
The half-interval method is a simple but powerful
technique for ﬁnding roots of the equation f(x)=0, where f is a continuous
real function. The idea is that, if we are given real numbers a and b such that
f(a)<0<f(b), then f must have at least one root between a and b. To locate
a root, let x=(a+b)/2 and compute f(x). If f (x)>0, then f must have a
root between a and x. If f(x)<0 then f must have a root between x and b.
Repeating this process will deﬁne smaller and smaller intervals that converge on
a root. Write a declarative program to solve this problem using the techniques of
iterative computation.
*/
				    
local
   fun {Roots D E F}
      fun {FindRootIter A B}
	 fun {MidVal A B}
	    (A+B)/2.0
	 end
	 fun {TestEq X}
	 (D*X*X)+(E*X)+F
	 end
	 
	 X in X={MidVal A B}

	 if {TestEq X} == 0.0 then
	    X
	 elseif {TestEq X} < 0.0 then
	    {FindRootIter A X}
	 else
	    {FindRootIter X B}
	 end
      end
   in
      {FindRootIter ~19.0 20.0}
   end
in
   {Browse {Roots 6.0 ~1.0 ~2.0}}
end
