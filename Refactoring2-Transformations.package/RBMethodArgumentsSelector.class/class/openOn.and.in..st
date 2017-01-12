instance creation
openOn: arguments and: values in: sourceCode

	^ UITheme builder
		openModal: (self 
						on: arguments
						and: values
						in: sourceCode)