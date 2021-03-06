$TITLE Managing insurance policies with guarantee - The Prometeia Model - GDX Input

* GuaranteeModelGDX.gms: Managing insurance policies with guarantee - The Prometeia Model - GDX Input.
* Consiglio, Nielsen and Zenios.
* PRACTICAL FINANCIAL OPTIMIZATION: A Library of GAMS Models, Section 8.4
* Last modified: May 2008.

SETS
         TT Time
         SS Number of scenarios
         AA Set of Assets;

ALIAS(SS,l);
ALIAS(TT,t,k);
ALIAS(AA,i,j);

PARAMETERS
         ar(l,t,i)          Asset Returns Scenarios
         abp(t)             Abandon Probabilities
         pcf(l,t)           Risk Free Periodic Capitalization Factor Scenarios
         cf(l)              Risk Free Capitalization Factor Scenarios;

$gdxin GuaranteeData
$load AA SS TT ar abp pcf cf
$gdxin

SCALARS
   mig      Minimum Guarantee          /0.04/
   ptr      Partecipation Rate         /0.85/
   ili      Initial Liability          /1.0/
   txr      Tax Rate for shareholders  /0.51/
   rho      Equity Ratio               /0.04/;


POSITIVE VARIABLES
   HO(i)           Asset holdings
   YP(l,t)         yPlus - surplus in excess of  minimum guarantee.
   YM(l,t)         yMinus - deficit in lack of minimum guarantee.;


FREE VARIABLES
   PRT(l,t)        Portfolio Return.
   EUROE           Expected Utility Return On Equity;


EQUATIONS
   OFe           Objective Function equation.
   BAe           Balance equation.
   PRTd(l,t)     Portfolio return dynamics.
   YPMd(l,t)     Equations defining the yPlus and yMinus dynamics;


OFe..  EUROE =E= 1/CARD(l)*SUM{l, LOG([(1+rho)*PROD (t, 1+PRT(l,t))
               + SUM(t, ((YM(l,t) - (abp(t)*(1 + mig + YP(l,t))))
               * PROD(k$(ORD(k)>ORD(t)), (1 + PRT(l,k)))* PROD(k$(ORD(k)<ORD(t)), (1 - abp(k))*(1 + mig +  YP(l,k)))))
               - PROD(t, (1 - abp(t))*(1 + mig + YP(l,t)))]
              / [rho*cf(l) + SUM(t, YM(l,t)*pcf(l,t)*PROD(k$(ORD(k)<ORD(t)), (1 - abp(k))*(1 + mig +  YP(l,k))))])};

BAe..            SUM(i, HO(i)) =E= 1;

PRTd(l,t)..    PRT(l,t) =E= SUM(i, (HO(i) * ar(l,t,i)));

YPMd(l,t)..   (ptr * PRT(l,t) - mig) =E= YP(l,t) - YM(l,t);


MODEL PrometeiaModel 'PFO 12.4.1' / ALL /;

* Guess an initial solution and set bounds on variables

HO.UP(i) = 1;

HO.L(i) = 0.0;
HO.L('AA_1') = 0.8;
HO.L('AA_2') = 0.2;

PRT.L(l,t) = SUM(i, (HO.L(i) * ar(l,t,i)));
YM.L(l,t) = - MIN ((ptr * PRT.L(l,t) - mig), 0);
YP.L(l,t) = MAX ((ptr * PRT.L(l,t) - mig), 0);


SOLVE PrometeiaModel USING NLP MAXIMIZING EUROE;


* Post Optimization Calculation and Output

SCALARS
   OptimalCeXRoe     Optimal certainty equivalent excess Return-On-Equity
   AnnualNetCeXRoe   Annual equivalent, net of tax, of the  OptimalCeXRoe
   ExpGuarCost       Expected guarantee cost;

PARAMETERS
   FinalEquity(l)   Final equity level;


OptimalCeXRoe = EXP ( EUROE.L );

FinalEquity(l) = rho*cf(l)
                + SUM(t, YM.L(l,t)*pcf(l,t)*PROD(k$(ORD(k)< ORD(t)), (1 - abp(k))*(1 + mig +  YP.L(l,k))));

ExpGuarCost = 1/CARD(l)*SUM(l, FinalEquity(l)/cf(l) - rho*ili);

AnnualNetCeXRoe = (OptimalCeXRoe**(1/CARD(t)) - 1)*(1 - txr);

FILE ResultHandle /"InsuranceResults.csv"/;

ResultHandle.pc = 5; ResultHandle.pw = 1048;

PUT ResultHandle;

PUT "Number of scenarios", CARD(l):0:0/;
PUT "Partecipation rate", ptr:0:3/;
PUT "Minimum guarantee", mig:0:4/;
PUT "Equity ratio", rho:0:3/;
PUT "Model status", PrometeiaModel.MODELSTAT:0:0/;

PUT "Portfolio composition" /;
LOOP ( i $HO.L(i),
   PUT i.TL,i.TE(i),HO.L(i):12:8/);

PUT "CExROE","Annual net CExROE","Cost of minimum guarantee"/;
PUT OptimalCeXRoe:12:8,AnnualNetCeXRoe:12:8,ExpGuarCost:12:8/;

PARAMETER YPYM(l,t) disjoint test;

YPYM(l,t) = YP.L(l,t) * YM.L(l,t);

DISPLAY YPYM;
