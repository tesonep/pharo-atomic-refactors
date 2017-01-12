private
resumeIfCannotRemove: error

	^ error messageText = RBRemoveClassRefactoring2 cannotRemoveTopLevelClassErrorMesssage
		ifTrue: [ error resume ]