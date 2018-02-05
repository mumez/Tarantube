taking tasks
repeatTakeTaskFor: seconds ifAvailableDone: aTaskHandlerBlock
	self repeatTakeTaskFor: seconds ifAvailable: [:task |
		aTaskHandlerBlock cull: task.
		task isTaken ifTrue: [  "If just taken (not released), automatically done"
			task done	
		]
	]