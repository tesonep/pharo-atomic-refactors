#!/bin/bash 

set -ex

./pharo Pharo.image eval --save "
((MCSmalltalkhubRepository
owner: 'Pharo'
project: 'Pharo60Inbox') versionFrom: 'SLICE-Issue-19547-Extracting-the-creation-of-refactoring-changes-to-a-factory-PabloTesone.1') load.
"

./pharo Pharo.image eval "
Gofer new
url: 'http://smalltalkhub.com/mc/GustavoSantos/Refactoring2/main';
package: 'ConfigurationOfRefactoring2';
load.

(Smalltalk at: #ConfigurationOfRefactoring2) loadDevelopment.

Smalltalk saveAs:'refactoring2'.
"

./pharo Pharo.image eval "
Metacello new 
	baseline: 'AtomicRefactors';
	repository: 'filetree://.';
	load.

Smalltalk saveAs:'atomicRefactors'.
"

