*Refactoring2-Transformations
matchingTreeForMethod: aCompiledMethod

	| searchCode tree variables |
	tree := aCompiledMethod ast.
	searchCode := tree body sourceCode.
	
	"if there's just a return, remove it"
	tree body lastIsReturn ifTrue: [ 
		searchCode := searchCode copyReplaceAll: '^' with: '' ].
	
	"replace arguments by wildcards"
	variables := tree arguments
		collect: [ :e | ' ', e name asString ].
	variables doWithIndex: [ :e :i |
		searchCode := searchCode copyReplaceAll: e with: '``@a',i asString ].
	
	^ searchCode