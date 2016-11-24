#!/bin/bash 

set -ex

./pharo Pharo.image eval "
Metacello new 
	baseline: 'AtomicRefactors';
	repository: 'filetree://.';
	load.

Smalltalk saveAs:'atomicRefactors'.
"

