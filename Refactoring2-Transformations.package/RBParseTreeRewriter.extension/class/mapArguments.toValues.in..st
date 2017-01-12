*Refactoring2-Transformations
mapArguments: arguments toValues: values in: aTree

	^ (arguments size = values size)
		"map directly"
		ifTrue: [
			| argsAndValues |
			argsAndValues := OrderedCollection new.
			arguments with: values do: [ :arg :val | 
				argsAndValues add: (arg name asString -> val value storeString) ].
			argsAndValues ]
		"open browser"
		ifFalse: [
			(RBMethodArgumentsSelector
				openOn: (arguments collect: [:e | e name asString])
				and: (values collect: [ :e | e value storeString ])
				in: aTree)
				argumentsAndValues ]