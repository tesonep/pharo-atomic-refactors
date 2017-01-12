executing
transform
	"if the variable was previously assigned, the transformation adds
	 this assignment as the last one"

	| methodTree assignmentNode assignments previousNode |
	methodTree := self definingMethod.
	assignmentNode := RBAssignmentNode
		variable: ( RBVariableNode named: variable )
		value: ( RBParser parseExpression: value ).
	
	"check whether there are some dependencies in the expression"
	assignments := ( methodTree allChildren
		select: #isAssignment )
		select: [ :each | each variable name asString = variable ].
	previousNode := assignments detectMax: #stop.
	
	previousNode
		ifNil: [ methodTree body addNodeFirst: assignmentNode ]
		ifNotNil: [ previousNode parent addNode: assignmentNode after: previousNode ].
	class compileTree: methodTree.