accessing
definingMethod

	^ method ifNil: [ 
		method := (self definingClass methodFor: selector asSymbol) ast ]