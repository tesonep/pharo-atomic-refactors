executing
defineGetterMethod

	| selector |
	selector := self safeMethodNameFor: self definingClass basedOn: variableName asString.
	self definingClass 
		compile: ('<1s><r><t>^ <2s>' expandMacrosWith: selector with: variableName)
		classified: #(#accessing).
	^ selector