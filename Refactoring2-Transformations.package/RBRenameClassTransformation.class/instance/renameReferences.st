executing
renameReferences

	| replacer |
	replacer := (RBParseTreeRewriter
				replaceLiteral: className with: newClassName)
				replace: className with: newClassName;
				"replaceArgument: newClassName withValueFrom: 
					[ :aNode | self refactoringError: newClassName , ' already exists within the reference scope'];" "it shouldnt raise an error at the transformation level"
				yourself.
				
	self model
		allReferencesToClass: self definingClass
		do: [ :method | 
			(method modelClass hierarchyDefinesVariable: newClassName) 
				"ifTrue: [self refactoringError: newClassName,
								' is already defined in hierarchy of ', method modelClass printString]."
				ifFalse: [ self 
					convertMethod: method selector
					for: method modelClass
					using: replacer ]]