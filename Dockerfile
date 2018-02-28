FROM sonarqube:5.6.7

MAINTAINER Kevin & Jos

COPY sonar-ndepend-plugin-*.jar $SONARQUBE_HOME/extensions/plugins
RUN cd $SONARQUBE_HOME/extensions/plugins && curl -o sonar-csharp-plugin-5.8.0.660.jar -fSL https://sonarsource.bintray.com/Distribution/sonar-csharp-plugin/sonar-csharp-plugin-5.8.0.660.jar
RUN cd $SONARQUBE_HOME/extensions/plugins && curl -o sonar-javascript-plugin-2.21.0.4409.jar -fSL https://sonarsource.bintray.com/Distribution/sonar-javascript-plugin/sonar-javascript-plugin-2.21.0.4409.jar
#RUN cd $SONARQUBE_HOME/extensions/plugins && curl -o cks-slack-notifier-2.1.2.jar -fSL https://github.com/kogitant/sonar-slack-notifier-plugin/releases/download/2.1.2/cks-slack-notifier-2.1.2.jar
