testing
testTransform

	| refactoring class |
	refactoring := (RBRemoveDirectAccessToVariableRefactoring
			instanceVariable: 'environment'
			class: #RBNamespace)
			transform.
	
	self assert: refactoring model changes changes size = 6.

	class := refactoring model classNamed: #RBNamespace.
	self assert: (class parseTreeFor: #includesGlobal:)
		equals: (RBParser parseMethod: 'includesGlobal: aSymbol 
			(self hasRemoved: aSymbol) ifTrue: [^false].
			(self includesClassNamed: aSymbol) ifTrue: [^true].
			self environment at: aSymbol ifAbsent: [^false].
			^ true').
	self assert: (class parseTreeFor: #initialize) 
		equals: (RBParser parseMethod: 'initialize
			changes := RBRefactoryChangeManager changeFactory compositeRefactoryChange.
			self environment: RBBrowserEnvironment new.
			newClasses := IdentityDictionary new.
			changedClasses := IdentityDictionary new.
			removedClasses := Set new.
			implementorsCache := IdentityDictionary new.
			sendersCache := IdentityDictionary new')