% Type Hierarchy

bot sub [np,n,nprp,vp,v,p,pp,det].          
np sub []
   intro [ref:index].
% nn:normal noun, pn:proper noun
n sub [nn, pn].
nprp sub [].
vp sub []
   intro [subj:np].          
v sub [].
p sub [].
pp sub [].
det sub [].

index intro [n:num].
  number  sub [sing ,plural].

% Lexical Entries

fido ---> (pn,ref:(num:sing)).
biscuits ---> (nn,ref:(num:plural)).
feed ---> (v,subj:(np:(num:plural))).
feeds ---> (v,subj:(np:(num:sing))).
the ---> det.
dog ---> (nn,ref:(num:sing)).
puppies ---> (nn,ref:(num:plural)).
with ---> p.


% Grammmar Rules

srule rule
s
===>
cat > (np ,index:Ind),
cat > (vp ,subj:index:Ind).

vp rule
(vp,gap:none,sem:VSem,subj:Subj,vform:VForm)
===>
cat> (tv,dobj:Obj,sem:VSem,subj:Subj,vform:VForm),
cat> (np,ref:Obj,case:acc).
















