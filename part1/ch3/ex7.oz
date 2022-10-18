% 7. Another append function.

/*
Section 3.4.2 deﬁnes the Append function by doing
recursion on the ﬁrst argument. What happens if we
try to do recursion on the second argument? Here is a possible solution:
*/
declare 
fun {Append Ls Ms}
   case Ms
   of nil then Ls
   [] X|Mr then {Browse X} {Browse Mr}
      {Append {Append Ls [X]} Mr}
   end
end

% Is this program correct? Does it terminate? Why or why not?

/* Progams is not correct. It goes into infinite loop following the execution
order (Ms splitting into head and tail 4|nil forever). 
*/