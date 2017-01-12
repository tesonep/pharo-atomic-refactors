querying
calculateTree

	^ parseTree ifNil: [ parseTree := self definingMethod ]