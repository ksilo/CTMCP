% 10. A Different Encoding of Lists: Records

declare
L1='cons'(a 'cons'(b el))
L2='cons'(1 'cons'(3 'cons'(5 'cons'(7 el))))

fun {Head Ls}
   Ls.1
end

fun{Tail Ls}
   Ls.2
end

fun {Length Ls}
   case Ls of el then 0
   [] 'cons'(A B) then 1+{Length {Tail Ls}} end
end

fun {Member Ls Y}
   case Ls of el then 'not found'
   [] 'cons'(A B) then
      if {Head Ls} == Y then 'found'({Head Ls})
      else {Member {Tail Ls} Y}
      end
   end
end

fun {Append Ls Ms}
   case Ls of el then Ms
   [] 'cons'(A B) then 'cons'({Head Ls}{Append {Tail Ls} Ms})
   end
end

L3={Append L1 L2}
{Browse L3}
{Browse {Length L3}}
{Browse {Member L3 3}}
{Browse {Member L3 9}}


