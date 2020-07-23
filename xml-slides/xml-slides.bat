set SLIDEPATH=C:\inetpub\wwwroot\xml-slides\xml-slides
set SLIDECLASSPATH=%SLIDEPATH%\xalan\serializer.jar
set SLIDECLASSPATH=%SLIDECLASSPATH%;%SLIDEPATH%\xalan\xalan.jar
set SLIDECLASSPATH=%SLIDECLASSPATH%;%SLIDEPATH%\xalan\xercesImpl.jar
set SLIDECLASSPATH=%SLIDECLASSPATH%;%SLIDEPATH%\xalan\xml-apis.jar
set SLIDECLASSPATH=%SLIDECLASSPATH%;%SLIDEPATH%\xalan\xsltc.jar
set SLIDECLASSPATH=%SLIDECLASSPATH%;%SLIDEPATH%

java -classpath %SLIDECLASSPATH% xslt %1 %SLIDEPATH%\xml-slides.xsl index.html
