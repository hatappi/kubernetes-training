## 日本語
- namespace: `q3` を作成してください
- namespace: `q3` に下記の要件を満たす `Job` を作成してください
	- jobName: `print-repeat-message`
	- docker image: `hatappi/k8s-training:v1.3`
	- CMD: `print-repeat-message`
		- ※ ENTRYPOINT は変更しないでください
	- env
		- REPEAT_NUM: 10
- 正しく設定できているかどうかは `./scripts/check.sh q3` を実行することで確認できます

## English
