%% CSC485H1/2501H:Computational Linguistics, Fall 2018%% 
bot sub [s,np,vp]. 

s sub [].  
np sub [].
vp sub [].

john ---> np.
i ---> np.
walks ---> vp.
walk ---> vp.

srule rule
s
===>
cat> np,
cat> vp.
