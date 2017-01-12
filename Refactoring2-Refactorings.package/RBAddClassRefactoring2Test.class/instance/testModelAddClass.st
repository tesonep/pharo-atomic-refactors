testing
testModelAddClass

	| refactoring newClass superClass subclass |
	subclass := model classNamed: #Bar.
	superClass := model classNamed: #Foo.
	refactoring := RBAddClassRefactoring2
		model: model
		addClass: #FooTest
		superclass: #Foo
		subclasses: #(Bar)
		category: #'Refactory-Testing'.
	refactoring transform.
		
	newClass := model classNamed: #FooTest.
	self assert: newClass superclass = superClass.
	self assert: (superClass subclasses includes: newClass).
	self assert: newClass theMetaClass superclass = superClass theMetaClass.
	self assert: (superClass theMetaClass subclasses includes: newClass theMetaClass).
	self assert: subclass superclass = newClass.
	self assert: (newClass subclasses includes: subclass).
	self assert: subclass theMetaClass superclass = newClass theMetaClass.
	self assert: (newClass theMetaClass subclasses includes: subclass theMetaClass)