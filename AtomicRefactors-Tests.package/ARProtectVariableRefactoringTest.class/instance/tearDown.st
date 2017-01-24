tests
tearDown
	super tearDown.

	#(ARClassProtectVariableTest ARSubClassProtectVariableTest)
		do: [ :e | 
			| x |
			x := Smalltalk globals at: e ifAbsent: [ nil ].
			x ifNotNil: #removeFromSystem ]