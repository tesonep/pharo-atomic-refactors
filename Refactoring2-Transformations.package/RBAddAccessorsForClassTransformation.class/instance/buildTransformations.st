executing
buildTransformations

	| class |
	class := self model classObjectFor: className.
	^ (class instanceVariableNames collect: [ :variable |
			RBAddVariableAccessorTransformation
				model: self model
				instanceVariable: variable
				class: class ])