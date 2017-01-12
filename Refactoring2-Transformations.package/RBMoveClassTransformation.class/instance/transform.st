executing
transform

	oldCategory := self definingClass category.
	self definingClass category: category.
	self model category: category for: self definingClass