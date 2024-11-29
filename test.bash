#!/bin/bash 
# SPDX-FileCopyRightText: 2024 Shota Kaneko
# SPDX-License-Identifier: BSD-3-Clause

ng () {
	echo ${1}が違うよ
	res=1
}
res=0

###plus###
out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng "$LINENO"



###fibonacci###
out=$( echo 5 | ./fibonacci )
[ "$?" = 0 ] || ng "$LINENO"

out=$( echo 530000 | ./fibonacci )
[ "$?" = 1 ] || ng "$LINENO"

out=$( echo 0 | ./fibonacci )
[ "$?" = 0 ] || ng "$LINENO"

out=$( echo -5 | ./fibonacci )
[ "$?" = 1 ] || ng "$LINENO"

out=$( echo "5 asd" | ./fibonacci )
[ "$?" = 1 ] || ng "$LINENO"

out=$( echo 5 | ./fibonacci | tr ' ' '\n' | ./plus )
[ "$?" = 0 ] || ng "$LINENO"

out=$( echo "" | ./fibonacci )
[ "$?" = 1 ] || ng "$LINENO"

out=$( echo 3.5 |./fibonacci )
[ "$?" = 1 ] || ng "$LINENO"

out=$( echo a | ./fibonacci )
[ "$?" = 1 ] || ng "$LINENO"

out=$( echo |./fibonacci )
[ "$?" = 1 ] || ng "$LINENO"

out=$( echo ? | ./fibonacci )
[ "$?" = 1 ] || ng "$LINENO"

out=$( echo 3a | ./fibonacci )
[ "$?" = 1 ] || ng "$LINENO"

[ "$res" = 0 ] && echo OK

exit "$res"
