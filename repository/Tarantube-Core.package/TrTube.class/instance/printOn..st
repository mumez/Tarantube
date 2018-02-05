printing
printOn: aStream
	aStream nextPutAll: self class name.
	aStream nextPutAll: '('.
	self isTemporary ifTrue: [ aStream nextPutAll: 'TEMP' ].
	aStream nextPutAll: ' id: ', self id asString.
	aStream nextPutAll: ' name: ', self name asString.
	aStream nextPutAll: ' type: ', self type asString.
	aStream nextPutAll: ')'.
	