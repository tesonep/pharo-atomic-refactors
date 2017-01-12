executing
defineSetterMethod

	| selector sourceCode |
	sourceCode := '<1s> anObject<r><t><2s> := anObject'.
	selector := self safeMethodNameFor: self definingClass basedOn: variableName asString , ':'.
	self definingClass 
		compile: (sourceCode expandMacrosWith: selector with: variableName)
		classified: #accessing.
	^selector