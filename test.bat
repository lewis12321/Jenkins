start cmd /c
cd C:\Users\lewis.jefferies\TestWork\Surf
@echo off
set JAVA_HOME=C:\Program Files\Java\jdk1.8.0_144\jre
java -version
mvn -Dtest=TestCircle test
pause