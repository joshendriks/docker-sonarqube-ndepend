FROM sonarqube:6.7.1

MAINTAINER Kevin & Jos

COPY sonar-ndepend-plugin-*.jar $SONARQUBE_HOME/extensions/plugins
RUN cd $SONARQUBE_HOME/extensions/plugins && curl -o sonar-csharp-plugin-6.8.2.4717.jar -fSL https://sonarsource.bintray.com/Distribution/sonar-csharp-plugin/sonar-csharp-plugin-6.8.2.4717.jar
RUN cd $SONARQUBE_HOME/extensions/plugins && curl -o sonar-javascript-plugin-4.1.0.6085.jar -fSL https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-4.1.0.6085.jar
RUN cd $SONARQUBE_HOME/extensions/plugins && curl -o cks-slack-notifier-2.1.2.jar -fSL https://github.com/kogitant/sonar-slack-notifier-plugin/releases/download/2.1.2/cks-slack-notifier-2.1.2.jar
