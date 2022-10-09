% 5. Finding the Position of an Element in a List

% v1 assumes that Y is an element of Xs
local
   fun {Position Xs Y}
      if Xs.1==Y then 1 else 1+{Position Xs.2 Y} end
   end
in
   {Browse {Position [a b c d e f] e}}
end

% v2 returns 0, if Y does not occur in Xs
local
   fun {Position Xs Y}
      fun {Iter N Xs Y}
	 case Xs of nil then 0
	 [] X|Xr then
	    if X==Y then N else {Iter N+1 Xr Y}
	    end
	 end
      end
   in
      {Iter 1 Xs Y}
   end
in
   {Browse {Position [a b c d e f] e}}
   {Browse {Position [a b c d e f] z}}
end
