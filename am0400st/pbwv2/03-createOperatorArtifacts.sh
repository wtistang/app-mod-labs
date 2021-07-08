#!/bin/bash
#
# IBM Cloud Pak for Applications - Proof of Technology
#
# Purpose: Create Liberty Operator artifacts and deploy operator for plantsbywebsphere ee6 v2

# The CRDs for the Open Liberty Operator should already be created. 
# Uncomment the lines below to create the CRD's if lab 4 or lab5 is not completed 
 
#echo ==========================================================
#echo " Create the custom resource definition (CRD) " 
#echo ==========================================================
#oc apply -f operator/application/application-crd.yaml
#oc apply -f operator/application/traces-crd.yaml
#oc apply -f operator/application/dumps-crd.yaml


echo ==========================================================
echo "create Liberty operator ServiceAccount, Role, and RoleBinding "
echo ===========================================================

oc apply -f operator/deploy/service_account.yaml
oc apply -f operator/deploy/role.yaml
oc apply -f operator/deploy/role_binding.yaml

echo ==========================================================
echo "deploy Liberty operator pod "
echo ===========================================================

oc apply -f operator/deploy/operator.yaml


echo ===========================================
echo Run command \"oc get pods \"
echo wait until the plantsbywebsphere image service operator pod is ready 
echo before running next script
echo =======================================================


