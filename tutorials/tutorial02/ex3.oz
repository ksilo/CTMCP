% 3. Length of a List

% recursive
local
   fun {Length Xs}
      case Xs of nil then 0
      [] X|Xr then 1+{Length Xr}
      end
   end
in
   {Browse {Length [1 2 3 4 5]}}
end

% iterative
local
   fun {Length Xs Y}
      case Xs of nil then Y
      [] X|Xr then {Length Xr Y+1}
      end
   end
in
   {Browse {Length [1 2 3 4 5] 0}}
end


      


	 