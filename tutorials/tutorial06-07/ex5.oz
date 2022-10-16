% 5. Filtering List Elements

local
   fun {Filter Xs F}
      case Xs of nil then nil
      [] X|Xr andthen {F X} then X|{Filter Xr F}
      [] X|Xr then {Filter Xr F}
      end
   end
in
   {Browse {Filter [1 2 3 4 5 6 7 8 9 10] fun {$ X} X mod 2==0 end}}
end
