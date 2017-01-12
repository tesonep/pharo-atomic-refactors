api
model: aRBModel sourceCode: aString in: aClass withProtocol: protocol

	^ self new
		model: aRBModel;
		sourceCode: aString
		in: aClass
		withProtocol: protocol asSymbol;
		yourself