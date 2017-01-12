testing
testClassVariableInModel

	| refactoring class |
	refactoring := (RBProtectVariableRefactoring 
		model: model
		classVariable: 'ClassVarName1'
		class: #Foo)
		transform.
	
	class := (model classNamed: #Foo) theMetaClass.
	self assert: (class parseTreeFor: #classVarName1) 
			equals: (RBParser parseMethod: 'classVarName1 ^ClassVarName1').
	self assert: (class parseTreeFor: #classVarName1:) 
			equals: (RBParser parseMethod: 'classVarName1: anObject ClassVarName1 := anObject').
	
	self assert: (class parseTreeFor: #foo)
			equals: (RBParser parseMethod: 'foo
				^self classVarName1: self classVarName1 * self classVarName1 * self classVarName1').
					
	self assert: (class theNonMetaClass parseTreeFor: #classVarName1)
			equals: (RBParser parseMethod: 'classVarName1 ^self class classVarName1').
	self assert: (class theNonMetaClass parseTreeFor: #classVarName1:) 
			equals: (RBParser parseMethod: 'classVarName1: anObject
				^self class classVarName1: anObject').
				
	"self assert: (class theNonMetaClass parseTreeFor: #asdf)
			equals: (RBParser parseMethod: 'asdf
				^self classVarName1: (self class classVarName1: self class classVarName1 + 1)').
	self assert: ((model classNamed: #Bar) parseTreeFor: #foo)
			equals: (RBParser parseMethod: 'foo
				instVarName1 := instVarName1 + instVarName2 + self class classVarName1').
	self assert: ((model classNamed: #Bar) parseTreeFor: #foo)
			equals: (RBParser parseMethod: 'foo
				instVarName1 := instVarName1 + instVarName2 + self class classVarName1')"