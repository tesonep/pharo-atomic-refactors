testing
testTransform

	| refactoring class |
	refactoring := (RBAddPragmaRefactoring
						pragma: '<gtInspectorPresentationOrder: 56>'
						inMethod: #methodBefore
						inClass: #RBAddPragmaTransformationTest)
						transform.
	
	self assert: refactoring model changes changes size equals: 1.
	
	class := refactoring model classNamed: #RBAddPragmaTransformationTest.
	self assert: (class parseTreeFor: #methodBefore) body
			equals: (class parseTreeFor: #methodAfter) body.