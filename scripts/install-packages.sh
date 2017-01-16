#!/bin/bash 

set -ex

./pharo Pharo.image eval "
((MCSmalltalkhubRepository
owner: 'Pharo'
project: 'Pharo60Inbox') versionFrom: 'SLICE-Issue-19547-Extracting-the-creation-of-refactoring-changes-to-a-factory-PabloTesone.1') load.

Metacello new 
	baseline: 'AtomicRefactors';
	repository: 'filetree://.';
	load.

Smalltalk saveAs:'atomicRefactors'.
"

