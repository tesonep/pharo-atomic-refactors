testing
testVariableIsNotAccessed

	| transformation class |
	transformation := RBProtectVariableTransformation 
		instanceVariable: 'instVar'
		class: self changeMock name.
	
	class := transformation model classNamed: self changeMock name asSymbol.
	self deny: (class directlyDefinesLocalMethod: #instVar).
	self deny: (class directlyDefinesLocalMethod: #instVar:).
	
	transformation transform.	
	self assert: transformation model changes changes size equals: 2.
	self assert: (class directlyDefinesLocalMethod: #instVar).
	self assert: (class directlyDefinesLocalMethod: #instVar:).