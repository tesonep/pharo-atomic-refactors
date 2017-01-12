executing
transform

	| methodTree messageNode assignments variables  previousNode |
	methodTree := self definingMethod.
	messageNode := RBParser parseExpression: message.

	"if the message requires variables, look for the right variables in this context"
	variables := messageNode allAccesses.
	assignments := ( methodTree allChildren 
		select: #isAssignment )
		select: [ :each | variables includes: each variable ].
		
	previousNode := assignments detectMax: #stop.
	
	previousNode
		ifNil: [ methodTree body addNodeFirst: messageNode ]
		ifNotNil: [ previousNode parent addNode: messageNode after: previousNode ].
	
	class compileTree: methodTree.