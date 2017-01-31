*AtomicRefactors-Transformations
buildTransformations
	transformations := OrderedCollection new.

	self
		createNewClass;
		createReference;
		abstractVariableReferences.

	transformations
		add:
			(ARMigrateInstancesTransformation new
				targetClass: class;
				migrator:
					(ARSplitClassObjectMigrator
						variablesToExtract: instanceVariables
						newClassName: newClassName
						referenceVariableName: referenceVariableName);
				yourself).

	^ transformations