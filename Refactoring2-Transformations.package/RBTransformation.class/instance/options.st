accessing
options

	^ options ifNil: [ options := self class refactoringOptions copy ]