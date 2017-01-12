executing
transformation

	^ RBAddClassTransformation
		model: self model
		addClass: className
		superclass: superclass
		subclasses: subclasses
		category: category