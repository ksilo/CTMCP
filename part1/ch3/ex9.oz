% 9. Iterative computations and dataﬂow variables.

/*
The previous exercise shows that using dataflow variables sometimes
makes it simpler to write iterative list operations. This leads to the
following question. For any iterative operation defined with dataflow variables,
is it possible to give another iterative definition of the same operation
that does not use dataﬂow variable
*/

%using data flow variables
local
   fun {Merge Xs Ys}
      case Xs # Ys
      of nil # Ys then Ys
      [] Xs # nil then Xs
      [] (X|Xr) # (Y|Yr) then
	 if X<Y then X|{Merge Xr Ys}
	 else Y|{Merge Xs Yr}
	 end
      end
   end
in
   {Browse {Merge [4 2 10] [1 7 9]}}
end

%using values
local
   fun {Merge Xs Ys}
      fun {MergeItter Xs Ys A}
	 case Xs#Ys of nil#Ys then
	    case Ys of nil then {Reverse A}
	    [] Y|Yr then {MergeItter Xs Yr Y|A} end
	 [] Xs#nil then
	    case Xs of nil then {Reverse A}
	    [] X|Xr then {MergeItter Xr Ys X|A} end
	 [] (X|Xr)#(Y|Yr) then
	    if X<Y then {MergeItter Xr Ys X|A}
	    else
	       {MergeItter Xs Yr Y|A}
	    end
	 end
      end
   in
      {MergeItter Xs Ys nil}
   end
in
   {Browse {Merge [4 2 10] [1 7 9]}}
end

/* it can be done, but using data flow variables definition is simpler.
