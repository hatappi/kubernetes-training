## 日本語
- `kubectl get po -n q5` をして正常にpodが起動していることを確認します。
- `describe pod` していくと Deployment があることがわかるので `kubectl get deployment -n q5` を見ます。
	- Deployment は疎通することを確認するために `kubectl port-forward -n q5 --address localhost deployment/http-server 8888:8888` して `curl localhost:8888` をしてみます。
- Deployment までは疎通するはずなので Service に問題があることがわかります。
- `kubectl -n q5 describe svc http-server` して Service の詳細を見てみると Endpoints が None になっています。これはどのpodにも紐付いてないので、selectorが間違ってそうです。
	- selector を見ると `app=grpc-server` となっているので、これが間違ってそうです。
- 修正する時は `kubectl patch` や `kubectl edit` でできます。
	- `kubectl -n q5 patch service http-server -p '{"spec":{"selector":{"app":"http-server"}}}`
	- `kubectl -n q5 edit service http-server` 

## English