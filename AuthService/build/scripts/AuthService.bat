@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  AuthService startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and AUTH_SERVİCE_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH. 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME% 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\AuthService-v0.0.1-plain.jar;%APP_HOME%\lib\spring-boot-starter-web-3.2.5.jar;%APP_HOME%\lib\springdoc-openapi-starter-webmvc-ui-2.5.0.jar;%APP_HOME%\lib\mapstruct-1.5.5.Final.jar;%APP_HOME%\lib\java-jwt-4.4.0.jar;%APP_HOME%\lib\spring-boot-starter-data-mongodb-3.2.5.jar;%APP_HOME%\lib\hibernate-validator-8.0.1.Final.jar;%APP_HOME%\lib\spring-cloud-config-client-4.1.1.jar;%APP_HOME%\lib\spring-boot-starter-amqp-3.2.5.jar;%APP_HOME%\lib\spring-boot-starter-security-3.2.5.jar;%APP_HOME%\lib\spring-boot-starter-json-3.2.5.jar;%APP_HOME%\lib\spring-boot-starter-3.2.5.jar;%APP_HOME%\lib\spring-boot-starter-tomcat-3.2.5.jar;%APP_HOME%\lib\springdoc-openapi-starter-webmvc-api-2.5.0.jar;%APP_HOME%\lib\spring-webmvc-6.1.6.jar;%APP_HOME%\lib\spring-security-web-6.2.4.jar;%APP_HOME%\lib\spring-web-6.1.6.jar;%APP_HOME%\lib\swagger-ui-5.13.0.jar;%APP_HOME%\lib\springdoc-openapi-starter-common-2.5.0.jar;%APP_HOME%\lib\swagger-core-jakarta-2.2.21.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.15.4.jar;%APP_HOME%\lib\swagger-models-jakarta-2.2.21.jar;%APP_HOME%\lib\jackson-annotations-2.15.4.jar;%APP_HOME%\lib\jackson-module-parameter-names-2.15.4.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.15.4.jar;%APP_HOME%\lib\jackson-core-2.15.4.jar;%APP_HOME%\lib\jackson-datatype-jdk8-2.15.4.jar;%APP_HOME%\lib\jackson-databind-2.15.4.jar;%APP_HOME%\lib\mongodb-driver-sync-4.11.2.jar;%APP_HOME%\lib\spring-data-mongodb-4.2.5.jar;%APP_HOME%\lib\jakarta.validation-api-3.0.2.jar;%APP_HOME%\lib\jboss-logging-3.5.3.Final.jar;%APP_HOME%\lib\classmate-1.6.0.jar;%APP_HOME%\lib\spring-boot-autoconfigure-3.2.5.jar;%APP_HOME%\lib\spring-cloud-commons-4.1.2.jar;%APP_HOME%\lib\spring-cloud-context-4.1.2.jar;%APP_HOME%\lib\httpclient5-5.2.3.jar;%APP_HOME%\lib\spring-rabbit-3.1.4.jar;%APP_HOME%\lib\spring-messaging-6.1.6.jar;%APP_HOME%\lib\spring-security-config-6.2.4.jar;%APP_HOME%\lib\spring-boot-3.2.5.jar;%APP_HOME%\lib\spring-security-core-6.2.4.jar;%APP_HOME%\lib\spring-context-6.1.6.jar;%APP_HOME%\lib\spring-aop-6.1.6.jar;%APP_HOME%\lib\spring-boot-starter-logging-3.2.5.jar;%APP_HOME%\lib\jakarta.annotation-api-2.1.1.jar;%APP_HOME%\lib\spring-tx-6.1.6.jar;%APP_HOME%\lib\spring-data-commons-3.2.5.jar;%APP_HOME%\lib\spring-beans-6.1.6.jar;%APP_HOME%\lib\spring-expression-6.1.6.jar;%APP_HOME%\lib\spring-amqp-3.1.4.jar;%APP_HOME%\lib\spring-core-6.1.6.jar;%APP_HOME%\lib\snakeyaml-2.2.jar;%APP_HOME%\lib\tomcat-embed-websocket-10.1.20.jar;%APP_HOME%\lib\tomcat-embed-core-10.1.20.jar;%APP_HOME%\lib\tomcat-embed-el-10.1.20.jar;%APP_HOME%\lib\micrometer-observation-1.12.5.jar;%APP_HOME%\lib\mongodb-driver-core-4.11.2.jar;%APP_HOME%\lib\bson-record-codec-4.11.2.jar;%APP_HOME%\lib\bson-4.11.2.jar;%APP_HOME%\lib\amqp-client-5.19.0.jar;%APP_HOME%\lib\logback-classic-1.4.14.jar;%APP_HOME%\lib\log4j-to-slf4j-2.21.1.jar;%APP_HOME%\lib\jul-to-slf4j-2.0.13.jar;%APP_HOME%\lib\slf4j-api-2.0.13.jar;%APP_HOME%\lib\spring-security-crypto-6.2.4.jar;%APP_HOME%\lib\httpcore5-h2-5.2.4.jar;%APP_HOME%\lib\httpcore5-5.2.4.jar;%APP_HOME%\lib\spring-jcl-6.1.6.jar;%APP_HOME%\lib\micrometer-commons-1.12.5.jar;%APP_HOME%\lib\spring-retry-2.0.5.jar;%APP_HOME%\lib\logback-core-1.4.14.jar;%APP_HOME%\lib\log4j-api-2.21.1.jar;%APP_HOME%\lib\commons-lang3-3.13.0.jar;%APP_HOME%\lib\swagger-annotations-jakarta-2.2.21.jar;%APP_HOME%\lib\jakarta.xml.bind-api-4.0.2.jar;%APP_HOME%\lib\jakarta.activation-api-2.1.3.jar


@rem Execute AuthService
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %AUTH_SERVİCE_OPTS%  -classpath "%CLASSPATH%"  %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable AUTH_SERVİCE_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%AUTH_SERVİCE_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
