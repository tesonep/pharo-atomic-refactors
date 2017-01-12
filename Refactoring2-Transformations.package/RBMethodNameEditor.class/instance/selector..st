accessing
selector: aString

	super selector: aString.
	(labelGroup extent x > self extent x) ifTrue: [ 
		self extent: ((labelGroup extent x+20) @ labelGroup extent y) ]
	
	