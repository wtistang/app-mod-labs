#!/bin/bash
#
# IBM Cloud Pak for Applications - Proof of Technology
#
# Purpose: Build and Push Liberty Docker image for plantsbywebsphere ee6 v2 


IMAGENAME=plantsbywebsphereee6v2
PROJECT=lab6

echo ==========================================================
echo Build Liberty Docker image for $IMAGENAME
echo ==========================================================
echo

docker build -t $IMAGENAME .

echo ==========================================================
echo Tag Liberty Docker image for $IMAGENAME
echo ==========================================================
echo
docker tag $IMAGENAME:latest docker-registry.default.svc:5000/$PROJECT/$IMAGENAME:latest

docker login -u $(oc whoami) -p $(oc whoami -t) docker-registry.default.svc:5000

echo ==========================================================
echo Push Liberty Docker image for $IMAGENAME
echo ==========================================================
echo
docker push docker-registry.default.svc:5000/$PROJECT/$IMAGENAME:latest

