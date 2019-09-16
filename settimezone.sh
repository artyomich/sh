#!/bin/bash
file="/etc/timezone"
while IFS= read -r line
do
 ln --force -s '/usr/share/zoneinfo/'"$line" /etc/localtime
printf '%s\n' "$line"
done <"$file"
