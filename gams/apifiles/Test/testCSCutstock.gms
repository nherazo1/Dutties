$title Test GMSCutstock.cs

$if %system.filesys% == UNIX $abort Do not test C# on Unix


$if %system.buildcode% == VS8
$if not set flags $set flags /platform:x86
$if %system.buildcode% == WEI
$if not set flags $set flags /platform:x64

* Make sure that correct GAMS system is found when checking the registry
$call findthisgams -q

$call cd ..\CSharp\GMSCutstock && cp ..\..\..\GAMS.net4.dll . && csc.exe %flags% GMSCutstock.cs -r:GAMS.net4.dll
$if errorlevel 1 $abort 'Problem compiling GMSCutstock.cs'
$call cd ..\CSharp\GMSCutstock && GMSCutstock.exe ..\..\..
$if errorlevel 1 $abort 'Problem executing GMSCutstock'
