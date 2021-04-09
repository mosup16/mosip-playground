#!/bin/sh
# Copy configmaps from other namespaces
kubectl -n keycloak get cm keycloak-host -o yaml | sed 's/namespace: keycloak/namespace: config-server/g' | kubectl -n config-server create -f -  

