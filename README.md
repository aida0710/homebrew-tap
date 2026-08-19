# homebrew-tap

aida0710 の道具のための tap です。

## 入っているもの

| | 入れ方 |
|---|---|
| [sshc](https://github.com/aida0710/sshc) — OpenSSH の設定を持ち歩かずに扱う | `brew install aida0710/tap/sshc` |

**ソースからビルドします。** brew が Go を用意して `go build` を回すので、入るのは
あなたの機械で作られた実体です。置かれるのは brew の prefix なので、**PATH は
最初から通っています。**

## ここは写しです

`Formula/*.rb` の正本は、それぞれの project 側にあります（sshc なら
[`packaging/homebrew/sshc.rb`](https://github.com/aida0710/sshc/blob/main/packaging/homebrew/sshc.rb)）。
リリースのたびに、あちらの workflow が version と sha256 を差し替えてここへ押します。
**ここを手で直すと、次のリリースで上書きされます。**

直したいことがあれば、project 側の正本へどうぞ。
