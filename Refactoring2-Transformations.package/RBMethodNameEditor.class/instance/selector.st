accessing
selector

	^ self methodName ifNotNil: [ :method | method selector ]