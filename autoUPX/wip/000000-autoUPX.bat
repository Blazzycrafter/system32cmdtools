@echo off


@echo off
Set a=%1 & Set b=%2 & Set c=%3 & Set d=%4 & Set e=%5 & Set f=%6 & Set g=%7 & Set h=%8 & Set i=%9
Shift & Shift & Shift & Shift & Shift & Shift & Shift & Shift & Shift
Set j=%1 & Set k=%2 & Set l=%3 & Set m=%4 & Set n=%5 & Set o=%6 & Set p=%7 & Set q=%8 & Set r=%9
Shift & Shift & Shift & Shift & Shift & Shift & Shift & Shift & Shift
Set s=%1 & Set t=%2 & Set u=%3 & Set v=%4 & Set w=%5 & Set x=%6 & Set y=%7 & Set z=%8
echo.
echo.
echo.

upx -9 %a% %b% %c% %d% %e% %f% %g% %h% %i% %j% %k% %l% %m% %n% %o% %p%%q% %r% %s% %t% %u% %v% %w% %x% %y% %z%

:END
pause
exit