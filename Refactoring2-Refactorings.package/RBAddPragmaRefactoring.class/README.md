I am responsible for adding a pragma inside a method. In this implementation, all pragma definition, e.g., '<selector: args>' must be described.

Usage:
refactoring := (RBAddPragmaRefactoring
			pragma: '<gtInspectorPresentationOrder: 213>'
			inMethod: #methodBefore
			inClass: #RBAddPragmaTransformationTest)
			transform.
(ChangesBrowser changes: refactoring model changes changes) open

Preconditions:
- the class exists,
- the method exists, and
- the method does not have a pragma with the same selector. 