preconditions
preconditions

	^ ( RBCondition
			withBlock: [ self definingClass isNotNil ]
			errorString: 'Class named ', className, ' does not exist' )
	  & ( RBCondition withBlock: [ (( model environment 
			protocolsFor: self definingClass realClass )
			includes: protocol ) not ]
			errorString: 'Protocol named ', protocol, ' already exists' )