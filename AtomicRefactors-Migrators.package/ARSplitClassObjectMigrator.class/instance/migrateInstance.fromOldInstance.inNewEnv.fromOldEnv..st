migration
migrateInstance: new fromOldInstance: old inNewEnv: newEnv fromOldEnv: oldEnv
	| child childClass targetClass oldClass |
	self basicMigrateInstance: new from: old.

	childClass := newEnv at: newClassName.
	child := childClass new.
	targetClass := new class.
	oldClass := old class.

	(targetClass slotNamed: referenceVariableName) write: child to: new.

	variablesToExtract
		do: [ :e | (childClass slotNamed: e) write: ((oldClass slotNamed: e) read: old) to: child ].

	^ new