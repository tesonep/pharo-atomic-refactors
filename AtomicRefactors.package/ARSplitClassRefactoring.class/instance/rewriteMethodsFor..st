rewriting
rewriteMethodsFor: aRBClass
	| methods |
	methods := (variablesToExtract flatCollect: [ :variable | aRBClass existingMethodsThatReferToInstanceVariable: variable ]) asSet.

	^ methods collect: [ :e | self rewriteMethod: e on: aRBClass ]