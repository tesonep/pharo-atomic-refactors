printing
storeOn: aStream 

	aStream nextPut: $(.
	self class storeOn: aStream.
	aStream nextPutAll: ' sourceCode: '''.
	sourceCode storeOn: aStream.
	aStream nextPutAll: ''' in: '.
	class storeOn: aStream.
	aStream
		nextPutAll: ' withProtocol: #';
		nextPutAll: protocol asString.
	aStream nextPut: $)