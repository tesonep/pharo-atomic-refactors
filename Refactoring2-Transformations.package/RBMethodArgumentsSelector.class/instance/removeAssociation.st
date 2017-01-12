actions
removeAssociation

	[  | association argument value |
		association := argsAndValues associations at: self associationIndex.
		argument := association key.
		value := association value.
		
		"replace occurrences in code"
		tree := RBParseTreeRewriter 
			replace: argument
			with: value in: tree.

		"remove entry"
		argsAndValues removeKey: argument.
		argumentsList add: argument.
		valuesList add: value.
		
		sourceCodeMorph contents: self sourceCode.
		self changed: #associations; changed: #arguments;
				changed: #values; changed: #isOkEnabled ]
	on: Error do: [ self inform: 'Please select one association to remove.' ]
	