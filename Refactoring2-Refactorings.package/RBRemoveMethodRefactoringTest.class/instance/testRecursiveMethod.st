testing
testRecursiveMethod

	| refactoring class selector otherClass |
	class := model classNamed: #Object.
	selector := 'someMethodThatIsNotReferenced' asSymbol.
	class compile: 'someMethodThatIsNotReferenced ^2' classified: #(#accessing).
	self assert: (class definesMethod: selector).
	
	otherClass := model metaclassNamed: self class superclass name.
	otherClass 
		compile: 'someMethodThatIsNotReferenced ^3 someMethodThatIsNotReferenced'
		classified: #(#accessing).
	model removeClassNamed: self class name.
	
	refactoring := (RBRemoveMethodRefactoring2 
				model: model
				selector: selector
				from: class).
	[ refactoring transform ] on: RBRefactoringError do: [ :e | e resume ].
	self deny: (class definesMethod: selector)