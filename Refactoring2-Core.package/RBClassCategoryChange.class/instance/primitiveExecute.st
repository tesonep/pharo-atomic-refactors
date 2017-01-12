private
primitiveExecute
	
	self changeClass category: category.
	SystemAnnouncer uniqueInstance 
		classReorganized: self changeClass