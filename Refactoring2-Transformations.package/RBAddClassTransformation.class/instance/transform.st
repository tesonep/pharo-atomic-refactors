executing
transform

	(self model)
		defineClass: ('<1p> subclass: #<2s> instanceVariableNames: '''' classVariableNames: '''' poolDictionaries: '''' category: <3p>' 
			expandMacrosWith: (self model classObjectFor: superclass)
			with: className
			with: category asString);
		reparentClasses: (subclasses collect: [ :e | self model classObjectFor: e ])
		to: (self model classNamed: className asSymbol)