I am an editor to select values in a method that should be passed as arguments.

Usage:
RBMethodArgumentsSelector
	openOn: { 'argumentList' }
	and: { '#argumentList' }
	in: (RBParser parseMethod: 'update: argumentList
		self changed: #argumentList;
			changed: #argumentIndex.
		self changed: #isUpEnabled;
			changed: #isDownEnabled;
			changed: #isOkEnabled.
		labelMorph contents: self methodName printString')