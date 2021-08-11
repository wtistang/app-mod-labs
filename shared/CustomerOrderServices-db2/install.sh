#!/bin/bash
set -e

echo "$(date +'%T') *** Started cos-db2 setup on $1 ***"
cd $(dirname $0)
pwd

oc new-project db || oc project db
oc adm policy add-scc-to-user privileged -z db2
oc apply -f db2_deploy_was.yaml
oc apply -f db2_deploy_liberty.yaml

echo "$(date +'%T') *** Completed cos-db2 setup on $1 ***"