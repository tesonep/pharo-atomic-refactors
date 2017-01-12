executing
transform

	self transformations do: [ :transformation |
		transformation
			copyOptionsFrom: self options;
			model: self model;
			transform ]