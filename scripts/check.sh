TARGET=$1

if [ -z "${TARGET}" ]; then
  echo "please specify sub command e.g sample, q1, q2"
  exit 1
fi

CHECKER=$(kubectl get po \
  -n check \
  -o json \
  | jq -r '.items[] | select(.metadata.name == "checker") | .metadata.name')

if [ -n "${CHECKER}" ]; then
  kubectl delete po \
    -n check \
    checker
fi

kubectl run \
  checker \
  -n check \
  --serviceaccount=training-checker \
  --image=hatappi/k8s-training:v1.3 \
  --restart=Never \
  --quiet \
  --rm \
  -i \
  -- check --in-cluster ${TARGET}
