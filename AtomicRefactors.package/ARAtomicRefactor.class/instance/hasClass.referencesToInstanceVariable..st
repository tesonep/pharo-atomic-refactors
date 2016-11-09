checking
hasClass: aClass referencesToInstanceVariable: aVariableName
	^ aClass methods anySatisfy: [ :m | 
		(m variableNodes select:#isInstance) anySatisfy: [ :node | node name = aVariableName ]	
	]