api
model: aRBModel with: aBlockWithOneArg

	^ (self new)
		model: aRBModel;
		transformationBlock: aBlockWithOneArg;
		yourself