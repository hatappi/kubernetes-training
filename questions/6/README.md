## 日本語
- namespace: `q6` を作成してください
- `config.json` を使って ConfigMap: `message-config` を作成してください
- 作成したconfigmapを使って下記を満たすjobを作成してください
	- jobName: `print-file-message`
	- image: `hatappi/k8s-training:v1.3`
	- CMD: `print-file-message`
	- ConfigMap: `message-config` を使って config.json を `/tmp/config.json` に配置する
	- env
		- JSON_FILE_PATH: /tmp/config.json
- 正しく設定できているかどうかは `./scripts/check.sh q6` を実行することで確認できます

## English

