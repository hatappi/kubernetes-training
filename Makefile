.PHONY: create-cluster
create-cluster:
	kind create cluster \
	  --name training \
	  --config ./config/cluster.yaml \
	  -v 5

.PHONY: delete-cluster
delete-cluster:
	kind delete cluster --name training

.PHONY: recreate-cluster
recreate-cluster: delete-cluster create-cluster

.PHONY: setup
setup:
	kubectl apply -f setup/setup.yaml

