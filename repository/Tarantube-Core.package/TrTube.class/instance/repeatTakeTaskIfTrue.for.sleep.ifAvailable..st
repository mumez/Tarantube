taking tasks
repeatTakeTaskIfTrue: aBlock for: seconds sleep: sleepDuration ifAvailable: aTaskHandlerBlock
	| takeBlock |
	self stopTaking.
	takeBlock := [ [ self stick isReleased ]
		whileFalse: [ 
			sleepDuration wait.
			(aBlock cull: self)
				ifTrue: [ | task |
					task := self takeTaskFor: seconds.
					task ifNotNil: [ aTaskHandlerBlock cull: task ] ] ] ].
	poller := takeBlock fork