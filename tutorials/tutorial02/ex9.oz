% 9. Changing Head and Tail

% Head and Tail definition with abstraction for lists

%declare
%fun {Head Xs}
%   Xs.1
%end

%fun {Tail Xs}
%   Xs.2
%end

% This definition uses the dot operator “.”, which is used to select the ﬁrst or second argument
% of a list pair. Doing Xs.1 gives the head of Xs, Doing Xs.2 gives the tail of L, the list [6 7 8].

declare Xs
fun {Head Xs} X Xr in Xs=X|Xr X end
fun {Tail Xs} X Xr in Xs=X|Xr Xr end

%{Browse Xs}
%Ys={Tail Xs}
%Zs={Tail Ys}
%a={Head Zs}

% A list is a chain of links, where each link contains two things: one list element and a reference to
% the rest of the chain. Lists are always created one element at a time, starting with nil and adding links
% one by one. A new link is written H|T, where H is the new element and T is the old part of the chain. The
% link H|T is often called a cons, a term that comes from Lisp.2 We also call it a list pair. Creating a new
% link is called consing. If T is a% list, then consing H and T together makes a new list H|T: The list H|T can
% be written [5 6 7 8]. It has head 5 and tail [6 7 8]. The cons H|T can be taken apart, to get back the head
% and tail.


