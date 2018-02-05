putting tasks
putTaskWith: newTaskData setting: settingBlock
	| optionsBuilder |
	optionsBuilder := TrTubeOptionsBuilder new.
	settingBlock value: optionsBuilder.
	^ (self evalWithReturn: (self fullMethodName: 'put(...)') arguments: { newTaskData. optionsBuilder options })