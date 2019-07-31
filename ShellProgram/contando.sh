#!/usr/bin/env bash

function contando(){
	local i=0;
	while test $i -le 100; do
		echo "$i contando...";
		let i++;
	done
}

contando
