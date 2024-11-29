# robosys2024

このプロジェクトは千葉工業大学未来ロボティクス学科ロボットシステム学2024の授業内で行われたものを改造して製作

[![test](https://github.com/komugip1000/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/komugip1000/robosys2024/actions/workflows/test.yml)

## plus&fibonacci

- plusは数列の足し算をするプログラム
- fibonacciはフィボナッチ数列を生成するプログラム


## 使用方法

以下のコマンドでプロジェクトをローカル環境にクローンして、実行権限を付与
```
$ git clone https://github.com/komugip1000/robosys2024.git
$ cd robosys2024
$ chmod +x fibonacci
$ chmod +x plus
```

## fibonacci 概要

- フィボナッチ数列を生成するプログラム
- 数字を入力するとその数の項の数列を生成


## fibonacci 使い方

プログラムにechoを用い、好きな自然数を書いて実行する

注意　20577以上の数字を入れると計算結果が4300桁以上になるのでエラーが出る

```
$ echo 5 |./fibonacci
1 1 2 3 5
```

## plus 概要

- 縦に並んだ数列を足し算する

 
## plus 使い方

seqで出力できる数列を用い計算する


## plus 使用例
```
$ seq 5 | ./plus
15
```

## 応用例

この二つのプログラムをつないで実行すると、フィボナッチ数列の足し算ができる
```
$ echo 5 | ./fibonacci | tr ' ' '\n'| ./plus
12
```

## ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます
- このパッケージのコードの一部は，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
  - https://github.com/ryuichiueda/slides_marp/tree/master/robosys2024
- © 2024 Shota Kaneko
