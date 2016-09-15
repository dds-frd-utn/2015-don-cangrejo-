@echo off 
cd .. 
echo RECOMPILAR ARCHIVO 
call %GRAILS_HOME%/bin/grails clean 
call %GRAILS_HOME%/bin/grails compile 
echo. 
exit 
