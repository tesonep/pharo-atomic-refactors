accessing
argumentList

	^ self methodName
		ifNil: [ OrderedCollection new ]
		ifNotNil: [ :method | method arguments copy ]