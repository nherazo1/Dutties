$ontext

Report writer setup for ASM model

$offtext

SCALAR BASEOUTPUT /1/
*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

*  REPORT WRITING

*&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

  SET BALITEM   ITEMS IN SUPPLY DEMAND BALANCE TABLE
                /PRICEx100 ,  PRODUCTION,
                 PROC-YLD  ,  IMPORT    ,
                 PROD-USE  ,  NONAGSUPLY,
                 FEEDMIXUSE,  PROC-USE  ,
                 DOM-DEMAND,  EXPORT    ,
                 CCCLOANSTK               /

     ITEMCS     ITEMS FOR DOMESTIC CONSUMER SURPLUS TABLE
                /PRICEx100 ,  QUANTITY  ,
                 EXPEND    ,  DOMEST-CS ,
                 MIN-REQ   ,  TOTCS      /

     ITEMFOR    ITEMS FOR FOREIGN WELFARE TABLE
                /PRICEx100 ,  EXPQUANT  ,
                 EXPORT-CS ,  IMPQUANT  ,
                 IMPORT-PS ,  PS+CS     ,
                 MIN-REQ   ,  TOTWEL     /

     NONFEED(PROCESSALT)

     ITEMDEF    ITEMS FOR GOV DEFICIENCY PAYMENT REPORT
                /DEFRATE   ,  DEFPYMT   ,
                 5092PYMT  ,  092PYMT   ,
                 DIVPYMT   ,  UNHARVPYMT,
                 ARTIFPYMT ,  TOTDEFPYMT,
                 MKTRATE   ,  MKTPYMT   ,
                 DEF+MKT                 /

     IDEF(ITEMDEF)   ITEMS FOR TOTAL IN GOV DEF PAYMENT REPORT
                /DEFPYMT   ,  5092PYMT  ,
                 092PYMT   ,  DIVPYMT   ,
                 UNHARVPYMT,  ARTIFPYMT ,
                 TOTDEFPYMT,  MKTPYMT   ,
                 DEF+MKT                 /


     ITEMCCC   ITEMS FOR CCC LOAN COST REPORT
                /CCCSTK    ,  CCCRATE   ,
                 CCCLOANCST              /

     ICCC(ITEMCCC)   ITEMS FOR TOTAL IN CCC LOAN  REPORT
                /CCCLOANCST/

     WELITEM  WELFARE ITEMS FOR SUMMARY REPORTS
                /DOM-TOTAL ,  DOM-CONSUM,
                 DOM-PRODUC,  FOR-TOTAL ,
                 FOR-EXPORT,  FOR-IMPORT,
                 NONAG-TOT ,  TOT-SOCIAL,
                 GOV-DEFPMT,  GOV-MKTLN ,
                 GOV-CARB  ,  GOV-TOTPMT,
                 NET-SOCIAL,  NET-DOMEST /


   LABRITEM     LABOR ITEMS FOR REPORTS
               /FAMILY     ,  REWAG     ,
                VALUE      ,  HIRED     ,
                WAGE       ,  VALU      ,
                TOTALLABR  ,  TOTVALU    /

   WATRITEM   WATER ITEMS FOR REPORTS
               /FIXED      ,  FIXPRC    ,
                FVALUE     ,  PUMPED    ,
                PUMPPRICE  ,  PVALUE    ,
                TOTALWATER ,  TOTWVAL    /

   PROCITEM   PROCESSING ITEMS
               /LEVEL      ,  RED-COST   /

   HARVLAND   HARVESTED ACREAGE ITEMS
               /DRYHARV    ,  IRRHARV   ,
                TOT-HARV   ,  DIVERTLAND,
                TOT-ACRE   ,  AVG-YIELD  /


   AUMSIT     AUMS ITEMS FOR REPORTS
               /PUBLIC     ,  PUBPRC    ,
                PUBVALUE   ,  PRIVATE   ,
                PRIVPRC    ,  PRIVALUE  ,
                TOTALAUMS  ,  TOTAUMVAL  /

   LANDITM   LAND USE ITEMS
              /USE         ,  RENTALRATE,
               AVAIL       ,  FROMPASTUR,
               TOPASTURE   ,  FROMCROP  ,
               TOCROP      ,  FROMFOREST,
               TOFOREST                  / ;


PARAMETER LANDSUM(REGIONS,LANDTYPE,LANDITM)  LAND USE SUMMARY
          AUMSSUM(REGIONS,AUMSIT)            AUMS USE SUMMARY
          HARVEST(CROP,HARVLAND)             NATIONAL HARVESTED ACREAGE REPORT
          HARVESTREG(CROP,REGIONS,HARVLAND)  REGIOANL HARVESTED ACREAGE REPORT
          PROCSUM(PROCESSALT,PROCITEM)       PROCESSING SUMMARY
          WATERSUM(REGIONS,WATRITEM)         WATER USE SUMMARY
          LABORSUM(REGIONS,LABRITEM)         LABOR USE SUMMARY
          WELSUM(WELITEM)                    SOCIAL WELFARE SUMMARY REPORT
          GOVDEF(ALLI,ITEMDEF)               GOVERNMENT DEFICIENCY PAYMENT SUMMARY
          GOVCCC(ALLI,ITEMCCC)               GOVERNMENT CCC LOAN COST SUMMARY
          PCONSUR(ALLI,ITEMCS)               DOMESTIC CONSUMER SURPLUS
          FWELFARE(ALLI,ITEMFOR)             FOREIGN WELFARE
          REGWELFAR(REGIONS,ALLI)            REGIONAL WELFARE ACCOUNTING
          BALANCEP(PRIMARY,BALITEM)          PRIMARY PRODUCT SUPPLY DEMAND BALANCE
          BALANCES(SECONDARY,BALITEM)        SECONDARY SUPPLY DEMAND BALANCE
          NATINPUSE(INPUT)                   NATIONAL INPUT USE SUMMARY
;
SETS AGPRODCT
      /ACRES   ,  PRODUCTION/

PARAMETER
          REGINPUSE(INPUT,REGIONS)
          NATINPUSE(INPUT)
          AGPRODUCT(REGIONS,ALLI,CTECH,AGPRODCT)
          ISCROPPROD(PRIMARY,CROP);


SET       GROSSITEM
            /PRODUCTION, PRICE    ,
             DEFPYMT   , TOTAL-REV /;

PARAMETERS
      LIVEREG(REGIONS,LIVESTOCK)   REGIONAL LIVESTOCK PRODUCTION REPORT
      CROPREG(REGIONS,CROP)        REGIONAL CROP PRODUCTION REPORT
      GROSSREV(ALLI,GROSSITEM)     GROSS REVENUE REPORT BY COMMODITY  ;


SET  ALLCOM(ALLI)  ;
ALLCOM(ALLI)= NO;
ALLCOM(PRIMARY)= YES;
ALLCOM(SECONDARY)= YES;
PARAMETER   SECONDWEL  ;
PARAMETER SHARELAB(REGIONS)  ;
PARAMETER  REGWEL(REGIONS, alli);
PARAMETER rLANDSUM(REGIONS,LANDTYPE,LANDITM);
PARAMETER rWATERSUM(REGIONS,WATRITEM);
PARAMETER rAUMSSUM(REGIONS,aumsit);
PARAMETER EROSIONd(REGIONS,*)            EROSION ;
PARAMETER
livemix(animal,mixtype)   whether the mix is a quantity or number constraint
PARAMETER rlaborsum(REGIONS)  regional labor usage;
PARAMETER
pricehlab(regions)
priceflab(regions)
quanthlab(regions)
quantflab(regions)
marghlab(REGIONS)
margflab(REGIONS)
levelfam(REGIONS)
levelhire(REGIONS)

set typesof /part,nonpart,092,5092,divert,unharvest,artificial/
    enter /animals,crops/
PARAMETER commodc(REGIONS,typesof,enter,alli);
PARAMETER mccredo,mccredo2,restprod,prevbal,fprevbal,srevbal;
PARAMETER rat,rat2;
PARAMETER grossrv(REGIONS,primary);

SCALAR NUMBERCBUD   THE TOTAL NUMBER OF CROP BUDGET DATA;
SCALAR NUMBERLBUD   THE TOTAL NUMBER OF LIVESTOCK BUDGET DATA;

NUMBERCBUD
  =SUM((SUBREG,CROP,WTECH,CTECH,TECH)
    $CCCBUDDATA("CROPLAND",SUBREG,CROP,WTECH,CTECH,TECH),1);

NUMBERLBUD
  =SUM((SUBREG,ANIMAL,LIVETECH)
    $LBUDDATA("LABOR",SUBREG,ANIMAL,LIVETECH),1);

DISPLAY NUMBERCBUD,NUMBERLBUD;
PARAMETER DOMCSP(PRIMARY)           CONSUMERS' SURPLUS FOR PRIMARY PRODUCT IN 1000 DOLLAR
          EXPORCSP(PRIMARY)         FOREIGN SURPLUS FOR EXPORT PRIMARY PRODUCT
          IMPORPSP(PRIMARY)         FOREIGN SURPLUS FOR IMPORT PRIMARY PRODUCT
          DOMCSS(SECONDARY)         CONSUMERS' SURPLUS FOR SECONDARY PRODUCT
          EXPORCSS(SECONDARY)       FOREIGN SURPLUS FOR EXPORT PRIMARY PRODUCT
          IMPORPSS(SECONDARY)       FOREIGN SURPLUS FOR IMPORT PRIMARY PRODUCT
          LANDPS(REGIONS,LANDTYPE)  PRODUCER'S SURPLUS BY REGIONS AND LANDTYPE
          AUMPS(REGIONS)            PRODUCER'S SURPLUS FOR AUMS BY REGION
          WATERPS(REGIONS)          PRODUCER'S SURPLUS FOR WATER BY REGION
          LABORPS(REGIONS)          PRODUCER'S SURPLUS FOR LABOR BY REGION
          ;
SCALAR PDCOST       PRODUCTION AND PROCESS COST
       FARPWEL      FARM PROGRAM REVENUE
       RESIDUAL     OTHER WLEFARE ITEMS;

SCALAR DECOBJN      DECOMPOSITION OBJECTIVE FUNCTION IN $1000
       DOMCS        TOTAL DOMESTIC CONSUMER'S SURPLUS IN $1000
       DOMPS        TOTAL DOMESTIC PRODUCER'S SURPLUS IN $1000
       UIMPORTPS    TOTAL FOREIGN IMPORT SURPLUS IN $1000
       UEXPORTCS    TOTAL FOREIGN EXPORT SURPLUS IN $1000
       USTOTWEL     U.S. TOTAL SOCIAL WELFARE IN $1000
       NEWOBJ       NEW OBJECTIVE FUNCTION VALUE TO CHECK WITH MODEL OBJ VALUE
       OLDCSPS      MODEL OBJECTIVE FUNCTION VALUE;
$ontext
#user model library stuff
Main topic ASM Model
Featured item 1 Code seperation
Featured item 2 Report writing
Featured item 3 ASM sector model
Description
Defines parameters that will be used in ASM model
$offtext
