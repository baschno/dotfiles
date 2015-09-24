#!/bin/bash

echo "Hello"
echo "$1"


case "$1" in
	on)
		echo "set on";;
	off)
		echo "set off";;

	*)  echo "other...";;
esac
