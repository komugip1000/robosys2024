#!/bin/bash  -xv

ng () {
	echo ${1}が違うよ
	res=1
}
res=0

###正常石井###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"

###変な入力###
out=$(seq あ | ./plus)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

ut=$(seq  | ./plus)
[ "$?" = 0 ] || ng "$LINENO"
[ "${out}" = "" ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK
exit 0
