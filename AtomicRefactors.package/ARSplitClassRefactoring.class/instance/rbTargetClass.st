accessing
rbTargetClass
	^ rbTargetClass ifNil: [ rbTargetClass := RBClassModelFactory rbNamespace new classNamed: targetClass name ]