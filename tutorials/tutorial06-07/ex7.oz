% 7. Computing Maximum with Fold

declare
fun {FoldL L F U}
   case L of nil then U
   [] X|L1 then
      {FoldL L1 F {F U X}}
   end
end

fun {MaxList L}
   {FoldL L fun {$ U X} if U<X then X else U end end 0}
end

{Browse {MaxList [0 1 9 3 4 12 101 45 8 1 78 99 0]}}

% It depends of the definition of FoldL and FoldR.
% I am using Iterative definition (tail recursive) of FoldL
% it is simpler then iterative definition of FoldR and
% recursive definition of FoldR is not a tail recursive
% so basicallly you should use FoldL in this situation