#!/bin/bash
if grep 's="false"' ./report_*/*.jtl; then
	echo found erros
	exit 1
else
    echo no error found
    exit 0
fi
