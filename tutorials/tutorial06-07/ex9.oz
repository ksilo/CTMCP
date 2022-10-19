% 9. Testing List Elements

local
   fun {All Xs F}
      case Xs of nil then true
      [] X|X1 then
	 if {F X} then {All X1 F}
	 else
	    false
	 end
      end
   end
in
   {Browse {All [1 2 3 4] IsNumber}}
   {Browse {All [1 2 a 4] IsNumber}}
end


local
   fun {Some Xs F}
      case Xs of nil then false
      [] X|X1 then
	 if {F X} then true
	 else
	    {Some X1 F}
	 end
      end
   end
in
   {Browse {Some [a b 2 l] IsNumber}}
   {Browse {Some [a s c b] IsNumber}}
end
