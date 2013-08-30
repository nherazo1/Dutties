*example from GAMS model library that uses
*relatively poor naming conventions

$Title Elementary Production and Inventory Model
$Ontext
   A manufaturer can produce three different products requiring the
   storage of two rawmaterials. Expected profits change over time and
   remaining rawmaterials are valued.
$Offtext
 Sets  p     products       / low, medium, high /
       r     raw materials  / scrap, new /
       tt    long horizon   / 1*4 /
       t(tt) short horizon  / 1*3 /
 Table  a(r,p)  input coefficients
          low  medium  high
 scrap      5     3      1
 new        1     2      3
 Table  c(p,t)  expected profits
            1    2    3
 low       25   20   10
 medium    50   50   50
 high      75   80  100
 Table  misc(*,r)  other data
            scrap  new
 max-stock    400  275
 storage-c     .5    2
 res-value     15   25
 Scalar m maximum production / 40 /;
 Variables  x(p,tt)  production and sales
            s(r,tt)  opening stocks
            profit
 Positive variables x, s;
 Equations  cc(t)    capacity constarint
            sb(r,tt) stock balance
            pd       profit definition ;
 cc(t)..     sum(p, x(p,t)) =l= m;
 sb(r,tt+1).. s(r,tt+1) =e= s(r,tt) - sum(p, a(r,p)*x(p,tt));
 pd.. profit =e= sum(t, sum(p, c(p,t)*x(p,t))-sum(r, misc("storage-c",r)*s(r,t)))
               + sum(r, misc("res-value",r)*s(r,"4"));
 s.up(r,"1") = misc("max-stock",r);
 Model robert / all /
 Solve robert maximizing profit using lp;

$ontext
#user model library stuff
Main topic Good Modeling
Featured item 1 Formatting
Featured item 2 Item names
include good.gms
Description
Example from GAMS model library that uses
relatively poor naming conventions

$offtext
