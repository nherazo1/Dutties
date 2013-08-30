$ontext

Full Comparative Analysis

$offtext
option limrow=0;
option solprint=off;
option limcol=0;
$offsymlist offsymxref
$include farmcomp.gms
$include farmrep.gms

*step 1 - setup scenarios
set ordr /"Scenario setup","Scenario Results"/
set scenarios /base,beefp,beefcorn/
Parameter savsumm(ordr,*,alli,scenarios) Comparative Farm Summary;
table scenprice(primary,scenarios)  price alterations by scenario
                base    beefp   beefcorn
corn                               2.70
soybeans
beef                     0.70            ;

*step 2 save data
parameter savprice(primary) saved primary commodity prices;
savprice(primary)=price(primary);

loop(scenarios,
*step 3 reestablish data to base level
    price(primary)=savprice(primary);

*step 4 change data to levels needed in scenario
    price(primary)$scenprice(primary,scenarios)=scenprice(primary,scenarios);
    display price;

*step 5 -- solve model
   SOLVE FARM USING LP MAXIMIZING NETINCOME;

*step 6 single scenario report writing
$include farmrep.gms

*step 7 cross scenario report writing
    savsumm("Scenario setup","price",primary,scenarios)=price(primary);
    savsumm("Scenario Results",measures,alli,scenarios)=summary(alli,measures);

*step 8 end of loop
    );

*step 9 compute and display final results
option savsumm:2:3:1;display savsumm;
Parameter savsummp(ordr,*,alli,scenarios) Comparative Farm Summary (percent chg);
savsummp(ordr,measures,alli,scenarios)$savsumm(ordr,measures,alli,"base")=
        round(  (savsumm(ordr,measures,alli,scenarios)
          -savsumm(ordr,measures,alli,"base"))*100
          /savsumm(ordr,measures,alli,"base"),1);
savsummp(ordr,measures,alli,scenarios)
          $(savsumm(ordr,measures,alli,"base") eq 0
        and savsumm(ordr,measures,alli,scenarios) ne 0)=na;
savsummp(ordr,"price",alli,scenarios)$savsumm(ordr,"price",alli,"base")=
        round(  (savsumm(ordr,"price",alli,scenarios)
          -savsumm(ordr,"price",alli,"base"))*100
          /savsumm(ordr,"price",alli,"base"),1);
savsummp(ordr,"price",alli,scenarios)
          $(savsumm(ordr,"price",alli,"base") eq 0
        and savsumm(ordr,"price",alli,scenarios) ne 0)=na;
option savsummp:1:3:1;display savsummp;

$ontext
#user model library stuff
Main topic Comparative analysis
Featured item 1 Report writing
Featured item 2 Loop
Featured item 3
Featured item 4

Description
Comparative Analysis
$offtext
