printing
storeOn: aStream

	aStream nextPut: $(.
	self class storeOn: aStream.
	aStream
		nextPutAll: ' replace: ''';
		nextPutAll: oldSourceCode;
		nextPutAll: ''' to: ''';
		nextPutAll: newSourceCode;
		nextPutAll: ''' inMethod: #';
		nextPutAll: selector;
		nextPutAll: ' inClass: '.
	class storeOn: aStream.
	aStream nextPut: $)