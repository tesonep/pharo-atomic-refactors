testing
testRemoveMethod

	| refactoring selector class |
	selector := 'selectorNotReferenced' asSymbol.
	refactoring := RBRemoveMethodRefactoring2
		selector: selector
		from: #RBRefactoryTestDataApp.
	
	class := refactoring model classNamed: #RBRefactoryTestDataApp.
	self assert: (class directlyDefinesMethod: selector).
	refactoring transform.
	self deny: (class directlyDefinesMethod: selector)