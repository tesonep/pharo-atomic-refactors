testing
testVariableDoesNotExist

	model defineClass: 'Object subclass: #SomeClass
			instanceVariableNames: ''''
			classVariableNames: ''''
			poolDictionaries: ''''
			category: #''Refactory-Test data'''.
			
	self
		shouldFail: (RBPushDownVariableRefactoring 
				instanceVariable: 'foo'
				class: #RBBasicLintRuleTest);
		shouldFail: (RBPushDownVariableRefactoring 
				model: model
				classVariable: #Foo
				class: (model classNamed: #SomeClass));
		shouldFail: (RBPushDownVariableRefactoring 
				classVariable: #Foo
				class: #RBBasicLintRuleTest)