*Illustrate suppression of equations and holdfixed to reduce memory and time

option limrow=0; option limcol=0;
$offsymxref offsymlist
option solprint=off; option profile=1;
SETS  PLANT    PLANT LOCATIONS /NEWYORK  , CHICAGO , LOSANGLS ,1*147/
      MARKET   DEMAND MARKETS  /MIAMI,   HOUSTON, MINEPLIS, PORTLAND,1*296/
PARAMETERS   SUPPLY(PLANT)  QUANTITY AVAILABLE AT EACH PLANT
                /NEWYORK   100, CHICAGO   275, LOSANGLS   90/
             DEMAND(MARKET)   QUANTITY REQUIRED BY DEMAND MARKET
                /MIAMI     100, HOUSTON    90,
                 MINEPLIS  120, PORTLAND   90/;
 TABLE   DISTANCE(PLANT,MARKET)   DISTANCE FROM EACH PLANT TO EACH MARKET
                     MIAMI   HOUSTON   MINEPLIS   PORTLAND
         NEWYORK      1300     1800       1100       3600
         CHICAGO      2200     1300        700       2900
         LOSANGLS     3700     2400       2500       1100         ;
 PARAMETER COST(PLANT,MARKET)    CALCULATED COST OF MOVING GOODS;
       COST(PLANT,MARKET)$distance(plant,market)=50+DISTANCE(PLANT,MARKET);
 POSITIVE VARIABLES
         SHIPMENTS(PLANT,MARKET) AMOUNT SHIPPED OVER A TRANSPORT ROUTE;
 VARIABLES
         TCOST                   TOTAL COST OF SHIPPING OVER ALL ROUTES;
 EQUATIONS
         slTCOSTEQ               SLOW TOTAL COST ACCOUNTING EQUATION
         slSUPPLYEQ(PLANT)       SLOW LIMIT ON SUPPLY AVAILABLE AT A PLANT
         slDEMANDEQ(MARKET)      SLOW MINIMUM REQUIREMENT AT A DEMAND MARKET
         inDEMANDEQ(MARKET)      intermediate MINIMUM REQUIREMENT AT A DEMAND MARKET
         fsTCOSTEQ               FAST TOTAL COST ACCOUNTING EQUATION
         fsSUPPLYEQ(PLANT)       FAST LIMIT ON SUPPLY AVAILABLE AT A PLANT
         fsDEMANDEQ(MARKET)      FAST MINIMUM REQUIREMENT AT A DEMAND MARKET ;
 slTCOSTEQ..
  TCOST=E=SUM((PLANT,MARKET), SHIPMENTS(PLANT,MARKET)*COST(PLANT,MARKET));
 slSUPPLYEQ(PLANT)..
     SUM(MARKET,SHIPMENTS(PLANT, MARKET))=L= SUPPLY(PLANT);
 slDEMANDEQ(MARKET)..
     SUM(PLANT, SHIPMENTS(PLANT, MARKET))=G=DEMAND(MARKET);
 MODEL SLTRANS /sltcosteq,slsupplyeq,sldemandeq/;
* SOLVE slTRANS USING LP MINIMIZING TCOST;

 inDEMANDEQ(MARKET)$demand(market)..
   SUM(PLANT,  SHIPMENTS(PLANT, MARKET)) =G= DEMAND(MARKET);
 MODEL inTRANS /sltcosteq,slsupplyeq,indemandeq/;
* SOLVE inTRANS USING LP MINIMIZING TCOST;

 fsTCOSTEQ..
  TCOST =E= SUM((PLANT,MARKET)$cost(plant,market)
                         , SHIPMENTS(PLANT,MARKET)*COST(PLANT,MARKET));
 fsSUPPLYEQ(PLANT)$supply(plant)..
  SUM(MARKET, SHIPMENTS(PLANT, MARKET))=L= SUPPLY(PLANT);
 fsDEMANDEQ(MARKET)$demand(market)..
  SUM(PLANT,  SHIPMENTS(PLANT, MARKET)) =G= DEMAND(MARKET);

 MODEL fsTRANS /fstcosteq,fssupplyeq,fsdemandeq/;
 SHIPMENTS.fx(PLANT,MARKET)$(cost(plant,market) eq 0)=0;
 SOLVE fsTRANS USING LP MINIMIZING TCOST;
 fstrans.holdfixed=1;
 SOLVE fsTRANS USING LP MINIMIZING TCOST;

$ontext
#user model library stuff
Main topic Speed
Featured item 1  Holdfixed
Featured item 2  Conditionals
Featured item 3  Equation suppression
Featured item 4
Description
Illustrate suppression of equations and holdfixed to reduce memory and time

$offtext
