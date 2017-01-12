accessing
values

	^ valuesList ifNil: [ valuesList := values asOrderedCollection ]