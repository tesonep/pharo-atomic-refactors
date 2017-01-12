preconditions
preconditions

	^ ( RBCondition
		withBlock: [ self definingClass isNotNil ]
		errorString: 'Class named ', className, ' does not exist' ) &
	   ( RBCondition
		withBlock: [ self model environment categories includes: category ]
		errorString: 'Category named ', category, ' does not exist' )