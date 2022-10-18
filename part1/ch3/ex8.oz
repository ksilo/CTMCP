% 8. An iterative append.

/*
How can we write an iterative append? One approach is to deﬁne
two functions: (1) an iterative list reversal and (2) an iterative function that appends
the reverse of a list to another list. Write an iterative append using this approach.
*/
   
local Reverse in
   fun {Reverse Xs}
      fun {ReverseItter Xs A}
	 case Xs of nil then A
	 [] X|X1 then
	    {ReverseItter X1 X|A}
	 end
      end
   in
      {ReverseItter Xs nil}
   end
end
		    
local
   fun {Append Xs Ys}
      fun {AppendItter Xs Ys}
	 case Xs of nil then Ys
	 [] X|X1 then {AppendItter X1 X|Ys}
	 end
      end
   in
      {AppendItter {Reverse Xs} Ys}
   end
in
   {Browse {Append [1 2 3] [4 5 6]}}
end
