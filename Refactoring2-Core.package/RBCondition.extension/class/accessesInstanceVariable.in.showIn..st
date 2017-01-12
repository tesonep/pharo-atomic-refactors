*Refactoring2-Core
accessesInstanceVariable: variableName in: aClass showIn: aTransformation

	| references |
	references := RBCondition referencesInstanceVariable: variableName in: aClass.
	aClass realClass 
		ifNil: [ references errorMacro: ('<1s> is referenced.' expandMacrosWith: variableName) ]
		ifNotNil: [ references
			errorMacro: ('<1s> is referenced.<n>Browse references?' expandMacrosWith: variableName);
			errorBlock: [ aTransformation openBrowserOn: 
				(RBBrowserEnvironment new instVarRefsTo: variableName in: aClass realClass)]].
	^ references not