actions
prolong: seconds
	^self evalWithReturn: (self fullMethodName: 'touch(...)') arguments: {self id. seconds}