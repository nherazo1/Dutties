$ontext

Final comparative report writing displays for ASM model

$offtext

SET COMITEM /VALUE, PRICE, PRODUCTION, PERCENTAGE /;
PARAMETER WELCOMP(SURITEM,COMITEM,FPRUN)  WELFARE COMPARISON in MILLION DOLLAR
          PRICEPER(PRIMARY,COMITEM,FPRUN)         PRICE COMPARISON
          PRODNPER(PRIMARY,COMITEM,FPRUN)         PRODUCTION COMPARISON in 1000 bushes;

WELCOMP(SURITEM,"VALUE",FPRUN)
  =SURCOMP(SURITEM,FPRUN)/1000 ;

WELCOMP(SURITEM,"PERCENTAGE",FPRUN)
  $SURCOMP(SURITEM,"BASE")
  =(SURCOMP(SURITEM,FPRUN)
  -SURCOMP(SURITEM,"BASE"))
  /SURCOMP(SURITEM,"BASE")*100;

PRICEPER(PRIMARY,"PRICE",FPRUN)
  =PRICECOMP(PRIMARY,FPRUN)/100;

PRICEPER(PRIMARY,"PERCENTAGE",FPRUN)
  $PRICECOMP(PRIMARY,"BASE")
  =(PRICECOMP(PRIMARY,FPRUN)
  -PRICECOMP(PRIMARY,"BASE"))
  /PRICECOMP(PRIMARY,"BASE")*100;


PRODNPER(PRIMARY,"PRODUCTION",FPRUN)
  =PRODNCOMP(PRIMARY,FPRUN);

PRODNPER(PRIMARY,"PERCENTAGE",FPRUN)
  $PRODNCOMP(PRIMARY,"BASE")
  =(PRODNCOMP(PRIMARY,FPRUN)
  -PRODNCOMP(PRIMARY,"BASE"))
  /PRODNCOMP(PRIMARY,"BASE")*100;

OPTION WELCOMP:2:2:1;DISPLAY WELCOMP;
OPTION PRICEPER:2:2:1;DISPLAY PRICEPER;
OPTION PRODNPER:2:2:1;DISPLAY PRODNPER;
$ontext
#user model library stuff
Main topic ASM Model
Featured item 1 Report writing
Featured item 2 Comparative report
Featured item 3 ASM sector model
Description
Final comparative report writing displays for ASM model

$offtext
