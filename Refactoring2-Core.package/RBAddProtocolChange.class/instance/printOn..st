printing
printOn: aStream 

	aStream
		nextPutAll: self displayClassName;
		nextPutAll: ' addProtocolNamed: ';
		print: ( self displayProtocolName );
		nextPutAll: ' stamp: ';
		print: (self changeStamp);
		nextPutAll: '!'