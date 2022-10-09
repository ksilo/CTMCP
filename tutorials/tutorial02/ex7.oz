% 7. Appending Two Lists

% type signature
% <List T> ::= nil | T '|' <List T>
% <fun {$ <List T> <Lits T>} : <List T>
%inductive definition
% append(nil, m) = m
% append(x|l, m) = x|append(l, m)

local
   fun {Append Xs Ys}
      case Xs of nil then Ys
      [] X|Xr then X|{Append Xr Ys}
      end
   end
in
   {Browse {Append [1 2 3] [4 5 6]}}
end
