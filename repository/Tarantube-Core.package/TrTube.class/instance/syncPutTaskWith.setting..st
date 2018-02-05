putting tasks
syncPutTaskWith: newTaskData setting: settingBlock
	^ (self putTaskWith: newTaskData setting: settingBlock)
		valueThen: [ :ret | (self taskClass on: self) fromArray: ret first ]