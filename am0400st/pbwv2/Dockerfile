

#If on slow network comment the line below

FROM docker.io/ibmcom/websphere-liberty:19.0.0.6-kernel-ubi-min

# If on slow network uncomment the line below, image has Liberty server and features
#FROM lab6:latest

COPY  src/main/liberty/config/server.xml /config/
COPY  target/plantsbywebsphereee6v2.ear /config/apps/
COPY  src/main/liberty/lib/DB2Libs/db2jcc4.jar /config/resources/DB2Libs/

USER root
RUN chown default:root -R /opt/ibm/wlp/usr/servers/
USER 1001

RUN configure.sh


