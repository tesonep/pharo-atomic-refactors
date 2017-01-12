testing
testTransform

	| transformation newClass superclass |
	transformation := (RBAddClassTransformation
		addClass: self changeMock name, 'Temporary'
		superclass: #Object
		subclasses: OrderedCollection new 
		category: self class category)
		transform.
	
	self assert: transformation model changes changes size equals: 1.
	
	newClass := transformation model classNamed: (self changeMock name, 'Temporary') asSymbol.
	superclass := transformation model classNamed: #Object.
	self assert: newClass superclass = superclass.
	self assert: (superclass subclasses includes: newClass).
	self assert: newClass theMetaClass superclass = superclass theMetaClass.
	self assert: (superclass theMetaClass subclasses includes: newClass theMetaClass).