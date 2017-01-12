*Refactoring2-Transformations
parsePragma: aString

	| parser |
	parser := self new.
	parser initializeParserWith: aString.
	^ parser parsePragmaAndReturn