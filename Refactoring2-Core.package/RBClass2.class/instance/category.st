accessing
category

	^ category ifNil: [ 
		self isDefined
			ifTrue: [category := self realClass category]
			ifFalse: [model environment whichCategoryIncludes: self name]]
