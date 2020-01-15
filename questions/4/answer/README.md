## 日本語 
- `kubectl get po -n q4` をしてエラーが出ていることを確認します。
- `kubectl describe po -n q4` で詳細を見ると docker image をtypoしていることがわかるので修正します。
	- また Describe を見ていくと Deployment からpodが作られていることがわかります。
- docker imageの変更方法はいくつかあります
	- patch command を使う 
```
kubectl patch -n q4 deployment http-server -p '{"spec": { "template": { "spec": {"containers": [{"name":"http-server", "image": "hatappi/k8s-training:v1.3"}]}}}}'
```
	- `kubectl edit -n q4 deployments http-server` で docker image を修正する

## English