## 日本語
- namespace: `q1` を作成してください。
- namespace: `q1` に下記の要件を満たす `Pod` を作成してください。
	- Pod Name: `http-server`
	- docker image: `hatappi/k8s-training:v1.3`
	- port: `8888`
	- label: `app=http-server`
	- container name: `http-server`
	- CMD: `http-server`
		- ※ ENTRYPOINT は変更しないでください
- 正しく設定できているかどうかは `./scripts/check.sh q1` を実行することで確認できます

## English
TBD