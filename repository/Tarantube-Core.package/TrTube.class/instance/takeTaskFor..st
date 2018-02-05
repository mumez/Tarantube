taking tasks
takeTaskFor: seconds
	^ [ (self evalWithReturn: (self fullMethodName: 'take(...)') arguments: {seconds})
		valueThen: [ :ret | 
			ret ifEmpty: [ ^nil ].
			(self taskClass on: self) fromArray: ret first ] ]
		on: Error
		do: [ :ex | 
			ex isTarantoolError ifTrue: [ ^ nil ].
			ex pass ]