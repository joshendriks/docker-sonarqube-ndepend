FROM			sonarqube:5.6.6

MAINTAINER 		Kevin & Jos

COPY			sonar-ndepend-plugin-1.0.jar $SONARQUBE_HOME/extensions/plugins
COPY			sonar-csharp-plugin-5.7.0.612 $SONARQUBE_HOME/extensions/plugins