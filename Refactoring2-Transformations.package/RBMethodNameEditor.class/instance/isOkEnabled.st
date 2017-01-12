testing
isOkEnabled

	^ self methodName isNotNil
		and: [ self methodName isValid ]