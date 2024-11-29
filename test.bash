#!/bin/bash 

ng () {
	echo ${1}が違うよ
	res=1
}
res=0

###plus###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"



###fibonacci###
out=$( ./fibonacci 5 )
[ "$?" = 0 ] || ng "$LINENO"

out=$( ./fibonacci 530000 )
[ "$?" = 0 ] || ng "$LINENO"

out=$( ./fibonacci 0 )
[ "$?" = 0 ] || ng "$LINENO"

out=$( ./fibonacci -3 )
[ "$?" = 0 ] || ng "$LINENO"

out=$( ./fibonacci 5 akakakakak )
[ "$?" = 0 ] || ng "$LINENO"

out=$( ./fibonacci 5 | ./plus )
[ "$?" = 0 ] || ng "$LINENO"

out=$( ./fibonacci "" )
[ "$?" = 1 ] || ng "$LINENO"

out=$( ./fibonacci 3.5 )
[ "$?" = 1 ] || ng "$LINENO"

out=$( ./fibonacci a )
[ "$?" = 1 ] || ng "$LINENO"

out=$( ./fibonacci )
[ "$?" = 1 ] || ng "$LINENO"

out=$( ./fibonacci ? )
[ "$?" = 1 ] || ng "$LINENO"

out=$( ./fibonacci 3a )
[ "$?" = 1 ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK

exit "$res"
