# logging-EFK

Kubernetes manifests to setup an EFK stack

This repo is derived from the manifests referred to in this article:
- https://medium.com/avmconsulting-blog/how-to-deploy-an-efk-stack-to-kubernetes-ebc1b539d063
- original manifests in this gist: https://gist.github.com/satishgadhave/067d669cd79534600a57a7c14df261dc

The manifests have been just slightly modified, tested on 1 master + 3 worker cluster setup using vagrant/ansible

The manifests:
- fluentd_daemonset.yaml: Defines for the Fluentd logging agent
  - a ServiceAccount, ClusterRole, ClusterRoleBinding
  - a DaemonSet
- elasticsearch_statefulset.yaml: Defines for the ElasticSearch engine:
  - a headless ClusterIP service
  - a StatefulSet controller
- kibana_deployment.yaml: Defines for the Kibana dashboard to ElasticSearch
  - a NodePort Service
  - a Deployment
- pvs_hostpath.yaml: Defines 3 Persistent Volumes to be used by ElasticSearch

