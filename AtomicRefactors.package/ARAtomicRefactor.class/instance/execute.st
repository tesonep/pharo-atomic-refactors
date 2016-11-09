executing
execute
 	| loader patch |
	self checkPreconditions.
	self calculateOperations.
	
	loader := AtomicLoader new.
	patch := AtomicPatch new.
	
	patch addAll: patchOperations.
	
	loader loadPatch: patch.