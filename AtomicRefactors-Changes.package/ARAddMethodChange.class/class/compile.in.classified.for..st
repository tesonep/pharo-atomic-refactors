instance creation
compile: sourceCode in: aClass classified: aProtocol for: aController
	^ self new
		sourceCode: sourceCode;
		targetClass: aClass;
		protocol: aProtocol;
		controller: aController;
		yourself