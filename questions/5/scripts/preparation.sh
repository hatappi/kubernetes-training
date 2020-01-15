#!/bin/bash -e

kubectl create namespace q5

echo '{ "apiVersion": "apps/v1", "kind": "Deployment", "metadata": { "name": "http-server", "namespace": "q5", "labels": { "app": "http-server" } }, "spec": { "replicas": 1, "selector": { "matchLabels": { "app": "http-server" } }, "template": { "metadata": { "labels": { "app": "http-server" } }, "spec": { "containers": [ { "name": "http-server", "image": "hatappi/k8s-training:v1.3", "args": [ "http-server" ], "env": [{"name": "K8S_TRAINING_HTTP_SERVER_PORT", "value": "8888"}], "ports": [ { "containerPort": 8888 } ] } ] } } } }' | kubectl create -f -

echo '{ "apiVersion": "v1", "kind": "Service", "metadata": { "name": "http-server", "namespace": "q5" }, "spec": { "selector": { "app": "grpc-server" }, "ports": [ { "protocol": "TCP", "port": 8888, "targetPort": 8888 } ] } }' | kubectl create -f -
