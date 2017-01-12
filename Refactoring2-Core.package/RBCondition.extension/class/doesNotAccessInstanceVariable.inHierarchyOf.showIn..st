*Refactoring2-Core
doesNotAccessInstanceVariable: variableName inHierarchyOf: aClass showIn: aTransformation

	| references |
	references := RBCondition hierarchyOf: aClass referencesInstanceVariable: variableName.
	aClass realClass 
		ifNil: [ references errorMacro: ('<1s> is referenced.' expandMacrosWith: variableName) ]
		ifNotNil: [ references
			errorMacro: ('<1s> is referenced.<n>Browse references?' expandMacrosWith: variableName);
			errorBlock: [ aTransformation openBrowserOn: 
				(RBBrowserEnvironment new instVarRefsTo: variableName in: aClass realClass)]].
	^ references not