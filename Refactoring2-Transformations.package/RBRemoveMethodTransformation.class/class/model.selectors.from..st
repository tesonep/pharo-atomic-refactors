api
model: aRBModel selectors: aCollection from: aClassName

	^ RBCompositeTransformation new
		transformations: (aCollection collect: [:e |
			self model: aRBModel
				  selector: e
				  from: aClassName] )