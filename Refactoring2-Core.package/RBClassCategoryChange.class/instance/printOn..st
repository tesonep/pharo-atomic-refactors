printing
printOn: aStream 

	aStream
		nextPutAll: self displayClassName;
		nextPutAll: ' classCategory: ';
		print: self displayCategoryName;
		nextPutAll: ' stamp: ';
		print: self changeStamp;
		nextPutAll: '!'