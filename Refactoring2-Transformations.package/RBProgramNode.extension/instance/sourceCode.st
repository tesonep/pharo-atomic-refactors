*Refactoring2-Transformations
sourceCode

	| interval |
	interval := self sourceInterval.
	interval ifEmpty: [ ^ '' ].
	
	^ self source 
		copyFrom: interval first
		to: interval last