testing
testTransform

	| refactoring class |
	refactoring := (RBRemovePragmaRefactoring
						pragma: '<gtInspectorPresentationOrder: 34>'
						inMethod: #methodBefore
						inClass: #RBRemovePragmaTransformationTest)
						transform.
	
	self assert: refactoring model changes changes size equals: 1.
	
	class := refactoring model classNamed: #RBRemovePragmaTransformationTest.
	self assert: (class parseTreeFor: #methodBefore) body
			equals: (class parseTreeFor: #methodAfter) body.