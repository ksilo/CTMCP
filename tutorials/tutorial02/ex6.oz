% 6. Taking and Dropping Elements

% {Take Xs N} returns the first N elements of Xs 
local
   fun {Take Xs N}
      fun {Iter I Xs N}
	 case Xs of nil then Xs
	 [] X|Xr then
	    if I==N then X|nil else X|{Iter I+1 Xr N}
	    end
	 end
      end
   in
      {Iter 1 Xs N}
   end
in
   {Browse {Take [a b c d e f] 2}}
end

% {Drop Xs N} returns Xs without its first N elements.

local
   fun {Take Xs N}
      fun {Iter I Xs N}
	 case Xs of nil then Xs
	 [] X|Xr then
	    if I==N then Xr else {Iter I+1 Xr N}
	    end
	 end
      end
   in
      {Iter 1 Xs N}
   end
in
   {Browse {Take [a b c d e f] 2}}
end