% 5. An iterative SumList.

/*
Rewrite the function SumList of section 3.4.2 to be
iterative using the techniques developed for Length.
					    */
					    
local
   fun {SumList Ls}
      fun {SumListIter Ls A}
	 case Ls of nil then A
	 [] L|L1 then {SumListIter L1 A+L}
	 end
      end
   in
      {SumListIter Ls 0}
   end
in
   {Browse {SumList [1 2 3 4 5 6 7 8 9 10]}}
end
