## Deploy the DB2 image to OpenShift

1. Issue the following commands to create a namespace, service account, deploymentconfig and service:

    ```
    oc new-project cos-db2
    oc create serviceaccount mysvcacct -n cos-db2
    oc adm policy add-scc-to-user privileged system:serviceaccount:db2:mysvcacct
    oc apply -f db2-dc.yaml
    oc apply -f db2-service.yaml
    ```

    The DB2 database will take a few minutes to start and will then be accessible in the Cluster at cos-db2.db2.svc:50000
    
    If you want to expose the database outside of the cluster, use the db2-nodeport.yaml file
