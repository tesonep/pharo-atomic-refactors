preconditions
preconditions

	class := self model classObjectFor: className.

	^ (isClassVariable
		ifTrue: [ (RBCondition isMetaclass: class) not
			& (RBCondition directlyDefinesClassVariable: variableName asSymbol in: class) 
			& ((RBCondition withBlock: 
				[(#(#Object #Behavior #ClassDescription #Class) includes: class name) not]) 
				errorMacro: 'This refactoring does not work for Object, Behavior, ClassDescription, or Class')]
		ifFalse: [ (RBCondition directlyDefinesInstanceVariable: variableName in: class) ])
		& (RBCondition canUnderstand: self transformation getterMethod in: self definingClass)
		& (RBCondition canUnderstand: self transformation setterMethod in: self definingClass)
		