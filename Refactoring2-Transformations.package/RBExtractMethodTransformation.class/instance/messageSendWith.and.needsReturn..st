executing
messageSendWith: aMethodName and: newArguments needsReturn: aBoolean

	^ String streamContents: [ :string |
		aBoolean ifTrue: [ string nextPutAll: '^ ' ].
			
		assignments size = 1
			ifTrue: [ string
				nextPutAll: assignments first asString;
				nextPutAll: ' := ' ].
		
		string nextPutAll: 'self '.
		aMethodName arguments
			ifEmpty: [ string nextPutAll: aMethodName selector asString ] 
			ifNotEmpty: [ 
				(aMethodName selector keywords size = aMethodName arguments size)
					ifTrue: [ aMethodName selector keywords
								with: aMethodName arguments 
								do: [ :key :arg | 
									string nextPutAll: key asString; nextPut: $ .
									(newArguments includesKey: arg asString)
										ifTrue: [ string nextPutAll: (newArguments at: arg asString) ]
										ifFalse: [ string nextPutAll: arg asString ].
								string nextPut: $ ] ] ] ]