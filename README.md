# robosys2024

このプロジェクトは千葉工業大学未来ロボティクス学科ロボットシステム学2024の授業内で行われたものを改造して製作しています

[![test](https://github.com/komugip1000/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/komugip1000/robosys2024/actions/workflows/test.yml)

## テスト環境



## plus&fibonacci

- plusは数列の足し算をするプログラムです。
- fibonacciはフィボナッチ数列を生成するプログラムです。


## インストール方法

以下の手順でプロジェクトをローカル環境にインストールしてください。
```shell
$ git clone https://github.com/komugip1000/robosys2024.git
```

## fibonacci 概要

- フィボナッチ数列を生成するプログラム
- 数字を入力するとその数の項の数列を生成


## fibonacci 使い方

プログラムの後ろに好きな自然数を書いて実行する

注意　20577以上の数字を入れると計算結果が4300桁以上になるのでエラーが出る

```
$ ./fibonacci 5
1
1
2
3
5
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

この二つのプログラムをパイプを用いて両方実行すれば、フィボナッチ数列の足し算ができる
```
$ ./fibonacci 5 | ./plus
12
```

# ライセンス
- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます
- © 2024 Shota Kaneko
