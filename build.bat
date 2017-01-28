set JAVA_HOME=c:\Program Files\Java\jdk1.8.0_121
call mvn clean install
del c:\workspace\xampp\tomcat\webapps\javaWeekend /q
copy target\javaWeekend.war c:\workspace\xampp\tomcat\webapps\
cd c:\workspace\xampp\tomcat\bin\
del c:\workspace\xampp\tomcat\logs\* /q
call shutdown.bat
timeout 3
call catalina.bat jpda start