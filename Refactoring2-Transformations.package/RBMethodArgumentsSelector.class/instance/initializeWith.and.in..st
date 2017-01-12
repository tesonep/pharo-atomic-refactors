initialization
initializeWith: aCollection and: anotherCollection in: aTree

	arguments := aCollection.
	values := anotherCollection.
	tree := aTree.
	
	argsAndValues := Dictionary new.
	
	self initialize.
	self title: 'There are extra arguments in this method. Please map a value to each extra argument.' translated