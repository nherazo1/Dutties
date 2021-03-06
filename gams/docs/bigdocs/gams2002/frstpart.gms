$ontext
Illustrates save and restart
Illustrates putclose and writing of options file

Run with seq.bat or
         GAMS frstpart s=f1
         GAMS nextpart r=f1

$offtext

*  SUPPRESS THE PRINTOUT OF SYMBOL LIST
*    AND CROSS REFERENCE MAP
$OFFSYMLIST OFFSYMXREF

*  SUPPRESS PRINTOUT OF MODEL ROWS AND COLUMNS
OPTION LIMROW = 0
OPTION LIMCOL =0

*     SECTION A       SET DEFINITON

 SET  PRODUCT       PRODUCTS             /TABLES, CHAIRS/
      TYPE          TYPES OF PRODUCT     /FUNCT ,FANCY/
      RESOURCE      TYPES OF RESOURCES   /SMLLATHE,LRGLATHE,CARVER,LABOR,TOP/
      METHOD        PRODUCTION METHODS   /NORMAL,MAXSML,MAXLRG/
      PLANT         DIFFERENT PLANTS     /PLANT1, PLANT2/;
  ALIAS(PLANT,PLANTS);
*     SECTION B       DATA DEFINITION

 TABLE  PRODCOST(PRODUCT,METHOD,TYPE)  PRODUCTION COST FOR DIFFERENT METHOD

                                  FUNCT         FANCY
         CHAIRS.NORMAL             15             25
         CHAIRS.MAXSML             16             26
         CHAIRS.MAXLRG             17             27
         TABLES.NORMAL             80            100;

TABLE RES(RESOURCE,PRODUCT,TYPE,METHOD) USE OF RESOURCES IN PRODUCTION

           CHAIRS.FUNCT.NORMAL CHAIRS.FUNCT.MAXSML CHAIRS.FUNCT.MAXLRG
SMLLATHE           8                 13                     2
LRGLATHE           5                  2                    13
CARVER             4                  4                     4
LABOR             10                 11                    11
 +         CHAIRS.FANCY.NORMAL CHAIRS.FANCY.MAXSML CHAIRS.FANCY.MAXLRG
SMLLATHE          12                 17                     5
LRGLATHE           7                  3                    15
CARVER            10                 10                    10
LABOR              8                  8                     8
+          TABLES.FUNCT.NORMAL TABLES.FANCY.NORMAL
   LABOR           3                  5
   TOP             1                  1   ;

 TABLE TRANSCOST(PRODUCT,TYPE,PLANT,PLANTS) TRANSPORT COST TO PLANTS

                 PLANT1.PLANT2   PLANT2.PLANT1
    CHAIRS.FUNCT       5                5
    TABLES.FUNCT      14
    CHAIRS.FANCY       5                5
    TABLES.FANCY      18                        ;


 TABLE PRICE(PLANT,TYPE) PRICE OF SETS
                          FUNCT          FANCY
        PLANT1             400            800
        PLANT2             425            850

 TABLE RESORAVAIL(RESOURCE,PLANT) RESOURCES AVAILABLE
                 PLANT1      PLANT2
     TOP           500
     SMLLATHE     1100         1400
     LRGLATHE      880          900
     CARVER        500         1200
     LABOR        1750         1250      ;

 TABLE PRODPERSET(PRODUCT,TYPE)  PRODUCTS PER SET

          FANCY    FUNCT
  CHAIRS    6        4
  TABLES    1        1

 TABLE ACTIVITY(PLANT,PRODUCT,METHOD) TELLS IF A PLANT MAKES A PRODUCT
           TABLES.NORMAL  CHAIRS.(NORMAL,MAXSML,MAXLRG)
   PLANT1     1                    1
   PLANT2                          1

*   SECTION     C      MODEL  DEFINITION

 POSITIVE VARIABLES
      MAKE(PLANT,PRODUCT,METHOD,TYPE)     NUMBER OF ITEMS MADE
      TRNSPORT(PRODUCT,TYPE,PLANT,PLANTS) NUMBER OF ITEMS TRANSPORTED
      SELL(PLANT,TYPE)                    NUMBER OF SETS SOLD;
 VARIABLES
      NETINCOME                           PROFIT;
 EQUATIONS
      OBJT                                OBJECTIVE FUNCTION ( PROFIT )
      RESOUREQ(PLANT,RESOURCE)            RESOURCES AVAILABLE
      PLANTPROD(PLANT,PRODUCT,TYPE)       PRODUCT BALANCE FOR A PLANT;

OBJT..      NETINCOME =E=
   SUM((PLANT,TYPE),
         PRICE(PLANT,TYPE) * SELL(PLANT,TYPE))
 - SUM((PLANT,PRODUCT,METHOD,TYPE)$ACTIVITY(PLANT,PRODUCT,METHOD),
        MAKE(PLANT,PRODUCT,METHOD,TYPE)*PRODCOST(PRODUCT,METHOD,TYPE))
 - SUM((PRODUCT,TYPE,PLANT,PLANTS)$TRANSCOST(PRODUCT,TYPE,PLANT,PLANTS),
         TRANSCOST(PRODUCT,TYPE,PLANT,PLANTS)
        *TRNSPORT(PRODUCT,TYPE,PLANT,PLANTS));

  RESOUREQ(PLANT,RESOURCE)..
         SUM((PRODUCT,TYPE,METHOD)$ACTIVITY(PLANT,PRODUCT,METHOD),
              RES(RESOURCE,PRODUCT,TYPE,METHOD)
             *MAKE(PLANT,PRODUCT,METHOD,TYPE) )
             =l= RESORAVAIL(RESOURCE,PLANT) ;

  PLANTPROD(PLANT,PRODUCT,TYPE)..
             SUM(PLANTS$TRANSCOST(PRODUCT,TYPE,PLANT,PLANTS)
                        ,TRNSPORT(PRODUCT,TYPE,PLANT,PLANTS))
           - SUM(PLANTS$TRANSCOST(PRODUCT,TYPE,PLANTS,PLANT)
                 ,TRNSPORT(PRODUCT,TYPE,PLANTS,PLANT))
           + SELL(PLANT,TYPE)*PRODPERSET(PRODUCT,TYPE)
           =L= SUM(METHOD$ACTIVITY(PLANT,PRODUCT,METHOD),
                        MAKE(PLANT,PRODUCT,METHOD,TYPE));

 MODEL FIRM /ALL/;
 OPTION SOLPRINT = ON ;

* SECTION D    SOLVE THE PROBLEM
 SOLVE FIRM USING LP MAXIMIZING NETINCOME;
parameter lab(resource) /labor 1/;
RES(RESOURCE,PRODUCT,TYPE,METHOD)=RES(RESOURCE,PRODUCT,TYPE,METHOD)$
                                    lab(resource);
option lp=minos5;
FILE  OPT   Minos option file  / MINOS5.OPT /;
PUT OPT;
PUT 'BEGIN'/
    '  Iteration limit        500'/
    '  Major damping parameter 0.5'/
    '  Feasibility tolerance   1.0E-7'/
    '  Scale all variables'/
    'END';
PUTCLOSE OPT;
firm.optfile=1;
SOLVE FIRM USING LP MAXIMIZING NETINCOME;


$ontext
#user model library stuff
Main topic Save restart
Featured item 1 Save
Featured item 2 Restart
Featured item 3 Putclose
Featured item 4 Option file
include (seq.bat,nextpart.gms)

Description

Illustrates save and restart
Illustrates putclose and writing of options file

Run with seq.bat or
         GAMS frstpart s=f1
         GAMS nextpart r=f1

$offtext
