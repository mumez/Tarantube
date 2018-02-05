taking tasks
stopTaking
	poller
		ifNotNil: [ [ poller terminate ]
				on: ProcessAlreadyTerminating
				do: [ :ex |  ] ]