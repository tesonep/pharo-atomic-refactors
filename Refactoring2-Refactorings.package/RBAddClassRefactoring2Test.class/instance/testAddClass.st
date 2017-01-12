testing
testAddClass

	| refactoring newClass superClass classTest |
	refactoring := RBAddClassRefactoring2
		addClass: #FooTest
		superclass: #RBRefactoring2Test
		subclasses: #(RBAddClassRefactoring2Test)
		category: #'Refactory-Testing'.
	refactoring transform.
		
	newClass := refactoring model classNamed: #FooTest.
	superClass := refactoring model classNamed: #RBRefactoring2Test.
	classTest := refactoring model classNamed: self class name.
	self assert: newClass superclass = superClass.
	self assert: (superClass subclasses includes: newClass).
	self assert: newClass theMetaClass superclass = superClass theMetaClass.
	self assert: (superClass theMetaClass subclasses includes: newClass theMetaClass).
	self assert: classTest superclass = newClass.
	self assert: (newClass subclasses includes: classTest).
	self assert: classTest theMetaClass superclass = newClass theMetaClass.
	self assert: (newClass theMetaClass subclasses includes: classTest theMetaClass)