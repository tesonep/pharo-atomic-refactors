*Refactoring2-Core
accessesClassVariable: variableName in: aClass showIn: aTransformation

	^ RBCondition withBlock: [ | block |
		block := 	[ :each | 
			(each whichSelectorsReferToClassVariable: variableName)
				ifNotEmpty: [ aClass realClass
					ifNil: [ RBRefactoring new
						refactoringError: ('<1s> is referenced.' expandMacrosWith: variableName) ]
					ifNotNil: [ RBRefactoring new
						refactoringError: ('<1s> is referenced.<n>Browse references?' expandMacrosWith: variableName)
						with: [ aTransformation openBrowserOn: (RBVariableEnvironment 
									referencesToClassVariable: variableName
									in: aClass realClass) ] ] ] ].
			aClass withAllSubclasses do: block.
			aClass theMetaClass withAllSubclasses do: block.
			true ]