testing
testVariableDoesNotExist

	"self
		shouldFail: (RBPullUpVariableRefactoring 
			instanceVariable: 'notDefinedVariable'
			class: #RBLintRuleTest);
		shouldFail: (RBPullUpVariableRefactoring 
			classVariable: #Foo
			class: #RBLintRuleTest)"