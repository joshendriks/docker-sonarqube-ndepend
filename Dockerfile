FROM sonarqube:5.6.6

MAINTAINER Kevin & Jos

COPY sonar-ndepend-plugin-*.jar $SONARQUBE_HOME/extensions/plugins
RUN cd $SONARQUBE_HOME/extensions/plugins && curl -o sonar-csharp-plugin-5.7.0.612.jar -fSL https://sonarsource.bintray.com/Distribution/sonar-csharp-plugin/sonar-csharp-plugin-5.7.0.612.jar