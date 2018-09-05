#!/bin/bash

# Copyright 2018, Ian Diaz
#
# This file is part of utilities which is released under GNU GPL License.
# See file LICENSE or for full license details.

# For projects using nosetests, you can use this script as input to `git bisect
# run`, like so:
#    git bisect start HEAD v1.0
#    git bisect run bisector.sh <test case>
#
# where <test case> is in the following form:
#    <file.py>:<test_case_class>.<test_case_method>
#
# e.g.:
#    sample_test.py:SampleTest.test_test1
#
# Further reading can be found here:
#    https://git-scm.com/book/en/v2/Git-Tools-Debugging-with-Git
#    https://www.sitepoint.com/debugging-git-blame-bisect/
#    https://www.metaltoad.com/blog/mechanizing-git-bisect-bug-hunting-lazy

$(nosetests $1) || echo exiting with code 1... ; exit 1
echo exiting with code 0...
exit 0

