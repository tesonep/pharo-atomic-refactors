api
sourceCode: aString in: aClass withProtocol: protocol

	^ self new
		sourceCode: aString
		in: aClass
		withProtocol: protocol asSymbol;
		yourself