executing
transform

	self model
		compile: self definingMethod source
		in: self definingClass
		classified: protocol.