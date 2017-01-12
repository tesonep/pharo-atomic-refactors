executing
reparentSubclasses

	self model 
		reparentClasses: self definingClass subclasses copy 
		to: self definingClass superclass