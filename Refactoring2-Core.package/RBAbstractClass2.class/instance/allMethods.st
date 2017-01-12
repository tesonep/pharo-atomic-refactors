method accessing
allMethods

	^ self allSelectors
		collect: [ :selector | self methodFor: selector ]
		thenSelect: #isNotNil