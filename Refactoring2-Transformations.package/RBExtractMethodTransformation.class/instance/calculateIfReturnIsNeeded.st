querying
calculateIfReturnIsNeeded

	| searcher |
	searcher := RBParseTreeSearcher new.
	searcher
		matches: '^self' do: [:aNode :answer | answer];
		matches: '^`@anything' do: [:aNode :answer | true].
	^ (searcher executeTree: subtree initialAnswer: false)