#!/bin/bash

# Copyright 2018, Ian Diaz
#
# This file is part of utilities which is released under GNU GPL License.
# See file LICENSE or for full license details.










# test1 should fail, bisector should exit with error code 1
../bisector/bisector.sh ./sample_test.py:SampleTest.test_test1

# test2 should pass, bisector should exit with error code 0
../bisector/bisector.sh ./sample_test.py:SampleTest.test_test2

