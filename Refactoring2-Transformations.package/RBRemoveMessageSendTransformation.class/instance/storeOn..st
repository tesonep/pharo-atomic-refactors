printing
storeOn: aStream 

	aStream nextPut: $(.
	self class storeOn: aStream.
	aStream
		nextPutAll: ' messageSend: ''';
		nextPutAll: message asString;
		nextPutAll: ''' inMethod: ''';
		nextPutAll: selector;
		nextPutAll: ''' inClass: '.
	class storeOn: aStream.
	aStream nextPut: $)