as yet unclassified
tearDown
	super tearDown.

	#(ARExampleClass ARSuperclassExampleClass ARExampleSubClass ARExampleSubClassValues)
		do: [ :e | 
			| x |
			x := Smalltalk globals at: e ifAbsent: [ nil ].
			x ifNotNil: #removeFromSystem ]