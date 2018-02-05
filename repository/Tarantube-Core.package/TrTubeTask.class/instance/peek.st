actions
peek
	^(self evalWithReturn: (self fullMethodName: 'peek(...)') arguments: {self id}) valueThen: [ :val | val first ]