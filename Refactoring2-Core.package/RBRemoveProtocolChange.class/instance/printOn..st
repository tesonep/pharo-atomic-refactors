printing
printOn: aStream 

	aStream
		nextPutAll: self displayClassName;
		nextPutAll: ' removeProtocolNamed: ';
		print: ( self displayProtocolName );
		nextPutAll: ' stamp: ';
		print: (self changeStamp);
		nextPutAll: '!'