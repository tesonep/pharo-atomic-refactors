transforming
convertClasses: classSet select: aBlock using: searchReplacer
 
	classSet do: [ :aClass | 
		(aBlock value: aClass) do: [ :selector |
			aClass convertMethod: selector using: searchReplacer ]]