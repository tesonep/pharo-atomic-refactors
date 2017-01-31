instance creation
targetClass: targetClass migrator: migrator
	^ self new
		targetClass: targetClass;
		migrator: migrator;
		yourself