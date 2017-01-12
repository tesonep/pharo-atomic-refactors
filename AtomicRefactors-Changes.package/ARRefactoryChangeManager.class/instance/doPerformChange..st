private
doPerformChange: aRefactoringChange
	loader := AtomicLoader new.
	patch := AtomicPatch new.
	
	self addUndo: aRefactoringChange execute.
			
	loader loadPatch: patch.