testing
testTransform

	| transformation newClass superclass |
	transformation := (RBRemoveClassTransformation
		className: self changeMock name)
		transform.
	
	self assert: transformation model changes changes size equals: 1.
	
	newClass := transformation model classNamed: self changeMock name asSymbol.
	superclass := transformation model classNamed: #Object.
	self assert: newClass isNil.
	
	newClass := self changeMock name.
	self assert: ((superclass subclasses collect: #name) includes: newClass) not.
	self assert: ((superclass theMetaClass subclasses collect: #name) includes: newClass) not.