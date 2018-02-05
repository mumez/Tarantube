actions
kick: numberOfTasks
	^(self evalWithReturn: (self fullMethodName: 'kick(...)') arguments: {numberOfTasks}) valueThen: [ :val | val first ]