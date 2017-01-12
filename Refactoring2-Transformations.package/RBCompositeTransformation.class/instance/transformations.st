accessing
transformations

	^ transformations ifNil: [ transformations := self buildTransformations ]