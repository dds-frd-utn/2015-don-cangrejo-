@echo off 
cd .. 
echo Crear un nuevo Controlador 
set /p CONTROLADOR=Nombre de Controlador: 
set /p PAQUETE=Nombre de Paquete : 
%GRAILS_HOME%/bin/grails create-controller %PAQUETE%.%CONTROLADOR% 
exit 
