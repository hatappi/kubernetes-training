## 日本語
- まず `preparation/script.sh` を実行してください
- `kubectl port-forward -n q4 --address localhost deployment/http-server 8888:8888` を実行して `curl localhost:8888` してもうまくつながらないようです。
- namespace: q4 で問題が起きているので原因を調べてなおしてください
	- docker image は `hatappi/k8s-training` を使用しています
- 正しく設定できているかどうかは `./scripts/check.sh q4` を実行することで確認できます

## English

