# homebrew-sshc

[sshc](https://github.com/aida0710/sshc) の tap です。

```sh
brew install aida0710/sshc/sshc
```

**ソースからビルドします。** brew が Go を用意して `go build` を回すので、入るのは
あなたの機械で作られた実体です。置かれるのは brew の prefix なので、**PATH は
最初から通っています。**

## ここは写しです

`Formula/sshc.rb` の正本は
[sshc 側の `packaging/homebrew/sshc.rb`](https://github.com/aida0710/sshc/blob/main/packaging/homebrew/sshc.rb)
にあります。リリースのたびに、あちらの workflow が version と sha256 を差し替えて
ここへ押します。**ここを手で直すと、次のリリースで上書きされます。**

直したいことがあれば、sshc 側の正本へどうぞ。
