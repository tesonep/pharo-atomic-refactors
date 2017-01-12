*Refactoring2-Transformations
buildMessageSendWith: aSelector and: argsAndValues needsReturn: aBoolean

	^ String streamContents: [ :string |
		aBoolean ifTrue: [ string nextPutAll: '^ ' ].
		
		string nextPutAll: 'self '.
		argsAndValues
			ifEmpty: [ string nextPutAll: aSelector asString ] 
			ifNotEmpty: [ 
				aSelector keywords with: argsAndValues associations
					do: [ :key :arg | 
						string nextPutAll: key asString; nextPut: $ .
						string nextPutAll: (argsAndValues at: arg key).
						string nextPut: $ ] ] ]