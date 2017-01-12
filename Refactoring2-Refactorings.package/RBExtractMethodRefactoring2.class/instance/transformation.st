executing
transformation

	^ transformation ifNil: [ 
		transformation := RBExtractMethodTransformation
								model: self model
								extract: sourceCode
								from: selector
								to: newSelector
								in: className ]