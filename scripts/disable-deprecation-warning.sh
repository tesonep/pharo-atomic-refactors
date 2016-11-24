#!/bin/bash 

set -ex

./pharo atomicRefactors.image eval --save "
Deprecation showWarning: false.
Deprecation raiseWarning: false.
"

