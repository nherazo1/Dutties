$Title Instance LEE-MA 16X7 for the Generialized Quadratic Assignment Problem

Sets   i equipments  /i1*i16/
       j locations   /j1*j7 /;

Scalar unit /5/

Table  install(i,j)
            j1      j2      j3      j4      j5      j6      j7
i1       20000   23000   75000   60000   35000   50000   65000
i2       35000  131500   37000   19000   76000   46700  157500
i3       65000   39500   59500   29870   45600   42000  120500
i4       35000   37500   51500   30000   70000   59000   66000
i5       29500   85000   34500   44500   50000   74000  145000
i6       35000   57500   29500   65000  110000   53200   39500
i7      115000   35000   37500   55000   47000   28900   89000
i8      124500   59500   38500   12000   50000   55000   25700
i9      125000   34500   13500   78900   23100   43600   62000
i10      74500   39500  128500   35000   60000   69000   50000
i11      50500  150000   59000   39000   73000   63400  127000
i12      58000   25500   70000   34200   45000  147600   40900
i13      15000  135000   37500   45000  120000   39000   52500
i14      67500   39500   58500   92000  152000   49000   60000
i15      84500   28500   32500   65000  150000  139000   35000
i16     123900   88500   55000   60500   59500   82900   38600
;

Table  flow(i,i)
     i1  i2  i3  i4  i5  i6  i7  i8  i9 i10 i11 i12 i13 i14 i15 i16
i1           20              80          90     180  80     100
i2               50      40  58             100         100     100
i3   60          30      75     150  60          50      50      50
i4           60      50  60                  55          50  80
i5           70         100  50  58              65      50      50
i6           60  30          50 125      60  40      40
i7   50      80          30      25  30              40          40
i8          110      90      50      45  60      50     150 100
i9      150     110              75      70              50
i10          40      60 120  50     195         100              50
i11  60                          65  70          80
i12  70      60             250              65          50
i13     100  30     110         150      50                      80
i14         100             100  75      70          40     100
i15 100          80             100                     100
i16     100  50      50      40          50          80;

Table  dist(j,j)
    j1  j2  j3  j4  j5  j6  j7
j1     100 150 100  50  80  90
j2 100      80  60  50 100  70
j3 150  80      70 120  70 100
j4 100  60  70      60 100  80
j5  50  50 120  60      80 100
j6  80 100  70 100  80      70
j7  90  70 100  80 100  70;

Parameter  a(i) /
  i1   70, i2  145, i3  125, i4   65, i5  120, i6   85, i7   40, i8   75
  i9   60, i10  40, i11 105, i12  50, i13  60, i14  85, i15  50, i16 130 /;

Parameter  b(j) /j1 120, j2 270, j3 400, j4 180, j5 90, j6 115, j7 160 /;

Scalar bestobj The Optimal objective value  / 2809870.0 /;

Set xsol(i,j) best solution /
 i1 .j2, i2 .j3, i3 .j4, i4 .j2, i5 .j1, i6 .j7, i7 .j5, i8 .j7
 i9 .j3, i10.j4, i11.j6, i12.j5, i13.j3, i14.j2, i15.j2, i16.j3 /;
