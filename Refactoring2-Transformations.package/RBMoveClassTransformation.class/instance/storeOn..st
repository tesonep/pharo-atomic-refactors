printing
storeOn: aStream 

	aStream nextPut: $(.
	self class storeOn: aStream.
	aStream
		nextPutAll: ' category: ''';
		nextPutAll: category;
		nextPutAll: ''' forClass: ';
		nextPutAll: className.
	aStream nextPut: $)