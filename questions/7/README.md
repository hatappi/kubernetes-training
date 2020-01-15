## 日本語
- namespace: `q7` を作成してください
- 下記の要件を満たす `Pod` を作成してください
	- 空のvolume `shared-volume` を用意する
	- podName: `enc-dec`
	- containerを2つ用意する
		- name: `enc`
			- `shared-volume` を `/k8s-training` にマウント
			- image: `hatappi/k8s-training:v1.0`
			- CMD: `enc-dec store_file_path`
			- env
				- STORE_FILE_PATH: `/k8s-training/message.log`
		- name: `dec`
			- `shared-volume` を `/k8s-training` にマウント
			- image: `hatappi/k8s-training:v1.0`
			- CMD: `enc-dec print-decode-message`
			- env
				- STORE_FILE_PATH: `/k8s-training/message.log`
- 実行後 `kubectl -n q7 logs -f enc-dec dec` で動作確認できます
- 正しく設定できているかどうかは `./scripts/check.sh q7` を実行することで確認できます

## English

