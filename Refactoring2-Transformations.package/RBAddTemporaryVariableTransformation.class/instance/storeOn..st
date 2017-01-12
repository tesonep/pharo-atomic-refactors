printing
storeOn: aStream 

	aStream nextPut: $(.
	self class storeOn: aStream.
	aStream
		nextPutAll: ' variable: ''';
		nextPutAll: variableName;
		nextPutAll: ''' inMethod: ''';
		nextPutAll: selector;
		nextPutAll: ''' inClass: '.
	class storeOn: aStream.
	aStream nextPut: $)