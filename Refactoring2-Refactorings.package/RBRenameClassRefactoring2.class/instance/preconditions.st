preconditions
preconditions

	^ ((RBCondition withBlock: [self definingClass notNil and: [self definingClass isMeta not]]) 
		& (RBCondition isValidClassName: newClassName) 
		& (RBCondition isGlobal: newClassName in: self model) not
		& (RBCondition withBlock: [
			| replacer |
			replacer := (RBParseTreeRewriter
				replaceLiteral: className with: newClassName)
				replace: className with: newClassName;
				replaceArgument: newClassName withValueFrom: 
					[ :aNode | self refactoringError: newClassName,
						' already exists within the reference scope'];
				yourself.
				
			self model
				allReferencesToClass: self definingClass
				do: [ :method | 
					(method modelClass hierarchyDefinesVariable: newClassName) ifTrue: 
					[self refactoringError: newClassName,
						' is already defined in hierarchy of ', method modelClass printString].
					
					self convertMethod: method selector
							for: method modelClass
							using: replacer ]. true ])) |
		(RBCondition withBlock: [ self refactoringError: newClassName, ' is not a valid class name'])