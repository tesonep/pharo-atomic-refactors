accessing
model

	^ model ifNil: [ model := self newModel ]