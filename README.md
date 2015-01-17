# kana01_template

このスクリプトは神奈川Ruby会議01のペアプロ課題「遠い世界の公式」を解くのをちょっとだけ楽にする為のテンプレートです。

## 「遠い世界の公式」

* 問題 http://nabetani.sakura.ne.jp/kanagawa.rb/evalex/
* 出題者による実装例 http://nabetani.sakura.ne.jp/kanagawa.rb/evalex/ans.html

## 使い方

スクリプトの中の ```FantasticFormula.evaluate``` メソッドのの中に、あなたのコードを書いてください。
その後、下記のコマンドを実行すると、数式が正しく実装されているか確認してくれます。

```console
$ ruby fantastic_formula.rb
[0] 4*5+6&7|8 = 44 -> OK
[1] 30*15+5 = 600 -> NG!!!! (got: 455)
...
```
