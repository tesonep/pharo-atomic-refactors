morphic
newContentMorph

	^ labelGroup := (self newRow: {
		self newLabelGroup: {
			'Selector:' -> (selectorField := 
			(self newTextEntryFor: self getText: #selector setText: #selector: help: nil)
				autoAccept: true;
				on: #keyStroke send: #value:value:
				to: [:key :morph | key keyCharacter = Character cr ifTrue: [ self ok. true]. false];
				hResizing: #spaceFill;
				yourself).
				
			'Arguments:' -> (self newRow: {
				(self newColumn: {
					self newButtonFor: self action: #add label: '+'  help: nil.
					self newButtonFor: self action: #remove label: '-'  help: nil })
					hResizing: #shrinkWrap.
				(self newListFor: self list: #argumentList
					selected: #argumentIndex
					changeSelected: #argumentIndex: help: nil)
					hResizing: #spaceFill;
					yourself. }).
					
			'Preview:' -> (labelMorph := self newLabel: self methodName printString) } } )
 		minWidth: 400;
		hResizing: #spaceFill;
		yourself