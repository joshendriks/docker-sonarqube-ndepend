FROM			sonarqube:5.6.6

MAINTAINER 		Kevin & Jos

COPY			sonar-ndepend-plugin-1.0.jar $SONARQUBE_HOME/extensions/plugins