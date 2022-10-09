% 8. Reverting a List

local Append in
   fun {Append Xs Ys}
      case Xs of nil then Ys
      [] X|Xr then X|{Append Xr Ys}
      end
   end
end

local
   fun {Reverse Xs}
      case Xs of nil then nil
      [] X|Xr then {Append {Reverse Xr} [X]}
      end
   end
in
   {Browse {Reverse [1 2 3 4 5 6]}}
end