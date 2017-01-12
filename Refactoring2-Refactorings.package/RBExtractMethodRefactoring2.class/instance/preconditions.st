preconditions
preconditions

	| subtree |
	subtree := self transformation calculateSubtree.
	
	^ (RBCondition withBlock: [ 
		subtree ifNil: [ self refactoringError: 'Cannot extract code.' ]. true ])
		"subtree containsReturn
		ifTrue: [ self refactoringError: 'Cannot extract code because it contains a return.' ]."
		& (RBCondition withBlock: [
			subtree parent isCascade ifTrue: [ 
				self refactoringError: 'Cannot extract code in a cascaded message' ]. true])
		& (RBCondition withBlock: [
			| temporaries |
			temporaries := self transformation calculateTemporaries.
			(RBReadBeforeWrittenTester readBeforeWritten: temporaries in: subtree) ifNotEmpty: [
				self refactoringError: 'Cannot extract temporaries if they are read before written.' ]. true ])
		& (RBCondition withBlock: [
			self transformation calculateAssignments size > 1 ifTrue: [ 
				self refactoringError: 'Cannot extract two or more assignments to temporaries without also extracting all the references.' ]. true ])
		& (RBCondition withBlock: [
			| assignments |
			assignments := self transformation calculateAssignments.
			assignments ifNotEmpty: [ 
			((RBReadBeforeWrittenTester isVariable: assignments first
				readBeforeWrittenIn: subtree) 
				or: [subtree containsReturn])
				ifTrue: [ self refactoringError: ('Cannot extract assignment to <1s> without also extracting all the references.' expandMacrosWith: assignments asString)] ]. true ])
		& (RBCondition withBlock: [	
			| searchSpace |
			searchSpace := (self class
				allMethodsInHierarchyOf: self definingClass)
				reject: [ :m | m selector = selector ].
			
			(RBParseTreeSearcher whichMethodIn: searchSpace matches: subtree)
				ifNotEmpty: [ :opportunities |
					self refactoringError: ('<1s> method(s) already implement this code.<n>Do you want to send a message instead?' expandMacrosWith: opportunities size asString)
					with: [ (RBParseTreeRewriter
							  replaceCode: subtree
							  byMessageSendTo: opportunities anyOne
							  in: (self definingClass methodFor: self transformation calculateTree selector))
							  transform ]. false ]
				ifEmpty: [ true ] ])