FROM tomcat
MAINTAINER vimalre777@gmail.com
#RUN apt-get update  -y
ADD https://mirrors.jenkins.io/war-stable/latest/jenkins.war /
#RUN apt-get install maven -y
ENTRYPOINT ["java","-jar","jenkins.war"]
COPY /root/ /usr/local/tomcat/webapps/
