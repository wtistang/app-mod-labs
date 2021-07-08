PROJECT=lab6
APPLICATION=plantsbywebsphereee6v2
#APPLICATION=open-liberty

#kubectl patch crd/openliberties.openliberty.io -p '{"metadata":{"finalizers":[]}}' --type=merge
#oc delete crd/openliberties.openliberty.io
oc delete all --all 

oc delete crd/openlibertyapplications.openliberty.io
oc delete crd/openlibertytraces.openliberty.io
oc delete crd/openlibertydumps.openliberty.io


oc -n $PROJECT delete role $APPLICATION-operator
oc -n $PROJECT delete rolebinding $APPLICATION-operator
oc -n $PROJECT delete serviceaccount $APPLICATION-operator
oc -n $PROJECT delete secret db2-secret

