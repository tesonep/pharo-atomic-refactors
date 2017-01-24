converting
asUndoOperation
	| originalClass |
	originalClass := Smalltalk globals at: self targetClass name ifAbsent: nil.

	^ (originalClass isNil or: [ (originalClass includesSelector: self selector) not ])
		ifTrue: [ RBRefactoryChangeManager changeFactory removeMethod: selector from: self targetClass ]
		ifFalse: [ | oldProtocol |
			oldProtocol := RBBrowserEnvironment new whichProtocolIncludes: self selector in: originalClass.

			oldProtocol isNil
				ifTrue: [ oldProtocol := #accessing ].

			RBRefactoryChangeManager changeFactory addMethodSource: (originalClass sourceCodeAt: self selector) in: self targetClass classified: oldProtocol ]
