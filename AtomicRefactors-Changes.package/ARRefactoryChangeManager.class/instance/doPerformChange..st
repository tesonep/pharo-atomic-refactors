private
doPerformChange: aRefactoringChange
	loader := AtomicLoader new.
	patchBuilder := AtomicPatchBuilder new.
	
	self addUndo: aRefactoringChange execute.
			
	loader loadPatch: patchBuilder buildPatch.