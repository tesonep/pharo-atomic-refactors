Creates a method from a code fragment. Temporary variables and arguments are automatically calculated by the transformation.

If the name of the new method is not provided (i.e., nil), it prompts a dialog window so the developer provides a valid method name. In this new implementation, it is possible to add or remove arguments in the new extracted message.
Similarly, if the number of arguments in the new method provided by the developer is higher than the number of arguments as calculated by the transformation, it prompts a dialog window so the developer selects which values must be passed as arguments.

Usage:
transformation := (RBExtractMethodTransformation
	extract: '(RecursiveSelfRule executeTree: rewriteRule tree initialAnswer: false)
		ifFalse: [builder
					compile: rewriteRule tree printString
					in: class
					classified: aSmalllintContext protocols]'
	from: #checkMethod:
	to: #foo:
	in: #RBTransformationRuleTest)
	transform.
(ChangesBrowser changes: transformation model changes changes) open