actions
addAssociation

	[  | argument value |
		argument := argumentsList at: self argumentIndex.
		value := valuesList at: self valueIndex.
			
		"replace occurrences in code"
		tree := RBParseTreeRewriter 
			replace: value
			with: argument in: tree.
		
		"add new entry"
		argsAndValues at: argument put: value.
		"remove from lists"
		argumentsList removeAt: self argumentIndex.
		valuesList removeAt: self valueIndex.
		
		sourceCodeMorph contents: self sourceCode.
		self changed: #associations; changed: #arguments; 
				changed: #values; changed: #isOkEnabled ]
	on: Error do: [ self inform: 'Please select one argument and one value.' ]
	