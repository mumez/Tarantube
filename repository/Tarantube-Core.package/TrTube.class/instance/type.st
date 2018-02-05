accessing
type
	^ type ifNil: [ type := self basicType ]