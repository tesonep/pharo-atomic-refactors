testing
testModelRemoveInstanceVariable

	| class |
	model 	defineClass: 'nil subclass: #Object
		instanceVariableNames: ''foo1''
		classVariableNames: ''''
		poolDictionaries: ''''
		category: #''Refactory-Test data'''.
	class := model classNamed: #Object.
	
	self assert: (class definesInstanceVariable: 'foo1').
	(RBRemoveVariableRefactoring 
		model: model
		instanceVariable: 'foo1'
		class: class)
		transform.
	self deny: (class definesInstanceVariable: 'foo1')