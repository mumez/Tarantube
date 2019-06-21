accessing tasks
tasksCountOf: statusString
	^self stateIndex asyncCountHaving: (Array with: statusString).