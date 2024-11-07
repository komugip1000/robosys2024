#!/bin/bash  

ng () {
	echo ${1}が違うよ
	res=1
}
res=0

###正常石井###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"


[ "$res" = 0 ] && echo OK
exit $res
