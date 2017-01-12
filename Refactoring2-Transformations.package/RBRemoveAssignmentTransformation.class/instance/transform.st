executing
transform

	| methodTree valueNode assignments nodeToRemove |
	methodTree := self definingMethod.
	
	assignments := ( methodTree allChildren
		select: #isAssignment )
		select: [ :each | each variable name asString = variable ].
	
	nodeToRemove := ( assignments size = 1 )
		ifTrue: [ assignments first ]
		ifFalse: [ 
			valueNode := RBParser parseExpression: value.
			assignments detectMax: [ :node | 
				( ( node allChildren collect: #class ) 
					intersection: ( valueNode allChildren collect: #class ) ) size ] ].
	
	nodeToRemove parent removeNode: nodeToRemove.
	class compileTree: methodTree.