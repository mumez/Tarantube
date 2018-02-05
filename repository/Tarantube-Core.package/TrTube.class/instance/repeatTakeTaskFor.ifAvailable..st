taking tasks
repeatTakeTaskFor: seconds ifAvailable: aTaskHandlerBlock
	| takeBlock |
	self stopTaking.
	takeBlock := [ [ self stick isReleased ]
		whileFalse: [ | task |
			task := self takeTaskFor: seconds.
			task ifNotNil: [ aTaskHandlerBlock cull: task ] ] ].
	poller := takeBlock fork