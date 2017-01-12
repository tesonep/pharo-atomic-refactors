printing
storeOn: aStream 

	aStream nextPut: $(.
	self class storeOn: aStream.
	aStream
		nextPutAll: ' return: ''';
		nextPutAll: returnValue;
		nextPutAll: ''' inMethod: ''';
		nextPutAll: selector;
		nextPutAll: ''' inClass: '.
	class storeOn: aStream.
	aStream nextPut: $)