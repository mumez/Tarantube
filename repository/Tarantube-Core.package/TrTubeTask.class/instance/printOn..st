printing
printOn: aStream
	aStream nextPutAll: self class name.
	aStream nextPutAll: '('.
	aStream nextPutAll: ' id: ', self id asString.
	aStream nextPutAll: ' status: ', self status asString.
	aStream nextPutAll: ')'.
	