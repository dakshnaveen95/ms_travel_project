FROM openjdk:8-alpine
ARG VCS_REF
ARG BUILD_DATE
ARG VCS_URL
LABEL vcs-ref=$VCS_REF 
LABEL vcs-url=$VCS_URL
LABEL build-date=$BUILD_DATE
EXPOSE 8080
COPY target /target/
ENTRYPOINT ["java","-jar","target/ms-travel-website-1.0.0.jar","--spring.config.location=/application.properties"]
