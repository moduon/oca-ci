#!/bin/bash

set -e

# Run pytest on the tests directory,
# which is assumed to be mounted somewhere in the docker image.

here=$(dirname $0)
testvenv=/tmp/testvenv 

/usr/bin/python3 -m venv $testvenv
$testvenv/bin/pip install pytest
$testvenv/bin/pytest --color=yes --ignore $here/data $here "$@"
