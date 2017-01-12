executing
sourceCodeAt: anInterval forMethod: aSelector in: aClass

	^ (aClass sourceCodeAt: aSelector)
		copyFrom: anInterval first to: anInterval last