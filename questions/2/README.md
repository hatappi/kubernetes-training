## 日本語
- namespace: `q2` を作成してください。
- namespace: `q2` に下記の要件を満たす `Service` を作成してください。
	- Deployment: `http-server`  
		- label: `app=http-server`
		- replicas: 2
		- container
			- docker image: `hatappi/k8s-training:v1.0`
			- name: `http-server`
			- port: `8888`
			- CMD: `http-server`
				- ※ ENTRYPOINT は変更しないでください
	- Service: `http-server`
		- selector, port は Deployment: `http-server` につながるように設定してください
		- ただし作成されるサービスは8888でアクセスできるようにしてください
- 正しく設定できているかどうかは `./scripts/check.sh q2` を実行することで確認できます

## English
TBD