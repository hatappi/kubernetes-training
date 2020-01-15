# kubernetes training
## 日本語
### 目的
これは kubernetes に慣れるために自分で手を動かすというところに重きをおいたトレーニングです。
問題の追加や間違ってるところがあればPRお願いします!!

### 準備
このトレーニングではクラスタを [kind](https://github.com/kubernetes-sigs/kind) を使っておこないます。  
(※自分でGKEやEKSでクラスタを用意しても大丈夫です)

kindはdocker上にk8sのクラスタを作成するので `docker` が動作する環境と `kind`, `kubectl` が必要になります。  
インストールされていない場合はそれぞれインストールしてください。  

- docker: https://docs.docker.com/install/
- kind: https://kind.sigs.k8s.io/#installation-and-usage
- kubectl: https://kubernetes.io/docs/tasks/tools/install-kubectl/

次に kind でトレーニング用のクラスタを作成します。    

```sh
# クラスタの作成
$ make create-cluster

#  クラスタの情報を確認する
$ kubectl cluster-info --context kind-training

# 現在のコンテキストを確認する
$ kubectl config current-context
kind-training

# もし別のコンテキストの場合は切り替えておきます
$ kubectl config use-context kind-training
Switched to context "kind-training".
```

次に動作確認をします。  

```
$ make setup

$ ./scripts/check.sh sample
✅ Host is https://xx.xxx.xxx.xxx:443
✅ namespaces found: check, default, kube-node-lease, kube-public, kube-system
```

### 問題に取り組む


## English
TBD
