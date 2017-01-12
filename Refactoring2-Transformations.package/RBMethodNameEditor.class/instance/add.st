actions
add

	| newArguments |
	newArguments := self argumentList.
	newArguments add: ('arg', (newArguments size + 1) asString).
	
	self methodName arguments: newArguments.
	self update