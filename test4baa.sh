#!/bin/bash

. test.common

timeofflimit=1.0
freqofflimit=1000e-6
timeoff=10
auth=symmSHA1

test_ntpclient 20000 "loose sync, symmetric key, SHA1"

check_sync 2 100 10000 || test_fail

test_success
