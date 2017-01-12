preconditions
justSendsSuper: aSelector 

	| matcher parseTree superclass |
	matcher := RBParseTreeSearcher justSendsSuper.
	parseTree := self definingClass parseTreeFor: aSelector.
	(matcher executeTree: parseTree initialAnswer: false) ifFalse: [^false].
	parseTree lastIsReturn ifTrue: [^true].
	
	"Since there isn't a superclass that implements the message, we can 
	 delete it since it would be an error anyway."
	superclass := self definingClass superclass whichClassIncludesSelector: aSelector.
	superclass isNil ifTrue: [^true].	
		
	parseTree := superclass parseTreeFor: aSelector.
	matcher := RBParseTreeSearcher new.
	matcher matches: '^``@object'
			  do: [ :aNode :answer | answer add: aNode value; yourself].
	matcher executeTree: parseTree initialAnswer: Set new.
	^ matcher answer allSatisfy: [ :each | each isVariable and: [each name = 'self'] ]
	
	"^ (matcher answer 
		detect: [:each | (each isVariable and: [each name = 'self']) not]
		ifNone: [nil]) isNil"