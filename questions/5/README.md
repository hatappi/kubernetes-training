## 日本語
- まず初めに `preparation/script.sh` を実行してください
- `kubectl port-forward -n q5 --address localhost svc/http-server 8888:8888` を実行した後に `curl localhost:8888` してもうまくつながらないようです。
- namespace: q5 で問題が起きているので原因を調べてなおしてください
- 正しく設定できているかどうかは `./scripts/check.sh q5` を実行することで確認できます

## English
