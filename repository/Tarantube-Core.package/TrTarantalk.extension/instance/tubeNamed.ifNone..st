*Tarantube-Core
tubeNamed: tubeName ifNone: aBlock
	| ret |
	ret :=  (self evalWithReturn: self queueModuleName , '.stats().' , tubeName) value first.
	^ret ifNil: [ aBlock value ] ifNotNil: [ self basicTubeNamed: tubeName  ]