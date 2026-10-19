# homebrew-tap

aida0710 の道具のための tap です。

## 入っているもの

| | 入れ方 |
|---|---|
| [sshc](https://github.com/aida0710/sshc) — OpenSSH の設定を持ち歩かずに扱う | `brew install aida0710/tap/sshc` |
| [azooKey Tree](https://github.com/aida0710/azooKey-Desktop) — 木構造の変換候補を備えた日本語入力方式 | `brew install --cask aida0710/tap/azookey-tree` |

**sshcのCLIはソースからビルドします。** brew が Go を用意して `go build` を回すので、入るのは
あなたの機械で作られた実体です。置かれるのは brew の prefix なので、**PATH は
最初から通っています。**

azooKey TreeはApple Silicon・macOS 14以降向けの試験版です。Releaseの検証済みzipを導入します。ad-hoc署名・未公証で、公式azooKeyとは同時に導入できません。ATOKは削除しません。導入後はシステム設定のキーボードから入力ソースを追加してください。

## ここは写しです

`Formula/*.rb` の正本は、それぞれの project 側にあります（sshc なら
[`packaging/homebrew/sshc.rb`](https://github.com/aida0710/sshc/blob/main/packaging/homebrew/sshc.rb)）。
リリースのたびに、あちらの workflow が version と sha256 を差し替えてここへ押します。
**ここを手で直すと、次のリリースで上書きされます。**

直したいことがあれば、project 側の正本へどうぞ。

azooKey Treeのcaskは[プロジェクト側のテンプレート](https://github.com/aida0710/azooKey-Desktop/blob/main/packaging/homebrew/azookey-tree.rb.in)から実際のReleaseアーカイブのSHA-256を使って生成します。
