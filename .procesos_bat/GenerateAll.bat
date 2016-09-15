@echo off 
cd .. 
echo. 
echo. 
echo. 
echo GENERATE ALL VIEWS AND CONTROLERS. 
echo. 
set /p DES=Crear todas las vistas y controladores? ( y/n ): 
goto %DES% 
:y 
call %GRAILS_HOME%/bin/grails clean 
call %GRAILS_HOME%/bin/grails compile 
call %GRAILS_HOME%/bin/grails generate-all * 
echo. 
echo Creacion de clases y controladores finalizada 
pause 
exit 
:n 
echo. 
exit 
