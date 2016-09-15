@echo off 
cd .. 
echo Crear una nueva Domain Class 
set /p NOMBRECLASE=Nombre de Clase de Dominio : 
set /p PAQUETE=Nombre de Paquete : 
%GRAILS_HOME%/bin/grails create-domain-class %PAQUETE%.%NOMBRECLASE% 
exit 
