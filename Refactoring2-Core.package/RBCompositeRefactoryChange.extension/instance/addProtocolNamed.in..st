*Refactoring2-Core
addProtocolNamed: aString in: aClass 

	^ self addChange: (RBAddProtocolChange addProtocolNamed: aString in: aClass)