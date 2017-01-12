accessing
definingClass

	^ class ifNil: [ class := self model classObjectFor: className ]