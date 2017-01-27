instance creation
definition: definition for: aController
	^ self new 
		definition: definition;
		controller: aController;
		yourself.