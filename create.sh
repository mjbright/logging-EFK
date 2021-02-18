#!/bin/bash

cd $(dirname $0)

for yaml in namespace.yaml \
            pvs_hostpath.yaml \
            elasticsearch_statefulset.yaml \
            fluentd_daemonset.yaml \
            kibana_deployment.yaml \
    ; do
    CMD="kubectl apply -f $yaml"
    echo "-- $CMD"
    $CMD
done

#kubectl apply -f namespace.yaml
#kubectl apply -f pvs_hostpath.yaml
#kubectl apply -f elasticsearch_statefulset.yaml
#kubectl apply -f fluentd_daemonset.yaml
#kubectl apply -f kibana_deployment.yaml


