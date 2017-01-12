executing
transform
	
	self replaceInstanceAccesses.
	isClassVariable ifTrue: [ self replaceClassAccesses ].