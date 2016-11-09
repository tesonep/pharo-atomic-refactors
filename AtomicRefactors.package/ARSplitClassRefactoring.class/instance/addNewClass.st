operations
addNewClass
	| createClass |
	createClass := APCreateClass empty.

	createClass definedClassName: newClassName.
	createClass category: targetClass category.
	variablesToExtract do: [ :e | createClass addSlotNamed: e ].
	
	patchOperations add:createClass.
	
	variablesToExtract do: [ :e | |getterMethod setterMethod|
		getterMethod := APAddMethod fromSource: ('<1s><r><t>^ <1s>' expandMacrosWith: e ) selector: e  onClassNamed: newClassName.
		setterMethod := APAddMethod fromSource: ('<1s>:anObject<r><t> <1s> := anObject' expandMacrosWith: e) selector: (e , ':') asSymbol onClassNamed: newClassName.
		
		patchOperations add: getterMethod.
		patchOperations add: setterMethod.
	].
	