testing
testTransform

	| model transformation oldClass newClass |
	model := RBNamespace2 new.
	model defineClass: 'Object subclass: #FOOBAR 
				instanceVariableNames: ''asdf'' 	
				classVariableNames: ''''
				poolDictionaries: ''''
				category: #''Refactory-Test data'''.
				
	transformation := RBMoveInstanceVariableToClassTransformation
		model: model
		variable: 'asdf'
		fromClass: #FOOBAR
		toClass: self changeMock name.
	
	oldClass := transformation model classNamed: #FOOBAR.
	newClass := transformation model classNamed: self changeMock name asSymbol.
	self assert: (oldClass directlyDefinesInstanceVariable: 'asdf').
	self deny: (newClass directlyDefinesInstanceVariable: 'asdf').
	
	transformation transform.
	self assert: transformation model changes changes size equals: 3.
	
	oldClass := transformation model classNamed: #FOOBAR.
	newClass := transformation model classNamed: self changeMock name asSymbol.
	self deny: (oldClass directlyDefinesInstanceVariable: 'asdf').
	self assert: (newClass directlyDefinesInstanceVariable: 'asdf').
	