executing
buildTransformations

	^ transformations ifNil: [ 
		transformations := OrderedCollection
			with: (RBAddClassTransformation
						addClass: self tmpName
						superclass: className asSymbol
						subclasses: #()
						category: (self model classNamed: className) category)
			with: (RBRenameClassTransformation new 
						className: className newClassName: newClassName)
			with: (RBRenameClassTransformation new
						className: self tmpName newClassName: className)
			with: (RBDeprecateClassTransformation
						class: className) ]