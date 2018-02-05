actions
giveupSetting: settingBlock
	| optionsBuilder |
	optionsBuilder := TrTubeOptionsBuilder new.
	settingBlock value: optionsBuilder.
	^ (self evalWithReturn: (self fullMethodName: 'release(...)') arguments: { self id. optionsBuilder options })