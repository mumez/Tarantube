taking tasks
repeatTakeTaskIfAvailable: aTaskHandlerBlock
	^ self repeatTakeTaskFor: self defaultWaitTimeoutSeconds ifAvailable: aTaskHandlerBlock