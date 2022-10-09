% 4. Finding an Element in a List

local
   fun {Member Xs Y}
      case Xs of nil then 'not found'(Y)
      [] X|Xr then
	 if X==Y then 'found:'(X) else {Member Xr Y} end
      end
   end
in
   {Browse {Member [1 2 3 4 5] 5}}
   {Browse {Member [1 2 3 4 5] 9}}
end

		      
		  