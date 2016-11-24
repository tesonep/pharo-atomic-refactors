rewriting
rewriteMethod: aSelector on: aRBClass
	| rewriteRule parseTree |
	rewriteRule := RBParseTreeRewriter new.

	variablesToExtract
		do: [ :instanceVariable | 
			rewriteRule
				replace: instanceVariable , ' := ``@object' with: referenceVariableName , ' ' , instanceVariable , ': ``@object';
				replace: instanceVariable with: referenceVariableName , ' ' , instanceVariable ].

	parseTree := aRBClass parseTreeFor: aSelector.
	parseTree isNil
		ifTrue: [ ^ self ].
	rewriteRule executeTree: parseTree.
	^ aRBClass compileTree: parseTree