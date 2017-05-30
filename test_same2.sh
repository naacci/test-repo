#!/bin/sh

tmp=/tmp/$$

ERROR_EXIT () {
  echo "$1" >&2
  rm -f $tmp-*
  exit 1
}
########
# TEST2 #
########
echo "same2.sh requires 2 strings to input" > $tmp-ans
./same2.sh 2> $tmp-err && ERROR_EXIT "TEST2-1"
diff $tmp-ans $tmp-err || ERROR_EXIT "TEST2-2"

echo OK
rm -f $tmp-*
exit 0
