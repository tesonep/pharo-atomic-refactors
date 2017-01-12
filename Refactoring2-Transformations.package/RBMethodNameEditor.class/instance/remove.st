actions
remove

	| newArguments |
	newArguments := self argumentList.
	newArguments removeAt: self argumentIndex.
	
	self methodName arguments: newArguments.
	self update