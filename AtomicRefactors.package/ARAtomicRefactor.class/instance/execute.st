executing
execute
 	| loader patch |
	self checkPreconditions.
	self calculateOperations.
	
	loader := AtomicLoader new.
	patch := AtomicPatch new.
	
	patch addAll: patchOperations.
	
	migrations associationsDo: [ :assoc | patch whenMigrating: assoc key use: assoc value ].
	
	loader loadPatch: patch.