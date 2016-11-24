rewriting
rewriteMethods
	| modifiedMethods |
	modifiedMethods := self rbTargetClass withAllSubclasses flatCollect: [ :e | self rewriteMethodsFor: e ].
	modifiedMethods do: [ :m | 
		patchOperations add: (APAddMethod fromSource: m source selector: m selector onClassNamed: m changeClassName) ]