executing
buildTransformations

	^ transformations ifNil: [ 
		transformations := OrderedCollection
			with: (RBCustomTransformation with: [ :aModel |
aModel compile: 'new
	self deprecated: ''Use superclass '' on: ''4 May 2016''  in: #Pharo60.
	^ super new' in: (aModel classNamed: className, ' class') classified: 'deprecation'.
	
aModel compile: 'deprecated
	^ true' in: (aModel classNamed: className, ' class') classified: 'deprecation'.
	
aModel compile:	
	'systemIcon

	^ Smalltalk ui icons iconNamed: #packageDelete'
	in: (aModel classNamed: className, ' class') classified: 'deprecation'.
	])
			with: (RBAddClassCommentTransformation
					 comment: 'Deprecated!!! Use superclass'
					 in: className) ]