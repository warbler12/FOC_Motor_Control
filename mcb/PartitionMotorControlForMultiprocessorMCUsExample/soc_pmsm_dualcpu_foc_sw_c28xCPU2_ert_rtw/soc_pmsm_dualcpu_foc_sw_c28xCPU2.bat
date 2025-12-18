
cd .

if "%1"=="" ("D:\Software\MATLAB\bin\win64\gmake"  DEPRULES=1 -j9  -f soc_pmsm_dualcpu_foc_sw_c28xCPU2.mk all) else ("D:\Software\MATLAB\bin\win64\gmake"  DEPRULES=1 -j9  -f soc_pmsm_dualcpu_foc_sw_c28xCPU2.mk %1)
@if errorlevel 1 goto error_exit

exit /B 0

:error_exit
echo The make command returned an error of %errorlevel%
exit /B 1