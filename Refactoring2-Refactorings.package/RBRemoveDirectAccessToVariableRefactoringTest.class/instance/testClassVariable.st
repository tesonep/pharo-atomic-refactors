testing
testClassVariable

	| refactoring class |
	refactoring := (RBRemoveDirectAccessToVariableRefactoring 
		classVariable: 'UndoSize'
		class: #RBRefactoryChangeManager)
		transform.
	
	self assert: refactoring model changes changes size = 2.
	
	class := (refactoring model classNamed: #RBRefactoryChangeManager) theMetaClass.
	self assert: (class parseTreeFor: #initialize) 
			equals: (RBParser parseMethod: 'initialize self nuke. self undoSize: 20').
	self assert: (class theNonMetaClass parseTreeFor: #addUndo:) 
			equals: (RBParser parseMethod: 'addUndo: aRefactoringChange
				undo addLast: aRefactoringChange.
				undo size > self class undoSize
					ifTrue: [ undo removeFirst ].
				redo := OrderedCollection new')