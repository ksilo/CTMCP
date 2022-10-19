% 10. Mapping Tuples

declare
local
   fun {Square X}
      X*X
   end
end

local
   fun {Map N T T1 F}
      if N==0 then T1
      else
	 T1.N = {F T.N}
	 {Map N-1 T T1 F}
      end
   end
in
   fun {MapTuple T F}
      N={Width T}
      T1={MakeTuple {Label T} N}
   in
      {Map N T T1 F}
   end
end

{Browse {MapTuple a(3 6 9 12) Square}}