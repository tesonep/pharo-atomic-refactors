*Refactoring2-Core
removeProtocolNamed: aString in: aClass 

	^ self addChange: (RBRemoveProtocolChange removeProtocolNamed: aString in: aClass)