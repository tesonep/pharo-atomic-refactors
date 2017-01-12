preconditions
superclassEquivalentlyDefines: aSelector 

	| superTree myTree |
	self definingClass superclass isNil ifTrue: [^false].
	superTree := self definingClass superclass parseTreeFor: aSelector.
	myTree := self definingClass parseTreeFor: aSelector.
	(superTree isNil or: [myTree isNil]) ifTrue: [^false].
	^ superTree equalTo: myTree exceptForVariables: #()