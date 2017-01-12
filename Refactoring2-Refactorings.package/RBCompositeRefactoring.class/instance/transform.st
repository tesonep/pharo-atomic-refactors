executing
transform

	self checkPreconditions ifTrue: [ 
		self transformation transformations do: [ :e | e asRefactoring transform ] ]