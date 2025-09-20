#!/usr/bin/env bash

# Вывести время в формате:
#   15 час/а/ов 23 минут/ы
export T=$(mktemp -p .)
cat > $T
export T1=$(cat $T)
date '+%H час/а/ов %M минут/ы' -d "$T1"
rm $T
