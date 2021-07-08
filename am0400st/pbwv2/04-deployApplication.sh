#!/bin/bash
#
# IBM Cloud Pak for Applications - Proof of Technology
#
# Purpose: Deploy Liberty artifacts for plantsbywebsphere ee6 v2 

echo ==========================================================
echo  deploy the application 
echo ==========================================================
oc apply -f operator/application/application-cr.yaml


