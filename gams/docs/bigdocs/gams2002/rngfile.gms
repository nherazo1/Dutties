* Include file with ranging information
* The set RNGLIM /LO,UP/ is assumed to be
* declared.

PARAMETER  OBJTRNG(RNGLIM) /
LO -INF
UP +INF
/;
PARAMETER  AVAILABLERNG(RESOURCE,RNGLIM) /
SMLLATHE.LO          95.62037037
SMLLATHE.UP          151.3333333
LRGLATHE.LO          83.92857143
LRGLATHE.UP          112.7045827
CARVER.LO          103.0926264
CARVER.UP +INF
LABOR.LO          97.93170732
LABOR.UP          175.4526316
/;
PARAMETER  PRODUCTIONRNG(PROCESS,RNGLIM) /
FUNCTNORM.LO         -3.925065963
FUNCTNORM.UP          27.84210526
FUNCTMXSML.LO -INF
FUNCTMXSML.UP          11.29905545
FUNCTMXLRG.LO -INF
FUNCTMXLRG.UP          4.079341865
FANCYNORM.LO         -4.971748151
FANCYNORM.UP          4.422993062
FANCYMXSML.LO -INF
FANCYMXSML.UP            8.3968312
FANCYMXLRG.LO         -4.291153846
FANCYMXLRG.UP          14.70565635
/;
PARAMETER  PROFITRNG(RNGLIM) /
LO      1.33226763e-015
UP +INF
/;
