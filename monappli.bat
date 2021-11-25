@echo on

SET mypath=%~dp0
SET tomcatpath=C:\Program Files\Apache Software Foundation\Tomcat 9.0

call mvn scm:checkout -DconnectionUrl=scm:git:git@github.com:thillica/monappli.git -DcheckoutDirectory=Livraison

cd %mypath%\Livraison\

call mvn clean package

SET src=C:\Users\orsys\Documents\carine-tp\jour2-mvn\depotGit\monappli\Livraison\monappli-web\target\monappli-web.war
SET dest="C:\Program Files\Apache Software Foundation\Tomcat 9.0\webapps"

copy %src% %dest%

cd %tomcatpath%\bin

call startup.bat

start chrome http://localhost:8080/monappli-web/
pause


