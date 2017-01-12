executing
removeSubtree: aTree in: aMethodTree

	^ [ RBParseTreeRewriter 
			replaceStatements: aTree formattedCode
		 	with: '' in: aMethodTree
			onInterval: aTree sourceInterval ]
		on: Error do: [ RBParseTreeRewriter 
					 replace: aTree formattedCode
					 with: '' in: aMethodTree
					 onInterval: aTree sourceInterval ]