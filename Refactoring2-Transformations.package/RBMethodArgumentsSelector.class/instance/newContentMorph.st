actions
newContentMorph

	^ (self newColumn: { 
		(self newRow: {
			"the arguments"
			self newGroupbox: 'Arguments' for: (self newColumn: {
				(self newListFor: self
					list: #arguments
					selected: #argumentIndex
					changeSelected: #argumentIndex:
					help: nil)
					hResizing: #spaceFill;
					yourself }).
					
			"the values"
			self newGroupbox: 'Values' for: (self newColumn: {
				(self newListFor: self
					list: #values
					selected: #valueIndex
					changeSelected: #valueIndex:
					help: nil)
					hResizing: #spaceFill;
					yourself }).
					
			"add an association"
			(self newRow: {
				self newButtonFor: self action: #addAssociation 
					label: 'v' help: 'Map'.})
				hResizing: #shrinkWrap}).
				
		"source code preview"
		(self newRow: {
			self newGroupbox: 'Preview' for: (self newColumn: {
				sourceCodeMorph := (self newText: tree formattedCode)
					extent: 400@400;
					hResizing: #rigid }) }).
				
		"associations"
		(self newRow: {
			self newGroupbox: 'Associations' for: (self newColumn: {
				(self newListFor: self
					list: #associations
					selected: #associationIndex
					changeSelected: #associationIndex:
					help: nil)
					hResizing: #spaceFill;
					yourself. }).
					
		"remove association"
		(self newRow: {
			self newButtonFor: self action: #removeAssociation
				label: '^' help: 'Unmap'.})
			hResizing: #shrinkWrap }).		
		
	 }) vResizing: #shrinkWrap
