accessing
change
	"an 'add method' change that create the missing method"
	
	^ RBRefactoryChangeManager changeFactory addMethodSource: (self methodHeader), String cr, String tab, source
		in: class