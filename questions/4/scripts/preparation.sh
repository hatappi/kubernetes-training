jk#!/bin/bash -e

kubectl create namespace q4

echo '{ "apiVersion": "apps/v1", "kind": "Deployment", "metadata": { "name": "http-server", "namespace": "q4", "labels": { "app": "http-server" } }, "spec": { "replicas": 1, "selector": { "matchLabels": { "app": "http-server" } }, "template": { "metadata": { "labels": { "app": "http-server" } }, "spec": { "containers": [ { "name": "http-server", "image": "hatapi/k8s-training:v1.3", "args": [ "http-server" ], "ports": [ { "containerPort": 8888 } ] } ] } } } }' | kubectl create -f -

