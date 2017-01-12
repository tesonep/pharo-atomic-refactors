preconditions
preconditions

	^ ( RBCondition
			withBlock: [ self definingClass isNotNil ]
			errorString: 'Class named ', className, ' does not exist' ) 
		& ( RBCondition
			withBlock: [ ( model environment 
			protocolsFor: self definingClass realClass )
			includes: protocol ]
			errorString: 'Protocol named ', protocol, ' does not exist' )
		& ( RBCondition
			withBlock: [ (self definingClass realClass organization protocolNamed: protocol ) canBeRemoved ]
			errorString: 'Protocol named ', protocol, ' is a virtual protocol and it cannot be removed' ) 
		& ( RBCondition
			withBlock: [ (self definingClass realClass organization protocolNamed: protocol ) isEmpty ]
			errorString: 'Protocol named ', protocol, ' is not empty and it cannot be removed' )