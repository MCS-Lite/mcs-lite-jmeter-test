#!/bin/bash

# List the upstream build information
echo "This test is triggered by mcs-lite-app Build#${UPSTREAM_TRAVIS_BUILD_NUMBER} with Commit ID ${UPSTREAM_TRAVIS_COMMIT}"

# List the report URL
for report in ./report/*
do
	report=`basename $report`
	echo "Please visit report on ${REPORT_URL}$report"
done

# Check Jmeter test result
if grep 's="false"' ./*.jtl; then
	echo found erros
	exit 1
else
    echo no error found
    exit 0
fi
