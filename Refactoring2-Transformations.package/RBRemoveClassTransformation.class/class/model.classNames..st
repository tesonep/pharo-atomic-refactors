api
model: aRBModel classNames: aCollection

	^ RBCompositeTransformation new
		transformations: (aCollection
			collect: [ :e | self model: aRBModel className: e ]);
		yourself