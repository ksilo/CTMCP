% 2.Pattern Matching for Head and Tail

local
   fun {HeadTail Xs}
      case Xs of nil then nil
      [] Head|Tail then Head#Tail
      end
   end
in
   {Browse {HeadTail [1 2 3 4 5]}}
end

