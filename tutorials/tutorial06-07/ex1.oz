% 1. Making Length Tail-Recursive

% Length of List recursive def
declare
fun {Length Xs}
   case Xs of nil then 0
   [] X|X1 then 1+{Length X1}
   end
end

% Length of List iterative (making tail-recursive)
fun {LengthTR Xs A}
   case Xs of nil then A
   [] X|X1 then {LengthTR X1 A+1}
   end
end

% We can make a generic funtion for List operation with FoldR
% using higher order programming

fun {FoldR Xs F U}
   case Xs of nil then U
   [] X|X1 then {F X {FoldR X1 F U}}
   end
end

% recurive Length of List using generic function FoldR
fun {LengthGen Xs}
   {FoldR Xs fun {$ X Y} 1+Y end 0}
end

% to can make FoldR iterative, but FoldL is simpler
fun {FoldL Xs F U}
   case Xs of nil then U
   [] X|X1 then {FoldL X1 F {F U X}}
   end
end

% FoldR generic iterative version 
fun {FoldRIT Xs F U}
   fun {Loop Xs U}
      case Xs of nil then U
      [] X|X1 then {Loop X1 {F X U}}
      end
   end
in
   {Loop {Reverse Xs} U} % calculates from the last element in the list
   %we don't need reverse in this application, but it is a generic function
end

% iterative (tail-recursive) Length of List function from generic FoldL
fun {LengthGenIT Xs}
   {FoldL Xs fun {$ U X} U+1 end 0}
end

% iterative (tail-recursive) Length of List function from generic FolR
fun {LengthGenIT1 Xs}
   {FoldR Xs fun {$ X U} U+1 end 0}
end

{Browse {LengthGenIT1 [1 2 3 4 5 6 7 8 9 0]}}
