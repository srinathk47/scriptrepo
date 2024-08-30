#!/bin/bash

# Check if the file exists
if [ ! -f file.txt ]; then
  echo "File file.txt not found!"
  exit 1
fi

# Read the file and transpose its content
awk '
{
  for (i = 1; i <= NF; i++) {
    a[NR, i] = $i
  }
}
NF > p { p = NF }
END {
  for (i = 1; i <= p; i++) {
    for (j = 1; j <= NR; j++) {
      printf "%s%s", a[j, i], (j == NR ? "" : " ")
    }
    print ""
  }
}' file.txt
