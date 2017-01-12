accessing
poolDictionaryNames: aCollectionOfStrings 

	poolDictionaryNames := (aCollectionOfStrings collect: #asSymbol) asOrderedCollection