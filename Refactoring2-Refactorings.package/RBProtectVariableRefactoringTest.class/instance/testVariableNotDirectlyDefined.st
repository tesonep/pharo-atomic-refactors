testing
testVariableNotDirectlyDefined

	self 
		shouldFail: (RBProtectVariableRefactoring 
			instanceVariable: 'name'
			class: #RBBasicLintRuleTest);
		shouldFail: (RBProtectVariableRefactoring 
			classVariable: #DependentsFields
			class: #RBBasicLintRuleTest);
		shouldFail: (RBProtectVariableRefactoring 
			model: model
			classVariable: 'ClassVarName2'
			class: #Bar)