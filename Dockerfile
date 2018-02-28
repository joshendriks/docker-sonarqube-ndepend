FROM sonarqube:5.6.6

MAINTAINER Kevin & Jos

COPY sonar-ndepend-plugin-*.jar $SONARQUBE_HOME/extensions/plugins
RUN cd $SONARQUBE_HOME/extensions/plugins && curl -o sonar-csharp-plugin-6.8.1.4648.jar -fSL https://sonarsource.bintray.com/Distribution/sonar-csharp-plugin/sonar-csharp-plugin-6.8.1.4648.jar
RUN cd $SONARQUBE_HOME/extensions/plugins && curl -o sonar-javascript-plugin-2.21.0.4409.jar -fSL https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-2.21.0.4409.jar
